local P=ProfessionHelpForever
-- A separate card survives the bag item's OnLeave hiding GameTooltip.
local card=CreateFrame('Frame',nil,UIParent,'BackdropTemplate')
P.vendorCard=card
card:SetSize(300,104);card:SetClampedToScreen(true);card:EnableMouse(true)
card:SetFrameStrata('TOOLTIP')
card:SetBackdrop({bgFile='Interface\\ChatFrame\\ChatFrameBackground',edgeFile='Interface\\Tooltips\\UI-Tooltip-Border',edgeSize=12,insets={left=3,right=3,top=3,bottom=3}})
card:SetBackdropColor(.035,.05,.085,.98)
local label=card:CreateFontString(nil,'OVERLAY','GameFontNormal')
label:SetPoint('TOPLEFT',10,-10);label:SetSize(260,52);label:SetJustifyH('LEFT')
local button=CreateFrame('Button',nil,card,'UIPanelButtonTemplate')
button:SetSize(145,26);button:SetPoint('BOTTOMLEFT',10,10);button:SetText('Show on map')
button:SetScript('OnClick',function() if card.vendor then P.VendorWaypoint(card.vendor) end;card:Hide() end)
local close=CreateFrame('Button',nil,card,'UIPanelCloseButton');close:SetPoint('TOPRIGHT',0,0)
close:SetScript('OnClick',function() card:Hide() end)
card:SetScript('OnUpdate',function(self,elapsed)
 if self:IsMouseOver() or GameTooltip:IsShown() then self.age=0 else self.age=(self.age or 0)+elapsed end
 if self.age>10 then self:Hide() end
end)
card:Hide()
function P.ShowVendorCard(itemID)
 local vendor=P.FindItemVendor(itemID)
 if not vendor then card.vendor=nil;card:Hide();return end
 card.vendor=vendor;card.age=0
 card:ClearAllPoints();card:SetPoint('TOPLEFT',GameTooltip,'BOTTOMLEFT',0,-2)
 label:SetText((P.Read(C_Item.GetItemNameByID,itemID) or ('Item #'..itemID))..'\n'..vendor.name..' - '..vendor.zone)
 card:Show()
end
