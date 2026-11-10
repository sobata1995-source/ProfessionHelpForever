local addon = ...
ProfessionHelpForever = {version="0.3.8-alpha", recipes={}, batch=1, page=1, mode="Leveling"}
local P=ProfessionHelpForever
local API=C_TradeSkillUI
function P.Read(fn,...)
 if type(fn)~="function" then return nil end
 local previous=P.reading;P.reading=true
 local ok,value=pcall(fn,...)
 P.reading=previous
 if ok then return value end
 P.lastError=tostring(value)
end
function P.Context()
 if not API then return end
 if P.Read(API.IsTradeSkillLinked) or P.Read(API.IsTradeSkillGuild) or P.Read(API.IsTradeSkillGuildMember) then return end
 if API.IsTradeSkillReady and not P.Read(API.IsTradeSkillReady) then return end
 local info=P.Read(API.GetChildProfessionInfo)
 if not info or not info.professionID or info.professionID==0 then info=P.Read(API.GetBaseProfessionInfo) end
 if info and info.professionID and info.professionID>0 then return info end
end
function P.Cancel()
 P.pending=false;P.job=nil;P.autoShow=false;P.delay=0
end
function P.Queue(show)
 if P.reading or not P.open then return end
 P.pending=true
 if show then P.autoShow=true end
 -- Do not postpone forever when another addon emits an event stream.
end
function P.StartScan()
 local info=P.Context()
 if not info then P.message="Open your own profession and wait for its recipes to load.";return end
 local ids=P.Read(API.GetFilteredRecipeIDs)
 if type(ids)~="table" then P.message="Recipe list is not ready. Open the profession, then Refresh.";return end
 P.job={info=info,ids=ids,index=1,recipes={}}
 P.message="Reading profession recipes..."
end
function P.StepScan()
 local job=P.job
 if not job then return end
 local context=P.Context()
 if not context or context.professionID~=job.info.professionID or context.sourceCounter~=job.info.sourceCounter then
  P.job=nil;P.Queue();return
 end
 -- Bound native calls per frame; never scan a whole profession in an event handler.
 for n=1,12 do
  local id=job.ids[job.index]
  if not id then
   local previous=P.info
   P.info=context;P.recipes=job.recipes;P.job=nil
   local name=P.info.parentProfessionName or P.info.professionName
   if P.autoShow and P.catalog and P.catalog[name] and P.browse~=name then P.browse=name;P.selected=nil;P.page=1;P.batch=1 end
   P.message="Live list follows the game's profession filters. Clear them to see more recipes."
   if P.mode=="Recipes" then P.selected=P.recipes[P.selected] and P.selected or nil end
   if P.AdvanceStep then P.AdvanceStep(previous) end
   if P.SyncBatch then P.SyncBatch() end
   P.dirty=true
   if P.autoShow and ProfessionHelpForeverDB.auto and (P.info.skillLevel or 0)<(P.info.maxSkillLevel or 0) then P.frame:Show() end
   P.autoShow=false
   return
  end
  local recipe=P.Read(API.GetRecipeInfo,id)
  if recipe then job.recipes[id]=recipe end
  job.index=job.index+1
 end
