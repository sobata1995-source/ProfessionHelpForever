local P=ProfessionHelpForever
-- Only positive dependencies in the bundled routes are authoritative here.
-- Absence from a leveling route never proves an item is globally useless.
function P.KeepAdvice(name,stepIndex)
 if not name or name=="" then return "CHECK: item name is not available yet." end
 local own,other={},{}
 local total=0
 local current=P.DisplayInfo()
 for _,profession in ipairs(P.professionOrder) do
  local data=P.catalog[profession]
  if not data.gather then
   for i,step in ipairs(data.routes) do
    local future=profession~=P.browse or
     ((not stepIndex or i>stepIndex) and (not current or step.high>(current.skillLevel or 0)))
    if future then
     for _,m in ipairs(step.materials or {}) do
      if m.name==name then
       if profession==P.browse then
        local crafts=P.Remaining(step)
        total=total+math.ceil(m.quantity*crafts)
        own[#own+1]=step.name.." ("..step.low.."-"..step.high..")"
       else other[profession]=true end
      end
     end
    end
   end
  end
 end
 if #own>0 then
  return "|cff66dd88KEEP: "..name.."|r\nLater in this route: ~"..total.." total needed (not a missing/bag count).\n"..table.concat(own,", ")
 end
 local uses={}
 for _,profession in ipairs(P.professionOrder) do if other[profession] then uses[#uses+1]=profession end end
 if #uses>0 then return "|cffffd36bKEEP / SELL: "..name.."|r\nUsed in "..table.concat(uses,", ").." routes. Keep if you plan to level those; sell surplus." end
 return "|cff9eb0c7SELL / USE / CHECK: "..name.."|r\nNo later use found in the bundled leveling routes. May still be useful for gear, quests, recipes or other players."
end
function P.KeepSection(output,materials,stepIndex)
 local lines={"\n|cffffd36bKEEP / SELL|r"}
 local seen={}
 local function add(name)
  if name and not seen[name] then seen[name]=true;lines[#lines+1]=P.KeepAdvice(name,stepIndex) end
 end
 add(output)
 for _,m in ipairs(materials or {}) do add(m.name) end
 if not next(seen) then lines[#lines+1]="CHECK: no item data available for this step." end
 lines[#lines+1]="Reserve materials for your current batch first. Estimates cover direct route requirements only; extra crafts may need more. No automatic selling or deleting."
 return table.concat(lines,"\n\n")
end
function P.GatherKeepSection()
 local notes={
  Mining="KEEP / SELL: ores, stones and gems can support Engineering and Blacksmithing. Check the matching bar's future requirements before smelting; not all ore should be smelted.",
  Herbalism="KEEP / SELL: herbs can support Alchemy. Keep those needed by your planned recipes; sell surplus rather than discard it.",
  Skinning="KEEP / SELL: leather and hides can support Leatherworking. Keep materials for your planned crafts; sell surplus.",
  Fishing="KEEP / SELL / USE: check fish against Cooking recipes. Keep quest fish for their quests; other catches may have uses beyond leveling."
 }
 return "\n|cffffd36bKEEP / SELL|r\n"..notes[P.browse].."\n\nGathering advice covers categories, not every possible drop. An item absent from a guide is not automatically trash."
end
