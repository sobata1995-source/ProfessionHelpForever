local P=ProfessionHelpForever
P.toolUses={['Mining Pick']='Mining',['Blacksmith Hammer']='Blacksmithing',
 ['Skinning Knife']='Skinning',["Chef's Knife"]='Cooking',['Fishing Pole']='Fishing',
 ['Arclight Spanner']='Engineering',['Gyromatic Micro-Adjustor']='Engineering',
 ['Runed Copper Rod']='Enchanting',['Runed Silver Rod']='Enchanting',
 ['Runed Golden Rod']='Enchanting',['Runed Truesilver Rod']='Enchanting',
 ['Runed Arcanite Rod']='Enchanting'}
function P.KeepMessage(use)
 return '|cff00ff00KEEP|r\nKeep this item, you will need it for '..use..'.'
end
function P.SellMessage()
 return '|cffff3333SELL|r\nSell this item; no future need in the leveling guide.'
end
-- Only positive dependencies in the bundled routes are authoritative here.
-- Absence from a leveling route never proves an item is globally useless.
function P.KeepAdvice(name,stepIndex)
 if not name or name=="" then return "Item data is loading." end
 if P.toolUses[name] then return name.."\n"..P.KeepMessage(P.toolUses[name]) end
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
  return name.."\n"..P.KeepMessage(table.concat(own,", ")).."\n~"..total.." needed for later steps."
 end
 local uses={}
 for _,profession in ipairs(P.professionOrder) do if other[profession] then uses[#uses+1]=profession end end
 if #uses>0 then return name.."\n"..P.KeepMessage(table.concat(uses,", ").." leveling") end
 return name.."\n"..P.SellMessage()
end
function P.KeepSection(output,materials,stepIndex)
 local lines={"\n|cffffd36bITEM ADVICE|r"}
 local seen={}
 local function add(name)
  if name and not seen[name] then seen[name]=true;lines[#lines+1]=P.KeepAdvice(name,stepIndex) end
 end
 add(output)
 for _,m in ipairs(materials or {}) do add(m.name) end
 if not next(seen) then lines[#lines+1]="Item data is loading." end
 lines[#lines+1]="Reserve current crafting materials first."
 return table.concat(lines,"\n\n")
end
function P.GatherKeepSection()
 local uses={Mining='Engineering and Blacksmithing',Herbalism='Alchemy',
  Skinning='Leatherworking',Fishing='Cooking'}
 return '\n|cffffd36bITEM ADVICE|r\n'..P.KeepMessage(uses[P.browse] or 'profession leveling')
end
