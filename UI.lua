local P=ProfessionHelpForever
local backdrop={bgFile="Interface\\ChatFrame\\ChatFrameBackground",edgeFile="Interface\\Tooltips\\UI-Tooltip-Border",tile=true,tileSize=16,edgeSize=12,insets={left=3,right=3,top=3,bottom=3}}
local function box(parent,w,h)
 local f=CreateFrame("Frame",nil,parent,"BackdropTemplate")
 f:SetSize(w,h);f:SetBackdrop(backdrop);f:SetBackdropColor(.035,.05,.085,.98);f:SetBackdropBorderColor(.35,.43,.55)
 return f
end
local function label(parent,size)
 local t=parent:CreateFontString(nil,"OVERLAY","GameFontNormal")
 t:SetFont(STANDARD_TEXT_FONT,size);t:SetJustifyH("LEFT");t:SetJustifyV("TOP")
 return t
end
local function button(parent,name,w,fn)
 local b=CreateFrame("Button",nil,parent,"UIPanelButtonTemplate")
 b:SetSize(w,26);b:SetText(name);b:SetScript("OnClick",fn);return b
end
local f=box(UIParent,790,590);P.frame=f
f:SetPoint("CENTER");f:SetMovable(true);f:SetClampedToScreen(true);f:EnableMouse(true);f:RegisterForDrag("LeftButton")
f:SetScript("OnDragStart",function(self) self:StartMoving() end)
f:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
f:Hide()
_G.ProfessionHelpForeverFrame=f;table.insert(UISpecialFrames,"ProfessionHelpForeverFrame")
local title=label(f,20);title:SetPoint("TOPLEFT",20,-20);title:SetText("PROFESSION HELP |cff68cfffForever|r")
local close=CreateFrame("Button",nil,f,"UIPanelCloseButton");close:SetPoint("TOPRIGHT",-4,-4)
local status=label(f,12);status:SetPoint("TOPLEFT",20,-52);status:SetSize(735,36)
local footer=label(f,11);footer:SetPoint("BOTTOMLEFT",20,15);footer:SetSize(750,32)
local modes={}
for i,name in ipairs({"Leveling","Recipes","Trainers"}) do
 local mode=name
 modes[i]=button(f,mode,120,function() P.mode=mode;P.page=1;P.selected=nil;P.Render() end)
 modes[i]:SetPoint("TOPLEFT",20+(i-1)*130,-94)
end
local refresh=button(f,"Refresh",100,function() P.lastError=nil;P.RefreshGathering();P.Queue();P.dirty=true;P.Render() end)
refresh:SetPoint("TOPRIGHT",-22,-94)
local auto=button(f,"Auto-open",140,function()
 if not P.ready then return end
 ProfessionHelpForeverDB.auto=not ProfessionHelpForeverDB.auto;P.Render()
end);auto:SetPoint("TOPRIGHT",-135,-94)
local list=box(f,290,375);list:SetPoint("TOPLEFT",20,-135)
local detailBox=box(f,435,375);detailBox:SetPoint("TOPLEFT",325,-135)
local scroll=CreateFrame("ScrollFrame",nil,detailBox,"UIPanelScrollFrameTemplate")
scroll:SetPoint("TOPLEFT",12,-12);scroll:SetPoint("BOTTOMRIGHT",-30,45)
scroll:EnableMouse(true);scroll:EnableMouseWheel(true)
scroll:SetScript("OnMouseWheel",function(self,delta)
 local value=math.max(0,math.min(self:GetVerticalScrollRange(),self:GetVerticalScroll()-delta*60))
 self:SetVerticalScroll(value)
end)
if scroll.ScrollBar then
 scroll.ScrollBar:EnableMouse(true)
 if scroll.ScrollBar.ScrollUpButton then scroll.ScrollBar.ScrollUpButton:EnableMouse(true) end
 if scroll.ScrollBar.ScrollDownButton then scroll.ScrollBar.ScrollDownButton:EnableMouse(true) end
