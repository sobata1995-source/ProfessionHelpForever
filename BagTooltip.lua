local P=ProfessionHelpForever
local itemUses
local skillNames={[171]='Alchemy',[164]='Blacksmithing',[333]='Enchanting',[202]='Engineering',[165]='Leatherworking',[197]='Tailoring',[185]='Cooking',[129]='First Aid'}
local function buildIndex()
 itemUses={}
 for _,profession in ipairs(P.professionOrder) do
  for _,step in ipairs(P.catalog[profession].routes) do
   for _,material in ipairs(step.materials or {}) do
    local uses=itemUses[material.name] or {};itemUses[material.name]=uses
    uses[#uses+1]={profession=profession,step=step,quantity=material.quantity}
   end
  end
 end
end
local function ownedSkills()
 if not GetProfessions or not GetProfessionInfo then return {} end
 local indices=P.Read(function() return {GetProfessions()} end)
 local skills={}
 for _,index in pairs(indices or {}) do
  local info=P.Read(function()
   local name,_,rank,_,_,_,id=GetProfessionInfo(index)
   return {name=skillNames[id] or name,rank=rank}
  end)
  if info and info.name and type(info.rank)=='number' then skills[info.name]=info.rank end
 end
 return skills
end
function P.BagAdvice(itemID)
 if not itemUses then buildIndex() end
 local name=P.Read(C_Item.GetItemNameByID,itemID)
 if not name then return {'Item data is loading.'} end
 if P.toolUses[name] then return {P.KeepMessage(P.toolUses[name])},{missing=0} end
 local uses=itemUses[name] or {}
 local skills=ownedSkills()
 local needed=0
 local recipeNames,seenRecipes={},{}
 local tracked=false
 for _,use in ipairs(uses) do
  local rank=skills[use.profession]
  local step=use.step
  if rank then
   tracked=true
   if rank<step.high then
    local crafts=math.ceil(step.crafts*math.max(0,step.high-math.max(step.low,rank))/math.max(1,step.high-step.low))
    local quantity=math.ceil(crafts*use.quantity)
    needed=needed+quantity
    local recipe=step.name.." ("..use.profession..")"
    if not seenRecipes[recipe] then seenRecipes[recipe]=true;recipeNames[#recipeNames+1]=recipe end
   end
  end
 end
 local owned=P.Read(C_Item.GetItemCount,itemID,false,false,false) or 0
 local lines={}
 if needed>0 then
  lines[#lines+1]=P.KeepMessage(table.concat(recipeNames,', '))
  lines[#lines+1]='~'..needed..' needed'
  lines[#lines+1]='Bags: '..owned..' | Missing: '..math.max(0,needed-owned)
 else
  lines[#lines+1]=P.SellMessage()
 end
 return lines,{missing=tracked and math.max(0,needed-owned) or nil}
end
function P.AppendBagTooltip(tooltip,data)
 if not P.ready or tooltip~=GameTooltip or P.tooltipReading then return end
 local info=tooltip.GetPrimaryTooltipInfo and tooltip:GetPrimaryTooltipInfo()
 if not info or (info.getterName~='GetBagItem' and info.getterName~='GetBagItemChild') then return end
 if not data or type(data.id)~='number' or tooltip.phfKeepAdded then return end
 P.tooltipReading=true
 local ok,err=pcall(function()
  local lines,plan=P.BagAdvice(data.id)
  local args=info.getterArgs
  local bagItem=C_Container and args and P.Read(C_Container.GetContainerItemInfo,args[1],args[2])
  for _,line in ipairs(P.ItemSources(data.id,bagItem and bagItem.isBound,plan and plan.missing)) do lines[#lines+1]=line end
  P.ShowVendorCard(data.id,true)
  tooltip.phfKeepAdded=true
  tooltip:AddLine(' ')
  tooltip:AddLine('Profession Help',1,.82,.25)
  for _,line in ipairs(lines) do tooltip:AddLine(line,1,1,1,true) end
 end)
 P.tooltipReading=false
 if not ok then P.tooltipError=tostring(err) end
end
if TooltipDataProcessor and Enum and Enum.TooltipDataType then
 TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item,P.AppendBagTooltip)
 GameTooltip:HookScript('OnTooltipCleared',function(self) self.phfKeepAdded=nil end)
end
