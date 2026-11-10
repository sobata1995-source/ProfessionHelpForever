local P=ProfessionHelpForever
function P.MaterialMapToken(vendor)
 P.materialMaps=P.materialMaps or {}
 P.materialMaps[#P.materialMaps+1]=vendor
 return '[[PHMAP:'..#P.materialMaps..']]'
end
function P.MaterialSource(name,quantity,itemID)
 itemID=itemID or P.sourceItemIDs[name]
 local owned=itemID and P.Read(C_Item.GetItemCount,itemID,false,false,false)
 local missing=owned and math.max(0,quantity-owned) or nil
 local lines={}
 if owned then lines[#lines+1]='Have '..owned..' / Missing '..missing end
 local source=P.ItemSources(itemID,false,missing,name)
 for _,line in ipairs(source) do
  if line~='|cffffd36bWHERE TO GET|r' and not ((name=='Copper Bar' or name=='Rough Stone' or name=='Linen Cloth') and line=='Vendor/crafting source not recorded in this guide.') then lines[#lines+1]=line end
 end
 if name=='Copper Bar' then lines[#lines+1]='Make: Mining - Smelt Copper, using Copper Ore.'
 elseif name=='Rough Stone' then lines[#lines+1]='Gather: Mining - Copper Veins in starting zones.'
 elseif name=='Linen Cloth' then lines[#lines+1]='Loot: low-level humanoids. Example: Southsea Cutthroat (The Barrens). Exact spawn coordinates are not recorded.' end
 local vendor=itemID and P.FindItemVendor(itemID)
 if vendor then lines[#lines+1]=P.MaterialMapToken(vendor) end
 return table.concat(lines,'\n')
end