end
local child=CreateFrame("Frame",nil,scroll);child:SetSize(385,350);scroll:SetScrollChild(child)
local body=label(child,13);body:SetPoint("TOPLEFT");body:SetWidth(385)
local rows={}
for i=1,7 do
 local b=CreateFrame("Button",nil,list,"BackdropTemplate");b:SetBackdrop(backdrop);b:SetSize(274,49);b:SetPoint("TOPLEFT",8,-8-(i-1)*51)
 b:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
 b.label=label(b,12);b.label:SetPoint("TOPLEFT",8,-7);b.label:SetSize(255,37)
 b:SetScript("OnClick",function(self) P.selected=self.recipeID;P.autoBatch=true;P.batch=1;P.SyncBatch();scroll:SetVerticalScroll(0);P.Render() end)
 rows[i]=b
end
local prev=button(f,"<",38,function() P.page=math.max(1,P.page-1);P.Render() end);prev:SetPoint("TOPLEFT",20,-520)
local next=button(f,">",38,function() P.page=P.page+1;P.Render() end);next:SetPoint("TOPLEFT",260,-520)
local pages=label(f,12);pages:SetPoint("TOPLEFT",75,-527)
local batchLabel=label(f,12);batchLabel:SetPoint("TOPLEFT",330,-527);batchLabel:SetText("Crafts:")
local batch=CreateFrame("EditBox",nil,f,"InputBoxTemplate");batch:SetSize(60,24);batch:SetPoint("TOPLEFT",390,-520)
batch:SetAutoFocus(false);batch:SetNumeric(true);batch:SetMaxLetters(3);batch:SetText("1")
batch:SetScript("OnEnterPressed",function(self)
 P.autoBatch=false;P.batch=math.max(1,math.min(999,math.floor(tonumber(self:GetText()) or 1)));self:SetText(tostring(P.batch));self:ClearFocus();P.Render()
end)
batch:SetScript("OnEscapePressed",function(self) self:SetText(tostring(P.batch));self:ClearFocus() end)
local chooser=box(f,340,220);chooser:SetPoint("TOPRIGHT",-20,-50);chooser:SetFrameLevel(f:GetFrameLevel()+20);chooser:Hide()
local choose=button(f,"Profession",150,function() if chooser:IsShown() then chooser:Hide() else chooser:Show() end end)
choose:SetPoint("TOPRIGHT",-42,-20)
for i,name in ipairs(P.professionOrder) do
 local profession=name
 local b=button(chooser,profession,155,function() chooser:Hide();P.SelectProfession(profession) end)
 b:SetPoint("TOPLEFT",10+((i-1)%2)*165,-10-math.floor((i-1)/2)*34)