end
function P.Rows()
 local result={}
 for id,r in pairs(P.recipes) do
  if P.mode=="Recipes" or (r.learned and r.canSkillUp and not r.disabled) then result[#result+1]={id=id,info=r} end
 end
 table.sort(result,function(a,b)
  if a.info.learned~=b.info.learned then return a.info.learned end
  local da,db=a.info.relativeDifficulty or 99,b.info.relativeDifficulty or 99
  if da~=db then return da<db end
  if a.info.name~=b.info.name then return a.info.name<b.info.name end
  return a.id<b.id
 end)
 return result
end
function P.Materials(schematic,batch)
 local rows={}
 for _,slot in ipairs(schematic.reagentSlotSchematics or {}) do
  if slot.required then
   local quantity=(slot.quantityRequired or 0)*batch
   local options={}
   for _,reagent in ipairs(slot.reagents or {}) do
    if reagent.itemID then
     local name=P.Read(C_Item.GetItemNameByID,reagent.itemID) or ("Item #"..reagent.itemID)
     local owned=P.Read(C_Item.GetItemCount,reagent.itemID,false,false,false) or 0
     options[#options+1]=name.."  (bags "..owned..", missing "..math.max(0,quantity-owned)..")"..(P.MaterialSource and ("\n"..P.MaterialSource(name,quantity,reagent.itemID)) or "")
    elseif reagent.currencyID then
     local currency=C_CurrencyInfo and P.Read(C_CurrencyInfo.GetCurrencyInfo,reagent.currencyID)
     options[#options+1]=(currency and currency.name or ("Currency #"..reagent.currencyID)).." (have "..(currency and currency.quantity or 0)..")"
    end
   end
   rows[#rows+1]=quantity.." x "..(#options>1 and "ONE OF:\n" or "")..(#options>0 and table.concat(options,"\nOR ") or "Material not available yet")
  end
 end
 return rows
end
function P.Details(id)
 local r=P.recipes[id]
 if not r then return "Open a profession and select a recipe.\n\nThis Forever alpha reads recipe data from the client. WotLK leveling routes and trainer coordinates are not used." end
 local lines={"|cffffd36b"..r.name.."|r",r.learned and "Learned" or "Not learned",""}
 if not P.open then
  lines[#lines+1]="Profession closed. Reopen it to refresh materials and skill-up information."
  return table.concat(lines,"\n")
 end
 local info=P.Context()
 if not info or not P.info or info.professionID~=P.info.professionID then return "Profession changed. Refresh the list before choosing a recipe." end
 if not r.learned then
  lines[#lines+1]="|cffffd36bTRAINING / SOURCE|r"
  lines[#lines+1]=P.Read(API.GetRecipeSourceText,id) or "Source unavailable. Check the game's profession window."
 end
 if r.disabledReason then lines[#lines+1]=r.disabledReason end
 lines[#lines+1]=r.canSkillUp and "Can grant skill-ups; chance depends on recipe difficulty." or "No skill-up indicated by the client."
 lines[#lines+1]="\n|cffffd36bMATERIALS FOR "..P.batch.." CRAFT(S)|r"
 local schematic=P.Read(API.GetRecipeSchematic,id,false)
 if schematic then
  local materials=P.Materials(schematic,P.batch)
  lines[#lines+1]=#materials>0 and table.concat(materials,"\n\n") or "No fixed required materials reported. Check the profession window."
  if schematic.quantityMin and schematic.quantityMax then
   lines[#lines+1]="\nOutput: "..(schematic.quantityMin*P.batch).." - "..(schematic.quantityMax*P.batch).." (where applicable)."
  end
  lines[#lines+1]="Optional/finishing reagents are not included."
 else lines[#lines+1]="Materials are still loading. Press Refresh." end
 local requirements=P.Read(API.GetRecipeRequirements,id)
 for _,req in ipairs(requirements or {}) do lines[#lines+1]=(req.met and "|cff66dd88" or "|cffff7777")..req.name.."|r" end
 if P.mode=="Recipes" and P.KeepSection then
  local output=schematic and schematic.outputItemID and P.Read(C_Item.GetItemNameByID,schematic.outputItemID)
  local materials={}
  for _,slot in ipairs(schematic and schematic.reagentSlotSchematics or {}) do
   if slot.required then for _,reagent in ipairs(slot.reagents or {}) do
    if reagent.itemID then materials[#materials+1]={name=P.Read(C_Item.GetItemNameByID,reagent.itemID)} end
   end end
  end
  lines[#lines+1]=P.KeepSection(output,materials)
 end
 return table.concat(lines,"\n")
end
local events=CreateFrame("Frame")
P.events=events
for _,event in ipairs({"ADDON_LOADED","TRADE_SKILL_SHOW","TRADE_SKILL_CLOSE","TRADE_SKILL_LIST_UPDATE","TRADE_SKILL_DETAILS_UPDATE","TRADE_SKILL_DATA_SOURCE_CHANGING","TRADE_SKILL_DATA_SOURCE_CHANGED","BAG_UPDATE_DELAYED","GET_ITEM_INFO_RECEIVED","SKILL_LINES_CHANGED","TRADE_SKILL_ITEM_CRAFTED_RESULT"}) do events:RegisterEvent(event) end
events:SetScript("OnEvent",function(_,event,name)
 if event=="ADDON_LOADED" and name==addon then
  ProfessionHelpForeverDB=ProfessionHelpForeverDB or {}
  if ProfessionHelpForeverDB.auto==nil then ProfessionHelpForeverDB.auto=true end
  P.browse=(P.catalog and P.catalog[ProfessionHelpForeverDB.profession]) and ProfessionHelpForeverDB.profession or "Engineering"
  P.ready=true;P.gatherPending=true;return
 end
 if not P.ready then return end
 if event=="SKILL_LINES_CHANGED" then P.gatherPending=true end
 if event=="TRADE_SKILL_CLOSE" then P.open=false;P.Cancel();P.dirty=true
 elseif event=="TRADE_SKILL_DATA_SOURCE_CHANGING" then P.Cancel();P.recipes={};P.selected=nil;P.info=nil;P.dirty=true
 elseif event=="TRADE_SKILL_SHOW" then P.open=true;P.Queue(true)
 elseif event=="TRADE_SKILL_DATA_SOURCE_CHANGED" or event=="TRADE_SKILL_LIST_UPDATE" then P.Queue()
 elseif event=="TRADE_SKILL_DETAILS_UPDATE" then if not P.reading then P.Queue() end
 elseif event=="BAG_UPDATE_DELAYED" or event=="SKILL_LINES_CHANGED" or event=="TRADE_SKILL_ITEM_CRAFTED_RESULT" then P.Queue();P.dirty=true
 elseif event=="GET_ITEM_INFO_RECEIVED" then P.dirty=true end
end)
events:SetScript("OnUpdate",function(_,elapsed)
 if not P.ready then return end
 if P.gatherPending and not P.reading then P.gatherPending=false;P.RefreshGathering() end
 P.delay=(P.delay or 0)+elapsed
 if P.pending and not P.job and P.delay>=0.4 then
  P.pending=false;P.delay=0;P.StartScan();P.dirty=true
 end
 if P.job then P.StepScan() end
 P.paint=(P.paint or 0)+elapsed
 if P.dirty and P.paint>=0.25 and P.frame:IsShown() then P.dirty=false;P.paint=0;P.Render() end
end)
