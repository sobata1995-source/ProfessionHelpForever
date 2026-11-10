local P=ProfessionHelpForever
local craftIndex
function P.FindItemVendor(itemID)
 local faction=UnitFactionGroup and UnitFactionGroup('player')
 for _,v in ipairs(P.vendorSources[itemID] or {}) do
  if v.faction==faction and v.map then return v end
 end
end
function P.VendorWaypoint(v)
 if not v then return end
 P.ShowTrainerMap({name=v.name,zone=v.zone,map=v.map,x=v.x/100,y=v.y/100})
end
function P.FormatMoney(copper)
 copper=math.ceil(copper)
 return string.format("%dg %ds %dc",math.floor(copper/10000),math.floor(copper/100)%100,copper%100)
end
function P.VendorCost(vendor,missing)
 if not vendor or not vendor.price or not vendor.pack or vendor.pack<1 then return nil end
 if missing==nil then return nil end
 local packs=math.ceil(math.max(0,missing)/vendor.pack)
 return packs*vendor.price,packs*vendor.pack,packs
end
function P.ItemSources(itemID,bound,missing,knownName)
 local lines={'|cffffd36bWHERE TO GET|r'}
 local vendor=P.FindItemVendor(itemID)
 if vendor then
  lines[#lines+1]=string.format('Vendor: %s - %s (%.1f, %.1f)',vendor.name,vendor.zone,vendor.x,vendor.y)
  if vendor.price and vendor.pack then
   lines[#lines+1]='Vendor base price: '..P.FormatMoney(vendor.price/vendor.pack)..' each'
   if vendor.pack>1 then lines[#lines+1]='Sold in packs of '..vendor.pack..': '..P.FormatMoney(vendor.price)..' per pack' end
   local total,buy,packs=P.VendorCost(vendor,missing)
   if total then
    lines[#lines+1]='Missing '..missing..': buy '..buy..' for ~'..P.FormatMoney(total)
   else lines[#lines+1]='Missing quantity unknown: no purchase total calculated.' end
   lines[#lines+1]='Base-price estimate; reputation discounts and stock are not checked.'
  else lines[#lines+1]='Vendor price not recorded.' end
 elseif P.vendorSources[itemID] then
  lines[#lines+1]='Vendor item; no listed vendor for your faction yet.'
 end
 if not craftIndex then
  craftIndex={}
  for _,profession in ipairs(P.professionOrder) do
   if not P.catalog[profession].gather then
    for _,step in ipairs(P.catalog[profession].routes) do
     craftIndex[step.name]=craftIndex[step.name] or {}
     craftIndex[step.name][profession]=true
    end
   end
  end
 end
 local name=knownName or P.Read(C_Item.GetItemNameByID,itemID)
 local found=false
 for _,profession in ipairs(P.professionOrder) do
  if name and craftIndex[name] and craftIndex[name][profession] then
   lines[#lines+1]='Crafting guide: '..profession..' - '..name
   found=true
  end
 end
 if not found and not P.vendorSources[itemID] then lines[#lines+1]='Vendor/crafting source not recorded in this guide.' end
 local bindType
 if itemID and C_Item.GetItemInfo then bindType=P.Read(function() return select(14,C_Item.GetItemInfo(itemID)) end) end
 if bound or bindType==1 or bindType==4 then
  lines[#lines+1]='Auction House: this item cannot normally be traded.'
 else
  lines[#lines+1]='Auction House: search if tradeable; listings and prices are not checked.'
 end
 return lines
end
