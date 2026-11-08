from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'.test-deps'))
from lupa.lua51 import LuaRuntime
lua=LuaRuntime(unpack_returned_tuples=True)
lua.execute(r'''
UIParent={};UISpecialFrames={};SlashCmdList={};STANDARD_TEXT_FONT='font';frames={}
local methods={}
for _,m in ipairs({'SetSize','SetFrameStrata','ClearAllPoints','SetPoint','SetMovable','SetClampedToScreen','EnableMouse','EnableMouseWheel','RegisterForDrag','SetBackdropColor','SetBackdropBorderColor','SetHighlightTexture','SetWidth','SetHeight','SetFont','SetJustifyH','SetJustifyV','SetAutoFocus','SetNumeric','SetMaxLetters','ClearFocus','SetTexture','RegisterForClicks','StartMoving','StopMovingOrSizing','SetOwner','AddLine'}) do methods[m]=function() end end
function methods:SetBackdrop() assert(self.template=='BackdropTemplate','missing modern backdrop template') end
function methods:SetScript(k,v) self.scripts[k]=v end
function methods:HookScript(k,v) self.scripts[k]=v end
Enum={TooltipDataType={Item=0}}
TooltipDataProcessor={AddTooltipPostCall=function(_,fn) bagTooltipCallback=fn end}
function methods:RegisterEvent(e) self.events[e]=true end
function methods:SetText(s) self.text=s end
function methods:GetText() return self.text end
function methods:GetStringHeight() return #(self.text or '') end
function methods:Show() self.shown=true end
function methods:Hide() self.shown=false end
function methods:IsShown() return self.shown~=false end
function methods:SetFrameLevel(n) self.level=n end
function methods:GetFrameLevel() return self.level or 1 end
function methods:SetScrollChild(c) self.child=c end
function methods:SetVerticalScroll(n) self.scroll=n end
function CreateFrame(kind,name,parent,template)
 local f=setmetatable({scripts={},events={},template=template},{__index=methods});frames[#frames+1]=f;return f
end
function methods:CreateFontString() return CreateFrame('FontString') end
function methods:CreateTexture() return CreateFrame('Texture') end
Minimap=CreateFrame('Frame');GameTooltip=CreateFrame('Frame')
function GetBuildInfo() return '1.60.1','70862','',16001 end
current=202;counter=1;linked=false;readCount=0;ids={1,2,3};emit=false
C_TradeSkillUI={
 IsTradeSkillReady=function() return true end,
 IsTradeSkillLinked=function() return linked end,
 GetChildProfessionInfo=function() return {professionID=current,sourceCounter=counter,professionName='Engineering',skillLevel=40,maxSkillLevel=75} end,
 GetFilteredRecipeIDs=function() return ids end,
 GetRecipeInfo=function(id)
  readCount=readCount+1
  if emit then ProfessionHelpForever.events.scripts.OnEvent(nil,'TRADE_SKILL_LIST_UPDATE') end
  return {name='Recipe '..id,recipeID=id,learned=id~=3,canSkillUp=id==1,relativeDifficulty=id==1 and 0 or 3}
 end,
 GetRecipeSchematic=function() return {quantityMin=1,quantityMax=2,reagentSlotSchematics={
  {required=true,quantityRequired=2,reagents={{itemID=2835}}},
  {required=false,quantityRequired=10,reagents={{itemID=999}}},
  {required=true,quantityRequired=1,reagents={{itemID=10},{itemID=11}}}
 }} end,
 GetRecipeSourceText=function() return 'Learn from a trainer' end,
 GetRecipeRequirements=function() return {{met=false,name='Requires an anvil'}} end
}
C_Item={GetItemNameByID=function(id) return 'Material '..id end,GetItemCount=function() return 3 end}
''')
root=Path(__file__).resolve().parents[1]/'ProfessionHelpForever'
for name in ['Engine.lua','Data.lua','Gathering.lua','Guide.lua','Keep.lua','UI.lua','VendorData.lua','ItemSources.lua','MaterialSources.lua','VendorCard.lua','BagTooltip.lua']:
 lua.execute((root/name).read_text(encoding='utf-8-sig'),'ProfessionHelpForever')