end
local map=button(child,"Show on map",145,P.ShowTrainerMap);map:SetPoint("TOPLEFT",0,0);map:Hide()
local areaMap=button(child,"Show on map",145,function() P.ShowTrainerMap(P.areaTarget) end);areaMap:Hide()
local afterTraining=label(child,13);afterTraining:SetWidth(385);afterTraining:Hide()
local recipeMap=button(f,"Recipe vendor map",160,function() P.VendorWaypoint(P.recipeVendorTarget) end)
recipeMap:SetPoint("TOPLEFT",590,-520);recipeMap:Hide()
local remainingButton=button(f,"Auto count",110,function() P.autoBatch=true;P.SyncBatch();P.Render() end)
remainingButton:SetPoint("TOPLEFT",470,-520)
local materialTexts,materialButtons={},{}
local function renderMaterialBlocks(details)
 for _,t in ipairs(materialTexts) do t:Hide() end
 for _,b in ipairs(materialButtons) do b:Hide() end
 if not details:find("[[PHMAP:",1,true) then return end
 if P.mapTarget and P.trainingPrefix then
  local prefix=P.trainingPrefix
  details=prefix..P.MaterialMapToken({training=P.mapTarget})..details:sub(#prefix+1)
 end
 body:Hide();afterTraining:Hide();map:Hide()
 local offset,index,start=0,0,1
 while start<=#details do
  local a,b,key=details:find("%[%[PHMAP:(%d+)%]%]",start)
  local text=details:sub(start,a and a-1 or #details)
  index=index+1
  local t=materialTexts[index]
  if not t then t=label(child,13);t:SetWidth(385);materialTexts[index]=t end
  t:SetPoint("TOPLEFT",0,-offset);t:SetText(text);t:Show()
  offset=offset+t:GetStringHeight()+6
  if not a then break end
  local target=P.materialMaps[tonumber(key)]
  if target then
   local btn=materialButtons[index]
   if not btn then
    btn=button(child,"Show on map",145,function(self)
     if self.vendor.training then P.ShowTrainerMap(self.vendor.training) else P.VendorWaypoint(self.vendor) end
    end);materialButtons[index]=btn
   end
   btn.vendor=target;btn:SetPoint("TOPLEFT",0,-offset);btn:Show();offset=offset+34
  end
  start=b+1
 end
 child:SetHeight(math.max(350,offset+20))
end
local difficulty={[0]="Orange",[1]="Yellow",[2]="Green",[3]="Gray"}
function P.Render()
 if not P.ready then return end
 auto:SetText("Auto-open: "..(ProfessionHelpForeverDB.auto and "ON" or "OFF"))
 local gathering=P.catalog[P.browse].gather
 if gathering then batch:Hide();batchLabel:Hide();remainingButton:Hide() else batch:Show();batchLabel:Show();remainingButton:Show() end
 P.SyncBatch();remainingButton:SetText(P.autoBatch and "Count: Auto" or "Count: Manual")
 choose:SetText(P.browse.." v");batch:SetText(tostring(P.batch))
 status:SetText(P.Matching() and ((P.DisplayInfo().parentProfessionName or P.DisplayInfo().professionName).."  "..P.DisplayInfo().skillLevel.." / "..P.DisplayInfo().maxSkillLevel..(P.open and "" or "  (last read)")) or (P.browse.." | Browse guides now; open the profession for live materials."))
 local entries=P.Rows();local count=math.max(1,math.ceil(#entries/7));P.page=math.min(count,math.max(1,P.page))
 pages:SetText(P.mode.."  "..P.page.." / "..count)
 for i,b in ipairs(rows) do
  local entry=entries[(P.page-1)*7+i]
  if entry then
   b.recipeID=entry.id
   local r=entry.info
   b.label:SetText((P.selected==entry.id and "|cffffd36b" or "|cffffffff")..r.name.."|r\n|cff9eb0c7"..(entry.subtitle or (r.learned and (difficulty[r.relativeDifficulty] or "Learned") or "Not learned")).."|r")
   b:SetBackdropColor(P.selected==entry.id and .16 or .055,.075,.105,1);b:Show()
  else b:Hide() end
 end
 P.materialMaps={};body:Show();P.mapTarget=nil;P.trainingPrefix=nil;P.areaTarget=nil;P.areaPrefix=nil;areaMap:Hide()
 local details=P.Details(P.selected)
 P.recipeVendorTarget=nil
 local entry=P.mode=="Leveling" and P.Entry(P.selected)
 local recipe=P.mode=="Recipes" and P.Matching() and P.recipes[P.selected]
 local name=entry and not entry.gather and entry.name or recipe and recipe.name
 local itemID=name and P.recipeVendorItems and P.recipeVendorItems[name]
 if itemID then P.recipeVendorTarget=P.FindItemVendor(itemID) end
 if P.recipeVendorTarget then
  local v=P.recipeVendorTarget
  details=details..string.format("\n\nRECIPE VENDOR: %s - %s (%.1f, %.1f)\nUse Recipe vendor map below.",v.name,v.zone,v.x,v.y)
  recipeMap:Show()
 else recipeMap:Hide() end
 if P.areaTarget then
  body:SetText(P.areaPrefix)
  local height=body:GetStringHeight()
  areaMap:SetPoint("TOPLEFT",0,-height-8);areaMap:Show()
  afterTraining:SetPoint("TOPLEFT",0,-height-42);afterTraining:SetText(details:sub(#P.areaPrefix+1));afterTraining:Show()
  local total=height+42+afterTraining:GetStringHeight()
  if P.mapTarget then map:SetPoint("TOPLEFT",0,-total-8);map:Show();total=total+42 else map:Hide() end
  child:SetHeight(math.max(350,total+20))
 elseif P.mapTarget then
  local prefix=P.trainingPrefix or details
  body:SetText(prefix)
  local height=body:GetStringHeight()
  map:SetPoint("TOPLEFT",0,-height-8);map:Show()
  afterTraining:SetPoint("TOPLEFT",0,-height-42)
  afterTraining:SetText(P.trainingPrefix and details:sub(#prefix+1) or "");afterTraining:Show()
  child:SetHeight(math.max(350,height+42+afterTraining:GetStringHeight()+20))
 else
  map:Hide();afterTraining:Hide();body:SetText(details)
  child:SetHeight(math.max(350,body:GetStringHeight()+20))
 end
 renderMaterialBlocks(details)
 footer:SetText("ALPHA "..P.version.." | /phf | "..(P.lastError and "API error: use /phf debug and report the output." or P.message or "Choose a recipe; enter a craft count and press Enter."))
end
function P.Toggle()
 if not P.ready then return end
 if f:IsShown() then f:Hide() else f:Show();P.RefreshGathering();P.Queue();P.Render() end
end
local mini=CreateFrame("Button","ProfessionHelpForeverMinimapButton",Minimap);P.minimapButton=mini
mini:SetSize(32,32);mini:RegisterForClicks("LeftButtonUp");mini:SetFrameLevel(Minimap:GetFrameLevel()+8)
local function positionMinimapButton()
 -- Lower-left point on the circular rim, including when the minimap is resized.
 mini:ClearAllPoints()
 mini:SetPoint("CENTER",Minimap,"CENTER",-Minimap:GetWidth()*.353553,-Minimap:GetHeight()*.353553)
end
positionMinimapButton();Minimap:HookScript("OnSizeChanged",positionMinimapButton)
local icon=mini:CreateTexture(nil,"ARTWORK");icon:SetTexture("Interface\\Icons\\Trade_Engineering");icon:SetSize(28,28);icon:SetPoint("CENTER")
local mask=mini:CreateMaskTexture();mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask","CLAMPTOBLACKADDITIVE","CLAMPTOBLACKADDITIVE");mask:SetSize(26,26);mask:SetPoint("CENTER");icon:AddMaskTexture(mask)
local border=mini:CreateTexture(nil,"OVERLAY");border:SetTexture("Interface\\Common\\RingBorder");border:SetSize(34,34);border:SetPoint("CENTER")
mini:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight");mini:SetScript("OnClick",P.Toggle)
mini:SetScript("OnEnter",function(self) GameTooltip:SetOwner(self,"ANCHOR_LEFT");GameTooltip:SetText("Profession Help: Forever");GameTooltip:AddLine("Click to open / close. Manual command: /phf",1,1,1);GameTooltip:Show() end)
mini:SetScript("OnLeave",function() GameTooltip:Hide() end)
SLASH_PROFESSIONHELPFOREVER1="/phf"
SLASH_PROFESSIONHELPFOREVER2="/professionhelpforever"
SlashCmdList.PROFESSIONHELPFOREVER=function(msg)
 if msg=="debug" then
  local version,build,_,interface=GetBuildInfo()
  print("Profession Help Forever "..P.version.." | client "..tostring(version).." build "..tostring(build).." interface "..tostring(interface))
  print("Last API error: "..tostring(P.lastError or "none"));return
 end
 P.Toggle()
end
