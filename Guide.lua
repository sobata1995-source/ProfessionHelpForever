local P=ProfessionHelpForever
P.browse="Engineering"
local liveRows,liveDetails=P.Rows,P.Details
function P.SelectProfession(name)
 if not P.catalog[name] then return end
 P.browse=name;P.selected=nil;P.page=1;P.batch=1
 if ProfessionHelpForeverDB then ProfessionHelpForeverDB.profession=name end
 if P.catalog[name].gather then P.RefreshGathering() end
 P.message="Choose a route step, or Trainers for rank-specific locations."
 if P.Render then P.Render() end
end
function P.DisplayInfo()
 if P.catalog[P.browse].gather then return P.gatherSkills and P.gatherSkills[P.browse] end
 return P.info
end
function P.RefreshGathering()
 if not GetProfessions or not GetProfessionInfo then return end
 local ids=P.Read(function() return {GetProfessions()} end)
 if not ids then return end
 local previous=P.DisplayInfo()
 local records={}
 local names={[186]="Mining",[182]="Herbalism",[393]="Skinning",[356]="Fishing"}
 for _,index in pairs(ids) do
  local r=P.Read(function()
   local name,_,rank,maxRank,_,_,skillLine=GetProfessionInfo(index)
   return {professionName=names[skillLine] or name,professionID=skillLine,skillLevel=rank,maxSkillLevel=maxRank}
  end)
  if r and r.skillLevel and P.catalog[r.professionName] and P.catalog[r.professionName].gather then records[r.professionName]=r end
 end
 P.gatherSkills=records
 if P.catalog[P.browse].gather then P.AdvanceStep(previous);P.dirty=true end
end
function P.Matching()
 return P.DisplayInfo() and (P.DisplayInfo().professionName==P.browse or P.DisplayInfo().parentProfessionName==P.browse)
end
-- Estimate remaining attempts using the guide's average attempts per skill point.
-- A failed skill-up does not reduce this estimate; the new bag counts still refresh.
P.autoBatch=true
function P.Remaining(row)
 local skill=P.Matching() and tonumber(P.DisplayInfo().skillLevel) or nil
 if not skill then return row.crafts,false end
 local span=math.max(1,row.high-row.low)
 local remaining=math.max(0,row.high-math.max(row.low,skill))
 return math.ceil(row.crafts*remaining/span),true