lua.execute(r'''
local P=ProfessionHelpForever
local function event(e,a) P.events.scripts.OnEvent(nil,e,a) end
local function tick(n) for i=1,n or 1 do P.events.scripts.OnUpdate(nil,.4) end end
event('ADDON_LOADED','ProfessionHelpForever');assert(P.ready and not P.frame:IsShown())
emit=true
event('TRADE_SKILL_SHOW')
for i=1,1000 do event('TRADE_SKILL_LIST_UPDATE') end
assert(readCount==0);tick();assert(readCount==3 and P.frame:IsShown())
tick(10);assert(readCount==3,'API hooks caused rescan loop')
assert(#P.Rows()>10);P.mode="Recipes";assert(#P.Rows()==3)
P.selected=1;P.batch=5
local d=P.Details(1);assert(d:find('10 x Material 2835',1,true) and d:find('missing 7',1,true))
assert(not d:find('999',1,true));assert(d:find('ONE OF',1,true));assert(d:find('Requires an anvil',1,true))
P.mode='Recipes';assert(#P.Rows()==3);assert(P.Details(3):find('Learn from a trainer',1,true))
P.Render()
-- Multi-frame budget, source switch and close cancellation.
ids={};for i=1,50 do ids[i]=i end
P.Queue();local before=readCount;tick();assert(readCount-before==12 and P.job)
current=171;counter=2;event('TRADE_SKILL_DATA_SOURCE_CHANGING');assert(not P.job and not next(P.recipes))
event('TRADE_SKILL_DATA_SOURCE_CHANGED');tick(6);assert(P.info.professionID==171 and not P.job)
P.Queue();event('TRADE_SKILL_CLOSE');before=readCount;tick(5);assert(readCount==before)
assert(P.Details(1):find('Profession closed',1,true))
linked=true;event('TRADE_SKILL_SHOW');tick();assert(readCount==before)
linked=false
local orig=C_TradeSkillUI.GetRecipeInfo
C_TradeSkillUI.GetRecipeInfo=function() error('test failure') end
P.Queue();tick(6);assert(not P.reading and not P.job and P.lastError:find('test failure'))
C_TradeSkillUI.GetRecipeInfo=orig
P.Queue();tick(6);assert(P.recipes[1] and not P.reading)
-- Manual minimap access; no automatic login popup; switchable auto-open.
P.frame:Hide();P.minimapButton.scripts.OnClick();assert(P.frame:IsShown())
P.frame:Hide();ProfessionHelpForeverDB.auto=false;event('TRADE_SKILL_SHOW');tick(6);assert(not P.frame:IsShown())
P.SelectProfession('Tailoring');P.mode='Leveling';assert(#P.Rows()>10)
P.selected='Leveling1';P.Render();assert(P.Details(P.selected):find('Tailoring',1,true))
P.mode='Recipes';assert(#P.Rows()==0)
P.mode='Trainers';assert(#P.Rows()>0);P.selected='Trainers1';P.Render();assert(P.mapTarget)
local target=P.mapTarget
UiMapPoint={CreateFromCoordinates=function(m,x,y) return {map=m,x=x,y=y} end}
C_Map={SetUserWaypoint=function(p) waypoint=p end}
C_SuperTrack={SetSuperTrackedUserWaypoint=function(v) tracked=v end}
OpenWorldMap=function(m) openedMap=m end
P.ShowTrainerMap();assert(waypoint.map==target.map and waypoint.x==target.x and tracked and openedMap==target.map)
for _,name in ipairs(P.professionOrder) do
 local data=P.catalog[name];assert(#data.trainers>0)
 for _,t in ipairs(data.trainers) do assert(t.map>0 and t.x>=0 and t.x<=1 and t.y>=0 and t.y<=1) end
 if #data.routes>0 then assert(data.routes[1].low==1 and data.routes[#data.routes].high==300) end
end
P.followSteps=false
-- Remaining counts use actual skill, including crafts with no skill gain.
P.SelectProfession('Engineering');P.mode='Leveling';P.selected='Leveling1';P.autoBatch=true
local saved=P.catalog.Engineering.routes[1]
P.catalog.Engineering.routes[1]={name='Recipe 1',low=1,high=31,crafts=30,materials={{name='Stone',quantity=2}}}
local skill,owned=11,7
current=202;ids={1};linked=false
C_TradeSkillUI.GetChildProfessionInfo=function() return {professionID=202,sourceCounter=5,professionName='Engineering',skillLevel=skill,maxSkillLevel=75} end
C_Item.GetItemCount=function() return owned end
P.open=true;event('SKILL_LINES_CHANGED');tick(2)
assert(P.batch==20 and P.Rows()[1].subtitle:find('20 left',1,true))
assert(P.Details(P.selected):find('40 x Material 2835',1,true))
assert(P.Details(P.selected):find('missing 33',1,true))
skill=12;owned=5;event('TRADE_SKILL_ITEM_CRAFTED_RESULT');event('BAG_UPDATE_DELAYED');tick(2)
assert(P.batch==19 and P.Details(P.selected):find('38 x Material 2835',1,true))
owned=3;event('BAG_UPDATE_DELAYED');tick(2)
assert(P.batch==19 and P.Details(P.selected):find('missing 35',1,true))
P.autoBatch=false;P.batch=4;skill=13;event('SKILL_LINES_CHANGED');tick(2);assert(P.batch==4)
P.autoBatch=true;P.SyncBatch();assert(P.batch==18)
skill=31;event('SKILL_LINES_CHANGED');tick(2)
assert(P.batch==0 and P.Details(P.selected):find('Step complete',1,true))
skill=40;event('SKILL_LINES_CHANGED');tick(2);assert(P.batch==0)
P.browse='Tailoring';local estimate,known=P.Remaining({low=1,high=30,crafts=35});assert(estimate==35 and not known)
P.catalog.Engineering.routes[1]=saved
-- Automatic progression, skipped thresholds, pagination and training status.
P.followSteps=true;P.browse='Engineering';P.mode='Leveling';P.selected='Leveling1'
local routes=P.catalog.Engineering.routes
P.info={professionID=202,professionName='Engineering',skillLevel=routes[1].high,maxSkillLevel=75}
P.AdvanceStep({professionID=202,skillLevel=routes[1].high-1});assert(P.selected=='Leveling2')
P.selected='Leveling1';P.AdvanceStep({professionID=202,skillLevel=routes[1].high});assert(P.selected=='Leveling1','manual browsing must not jump')
P.info.skillLevel=routes[9].low;P.AdvanceStep({professionID=202,skillLevel=1});assert(P.selected=='Leveling9' and P.page==2)
P.info.skillLevel=75;P.info.maxSkillLevel=75
assert(P.TrainingStatus(routes[5]):find('TRAIN RANK NOW',1,true))
P.info.maxSkillLevel=150;P.recipes[3]={name='Missing recipe',learned=false}
assert(P.TrainingStatus(routes[5],3):find('LEARN RECIPE',1,true))
assert(not P.TrainingStatus(routes[5]):find('LEARN RECIPE',1,true),'filtered recipe absence is not proof')
P.info.skillLevel=300;P.selected='Leveling28';P.AdvanceStep({professionID=202,skillLevel=299});P.SyncBatch();assert(P.batch==0)
P.browse='Engineering';P.mode='Leveling';P.selected='Leveling5'
UnitFactionGroup=function() return 'Horde' end
assert(P.NextRankTrainer(75).name=='Nogg');assert(P.NextRankTrainer(150).name=='Roxxik')
assert(P.NextRankTrainer(225).name=='Buzzek Bracketswing');assert(not P.NextRankTrainer(300))
UnitFactionGroup=function() return 'Alliance' end
assert(P.NextRankTrainer(75).name=='Trixie Quikswitch')
assert(P.NextRankTrainer(150).name=='Springspindle Fizzlegear')
P.info.skillLevel=75;P.info.maxSkillLevel=75;P.Render()
assert(P.mapTarget.name=='Trixie Quikswitch' and P.trainingPrefix:find('Next rank',1,true))
P.ShowTrainerMap();assert(waypoint.map==1455)
P.info.maxSkillLevel=150;P.Render();assert(not P.mapTarget and not P.trainingPrefix,'stale training pin')
UnitFactionGroup=function() return 'Neutral' end;assert(not P.NextRankTrainer(75))
-- Gathering professions have no crafting window; read the profession list.
local gatherSkill=70
GetProfessions=function() return nil,4,nil,7 end
GetProfessionInfo=function(index)
 if index==4 then return 'Herbalism',nil,gatherSkill,150,nil,nil,182 end
 return 'Fishing',nil,150,150,nil,nil,356
end
UnitFactionGroup=function() return 'Alliance' end
P.open=false;P.mode='Leveling';P.SelectProfession('Herbalism')
assert(P.selected=='Leveling2' and P.DisplayInfo().skillLevel==70)
P.Render();assert(P.areaTarget.zone=='Darkshore' and not P.mapTarget)
assert(not P.Details(P.selected):find('CRAFT',1,true))
P.ShowTrainerMap(P.areaTarget);assert(waypoint.map==1439)
gatherSkill=170;event('SKILL_LINES_CHANGED');tick();assert(P.selected=='Leveling4')
P.mode='Recipes';assert(#P.Rows()==0)
P.mode='Leveling';P.SelectProfession('Fishing');P.Render()
assert(P.selected=='Leveling3' and P.Details(P.selected):find('Old Man Heming',1,true))
assert(P.areaTarget.zone=='Dustwallow Marsh')
GetProfessions=function() return nil end
P.RefreshGathering();assert(not P.DisplayInfo(),'unlearned gathering skill must not stay cached')
for _,name in ipairs({'Mining','Herbalism','Skinning','Fishing'}) do
 local routes=P.catalog[name].routes
 assert(routes[1].low==1 and routes[#routes].high==300)
 for i,r in ipairs(routes) do
  assert(r.gather and r.horde.map>0 and r.alliance.map>0)
  if i>1 then assert(routes[i-1].high==r.low) end
 end
end
-- Keep recommendations are based on positive future dependencies.
P.browse='Engineering';P.mode='Leveling'
P.info={professionName='Engineering',professionID=202,skillLevel=15,maxSkillLevel=75}
local savedRoutes=P.catalog.Engineering.routes
P.catalog.Engineering.routes={
 {low=1,high=10,name='Part',crafts=9},
 {low=10,high=20,name='Device',crafts=10,materials={{name='Part',quantity=2}}}}
local advice=P.KeepAdvice('Part',1)
assert(advice:find('KEEP:',1,true) and advice:find('~10 total',1,true) and advice:find('Device',1,true))
P.info.skillLevel=20;assert(not P.KeepAdvice('Part',1):find('Later in this route',1,true))
assert(P.KeepAdvice('An Unknown Item',1):find('SELL / USE / CHECK',1,true))
assert(P.KeepAdvice('Silverleaf',1):find('Alchemy',1,true))
P.catalog.Engineering.routes=savedRoutes
P.browse='Mining';assert(P.GatherKeepSection():find('Engineering',1,true))
-- Modern bag-only tooltip callback; learned professions independent of UI browse.
local bagRank=1
GetProfessions=function() return 4,nil,7 end
GetProfessionInfo=function(i)
 if i==4 then return 'Alchemy',nil,bagRank,300,nil,nil,171 end
 return 'Engineering',nil,300,300,nil,nil,202
end
C_Item.GetItemNameByID=function(id) return id==1 and 'Silverleaf' or 'Unknown item' end
C_Item.GetItemCount=function() return 3 end
P.browse='Fishing'
local lines=P.BagAdvice(1);local text=table.concat(lines,'\n')
assert(text:find('KEEP:',1,true) and text:find('Alchemy:',1,true) and text:find('Bags: 3',1,true))
assert(text:find('bank excluded',1,true))
bagRank=300;assert(not table.concat(P.BagAdvice(1),'\n'):find('KEEP:',1,true))
assert(table.concat(P.BagAdvice(2),'\n'):find('SELL / USE / CHECK',1,true))
local getter='GetBagItem';local added=0
function GameTooltip:GetPrimaryTooltipInfo() return {getterName=getter} end
function GameTooltip:AddLine() added=added+1 end
bagTooltipCallback(GameTooltip,{id=1});assert(added>0)
local before=added;bagTooltipCallback(GameTooltip,{id=1});assert(added==before,'duplicate advice')
GameTooltip.scripts.OnTooltipCleared(GameTooltip);bagTooltipCallback(GameTooltip,{id=2});assert(added>before)
GameTooltip.scripts.OnTooltipCleared(GameTooltip);getter='GetInventoryItem';before=added
bagTooltipCallback(GameTooltip,{id=1});assert(added==before,'non-bag tooltip modified')
assert(not P.tooltipReading and not P.tooltipError)
UnitFactionGroup=function() return 'Horde' end
local source=table.concat(P.ItemSources(3371,false),'\n')
assert(source:find("Kor'geld",1,true) and source:find('Orgrimmar',1,true))
UnitFactionGroup=function() return 'Alliance' end
source=table.concat(P.ItemSources(2320,false),'\n')
assert(source:find('Alexandra Bolero',1,true) and source:find('Stormwind City',1,true))
assert(not source:find('Borya',1,true))
C_Item.GetItemNameByID=function() return 'Rough Blasting Powder' end
assert(table.concat(P.ItemSources(4357,false),'\n'):find('Crafting guide: Engineering',1,true))
assert(table.concat(P.ItemSources(4357,true),'\n'):find('cannot normally be traded',1,true))
C_Item.GetItemInfo=function() return nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,1 end
assert(table.concat(P.ItemSources(4357,false),'\n'):find('cannot normally be traded',1,true))
UnitFactionGroup=function() return 'Horde' end
P.ShowVendorCard(3371);assert(P.vendorCard:IsShown() and P.vendorCard.vendor.name=="Kor'geld")
local v=P.vendorCard.vendor;P.VendorWaypoint(v)
assert(waypoint.map==v.map and waypoint.x==v.x/100 and waypoint.y==v.y/100)
GameTooltip:Hide();function P.vendorCard:IsMouseOver() return false end
P.vendorCard.scripts.OnUpdate(P.vendorCard,5);assert(P.vendorCard:IsShown())
P.vendorCard.scripts.OnUpdate(P.vendorCard,6);assert(not P.vendorCard:IsShown())
P.ShowVendorCard(3371);P.ShowVendorCard(999999);assert(not P.vendorCard:IsShown() and not P.vendorCard.vendor)
assert(P.recipeVendorItems['Free Action Potion'])
P.ShowVendorCard(P.recipeVendorItems['Free Action Potion']);assert(P.vendorCard:IsShown())
UnitFactionGroup=function() return 'Horde' end
local vial=P.FindItemVendor(3371)
assert(vial.price==20 and vial.pack==5)
local cost,quantity,packs=P.VendorCost(vial,7)
assert(cost==40 and quantity==10 and packs==2)
assert(P.VendorCost(vial,0)==0)
assert(P.VendorCost(vial,nil)==nil)
assert(P.VendorCost({},7)==nil)
assert(P.FormatMoney(12345)=='1g 23s 45c')
local priceText=table.concat(P.ItemSources(3371,false,7),'\n')
assert(priceText:find('0g 0s 4c each',1,true) and priceText:find('buy 10 for ~0g 0s 40c',1,true))
assert(table.concat(P.ItemSources(3371,false),'\n'):find('Missing quantity unknown',1,true))
C_Item.GetItemNameByID=function() return 'Empty Vial' end
GetProfessions=function() return 1 end
GetProfessionInfo=function() return 'Alchemy',nil,1,75,nil,nil,171 end
local _,plan=P.BagAdvice(3371);assert(plan and plan.missing and plan.missing>0)
C_Item.GetItemCount=function() return 100000 end
local _,full=P.BagAdvice(3371);assert(full.missing==0)
-- Material sources must work offline in the profession panel, not just tooltips.
C_Item.GetItemCount=function() return 0 end
C_Item.GetItemInfo=nil
P.browse='Engineering';P.mode='Leveling';P.info=nil;P.open=false;P.autoBatch=false;P.batch=7
local savedMaterialRoute=P.catalog.Engineering.routes[1]
P.catalog.Engineering.routes[1]={name='Example',low=1,high=30,crafts=29,materials={{name='Empty Vial',quantity=1},{name='Coarse Thread',quantity=1}}}
P.selected='Leveling1';P.Render()
assert(#P.materialMaps==2 and P.materialMaps[1].name=="Kor'geld" and P.materialMaps[2].name=='Borya')
local details=P.Details(P.selected)
assert(details:find('Vendor:',1,true) and details:find('buy 10',1,true))
local clicked=false
for _,frame in ipairs(frames) do
 if frame.vendor and frame.vendor.name=="Kor'geld" and frame.text=='Show on map' and frame:IsShown() then
  frame.scripts.OnClick(frame);clicked=true;assert(waypoint.map==1454)
 end
end
assert(clicked,'inline material map button was not rendered')
P.catalog.Engineering.routes[1]=savedMaterialRoute
assert(P.MaterialSource('Copper Bar',1):find('Smelt Copper',1,true))
assert(P.MaterialSource('Handful of Copper Bolts',1):find('Engineering',1,true))
assert(P.MaterialSource('Linen Cloth',1):find('Loot:',1,true))
P.mode='Trainers';P.selected=nil;P.Render();assert(#P.materialMaps==0)
print('PASS material panel: offline vendor names, pack totals, multiple inline buttons, maps, crafting and loot sources')
print('PASS vendor costs: per-item vs pack price, partial packs, no missing, unknown price/quantity, money formatting and bag-plan integration')
print('PASS vendor map: coordinate units, tooltip grace period, stale item clearing and recipe item lookup')
print('PASS item sources: faction-specific vendor names/locations, crafting guide and bound-item AH guard')
print('PASS bag tooltip: modern hook, real learned skills, bank exclusion, completed routes, duplicate/clear handling and bag-only scope')
print('PASS keep/sell: remaining direct requirements, completed steps, other professions and unknown-item fallback')
print('PASS gathering: unopened professions, sparse indices, skill updates, faction zones, fishing book, removed skill and continuous ranges')
print('PASS faction/rank trainer selection, inline map target, waypoint and stale-target clearing')
print('PASS automatic step progression and training detection')
print('PASS remaining counts: skill gains, no-gain crafts, bag totals, manual/auto, completed steps, cross-profession guard')
print('PASS Forever: modern-only API, UI construction/render, no login popup, deferred bursts, bounded scans, recursion suppression, materials/alternatives, unlearned sources, source switches, close/linked guards, errors and manual access')
''')