end
-- Advance only after measured progress, leaving manually browsed steps alone.
P.followSteps=true
function P.AdvanceStep(previous)
 if not P.followSteps or P.mode~="Leveling" or not P.Matching() then return end
 local routes=P.catalog[P.browse].routes
 local skill=tonumber(P.DisplayInfo().skillLevel)
 if not skill or #routes==0 then return end
 local row=P.Entry(P.selected)
 local oldSkill=previous and previous.professionID==P.DisplayInfo().professionID and tonumber(previous.skillLevel)
 if row and not (oldSkill and oldSkill<row.high and skill>=row.high) then return end
 local index
 for i,r in ipairs(routes) do if skill<r.high then index=i;break end end
 if not index then index=#routes end
 P.selected="Leveling"..index;P.page=math.ceil(index/7);P.autoBatch=true
 P.message=skill>=routes[#routes].high and "Leveling route complete!" or ("Current step: "..routes[index].name)
end
function P.NextRankTrainer(cap)
 local faction=UnitFactionGroup and UnitFactionGroup("player")
 if faction~="Horde" and faction~="Alliance" then return end
 local best,bestCap
 for _,t in ipairs(P.catalog[P.browse].trainers) do
  local low,high=t.rank:match("%((%d+)%-(%d+)%)")
  low,high=tonumber(low),tonumber(high)
  if low and high and low<=cap and high>cap and (t.faction==faction or t.faction=="Neutral") then
   if not bestCap or high<bestCap then best,bestCap=t,high end
  end
 end
 return best
end
function P.TrainingStatus(row,recipeID)
 if not P.Matching() then return "Open this profession to check your skill cap and learned recipes." end
 local skill,cap=P.DisplayInfo().skillLevel or 0,P.DisplayInfo().maxSkillLevel or 0
 local lines={}
 if cap>0 and cap<300 and (skill>=cap or row.high>cap) then
  lines[#lines+1]=skill>=cap and "|cffff7777TRAIN RANK NOW: your skill cap is reached.|r" or ("|cffffd36bTrain the next rank before skill "..cap.." to finish this step.|r")
  local target=P.NextRankTrainer(cap)
  if target then
   P.mapTarget=target
   lines[#lines+1]="Next rank: "..target.name.." - "..target.zone
   lines[#lines+1]=target.rank
  else
   lines[#lines+1]="Check Trainers for the next rank; no confirmed friendly location is available."
  end
  lines[#lines+1]="Advanced training may require a book or quest."
 end
 local recipe=recipeID and P.recipes[recipeID]
 if recipe and not recipe.learned then
  lines[#lines+1]="|cffff7777LEARN RECIPE: "..row.name.."|r"
  lines[#lines+1]=P.open and P.Read(C_TradeSkillUI.GetRecipeSourceText,recipeID) or "Check this recipe's source in the profession window."
 elseif not recipe then
  lines[#lines+1]="Recipe not in the current list. Clear profession filters to verify whether it is learned; check its source if missing."
 elseif #lines==0 then
  lines[#lines+1]="Recipe learned; no rank training needed for this step."
 end
 return table.concat(lines,"\n")
end
function P.SyncBatch()
 local row=P.mode=="Leveling" and P.Entry(P.selected)
 if row and not row.gather and P.autoBatch then P.batch=P.Remaining(row) end
end
function P.Rows()
 local data=P.catalog[P.browse]
 if P.mode=="Recipes" and data.gather then return {} end
 if P.mode=="Recipes" then return P.Matching() and liveRows() or {} end
 local result={}
 local source=P.mode=="Trainers" and data.trainers or data.routes
 for i,row in ipairs(source) do
  result[#result+1]={id=P.mode..i,info={name=row.name},guide=row,
   subtitle=P.mode=="Trainers" and row.zone or (row.gather and (row.low.." - "..row.high.." | "..P.GatherLocation(row).zone) or (row.low.." - "..row.high.." | ~"..P.Remaining(row)..(P.Matching() and " left" or " total")))}
 end
 return result
end
function P.Entry(id)
 if type(id)~="string" then return end
 local index=tonumber(id:match("(%d+)$"));local data=P.catalog[P.browse]
 return index and (P.mode=="Trainers" and data.trainers or data.routes)[index]
end
function P.GatherLocation(row)
 return UnitFactionGroup and UnitFactionGroup("player")=="Alliance" and row.alliance or row.horde
end
function P.GatherDetails(row)
 local info=P.DisplayInfo()
 local zone=P.GatherLocation(row)
 P.areaTarget=zone
 local lines={"|cffffd36b"..P.browse.." | "..row.low.." - "..row.high.."|r",
  info and ("Current skill: "..info.skillLevel.." / "..info.maxSkillLevel) or "Learn this profession to track your skill.",
  "Go to: "..zone.zone,"Collect: "..row.name,
  "Map pin marks the approximate zone centre, not a resource spawn or fishing spot.",
  "No fixed gather/catch count: skill-up chance varies. Higher-level zones may require a stronger character.",
  "Suggested Forever route; later zones are not yet verified on live."}
 if info and info.skillLevel>=300 then lines[#lines+1]="Leveling route complete!" end
 P.areaPrefix=table.concat(lines,"\n")
 lines[#lines+1]="\n|cffffd36bTRAINING|r"
 if info and info.maxSkillLevel<300 and row.high>info.maxSkillLevel or info and info.skillLevel>=info.maxSkillLevel and info.maxSkillLevel<300 then
  if P.browse=="Fishing" and info.maxSkillLevel>=150 then
   lines[#lines+1]=info.maxSkillLevel<225 and "Expert: buy Expert Fishing - The Bass and You from Old Man Heming in Booty Bay (level 20, skill 125)." or "Artisan: complete Nat Pagle, Angler Extreme in Dustwallow Marsh (level 35, skill 225)."
  else
   P.mapTarget=P.NextRankTrainer(info.maxSkillLevel)
   lines[#lines+1]="Train the next rank before exceeding skill "..info.maxSkillLevel.."."
   if P.mapTarget then lines[#lines+1]=P.mapTarget.name.." - "..P.mapTarget.zone end
  end
 else lines[#lines+1]="Check your skill cap before travelling; train when needed." end
 lines[#lines+1]=P.GatherKeepSection()
 return table.concat(lines,"\n")
end
function P.Details(id)
 if P.mode=="Recipes" then
  if P.catalog[P.browse].gather then return "Use Leveling for gathering zones and Trainers for rank locations." end
  if not P.Matching() then return "Open "..P.browse.." in the game to load its recipes. You can browse Leveling and Trainers now." end
  return liveDetails(id)
 end
 local row=P.Entry(id)
 if not row then
  if P.mode=="Trainers" then return "Select a trainer. Check the rank and zone, then use Show on map.\n\nThe directory includes both factions. Choose a friendly location. Advanced ranks may require a book or quest." end
  if #P.catalog[P.browse].routes==0 then return P.browse.."\n\nGathering routes are not yet verified for Forever. Use Trainers for the available locations and ranks.\n\nNo fixed number of gathers or catches is promised." end
  return "Select a step for the suggested 1-300 route.\n\nOpen the profession to calculate remaining crafts from your current skill. With no skill reading, counts show the whole step.\n\nForever data is evolving; later steps need in-game verification."
 end
 if P.mode=="Trainers" then
  P.mapTarget=row
  return "|cffffd36bTRAINING|r\n"..row.name.."\n"..row.rank.."\n\n"..row.zone..string.format(" (%.1f, %.1f)",row.x*100,row.y*100).."\n\nCheck faction access and training requirements before travelling. Books and quests may be needed for advanced ranks."
 end
 if row.gather then return P.GatherDetails(row) end
 P.SyncBatch()
 local remaining,known=P.Remaining(row)
 local progress=known and (remaining==0 and "Step complete: 0 crafts remaining." or ("Estimated remaining: ~"..remaining.." crafts (skill "..P.DisplayInfo().skillLevel..").")) or ("Whole step: ~"..remaining.." crafts. Open profession to read your skill.")
 local found
 if P.Matching() then for rid,r in pairs(P.recipes) do if r.name==row.name then found=rid;break end end end
 local lines={"|cffffd36b"..row.name.."|r",row.low.." - "..row.high,progress,(P.autoBatch and "Automatic batch: " or "Manual batch: ")..P.batch.." crafts","\n|cffffd36bTRAINING|r",P.TrainingStatus(row,found)}
 if P.mapTarget then P.trainingPrefix=table.concat(lines,"\n") end
 if found and P.open then
  lines[#lines+1]="\n"..liveDetails(found)
 else
  lines[#lines+1]="\n|cffffd36bMATERIALS (GUIDE ESTIMATE)|r"
  for _,m in ipairs(row.materials or {}) do
   local quantity=math.ceil(m.quantity*P.batch)
   lines[#lines+1]="\n|cffffffff"..quantity.." x "..m.name.."|r\n"..P.MaterialSource(m.name,quantity)
  end
  lines[#lines+1]="Open "..P.browse.." with recipe filters cleared to verify materials and bag counts."
 end
 lines[#lines+1]=P.KeepSection(row.name,row.materials,tonumber(tostring(id):match("(%d+)$")))
 lines[#lines+1]="\nEstimate only. Yellow/green recipes may take more crafts. Keep components until later requirements are checked."
 return table.concat(lines,"\n")
end
function P.ShowTrainerMap(target)
 local t=type(target)=="table" and target.map and target or P.mapTarget
 if not t then return end
 if not C_Map or not C_Map.SetUserWaypoint or not UiMapPoint then P.message="This client cannot create a map waypoint.";P.Render();return end
 local ok,err=pcall(function()
  C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(t.map,t.x,t.y))
  if C_SuperTrack then C_SuperTrack.SetSuperTrackedUserWaypoint(true) end
  if OpenWorldMap then OpenWorldMap(t.map) elseif WorldMapFrame then WorldMapFrame:Show();WorldMapFrame:SetMapID(t.map) end
 end)
 P.message=ok and ("Map pin: "..t.name.." - "..t.zone) or ("Cannot set waypoint: "..tostring(err))
 P.Render()
end
