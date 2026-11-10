Profession Help Forever 0.3.10
For the Blizzard Forever client, Interface 16001. Separate from the Wrath addon.

Open with /phf or the minimap button. Profession opens a 12-profession menu.
Leveling: suggested 1-300 routes for Engineering, Alchemy, Blacksmithing,
Enchanting, Tailoring, Leatherworking, Cooking and First Aid. Select a step
for estimated crafts/materials. With a matching skill reading, counts estimate the remaining crafts.
Without a skill reading, counts show the whole step. Auto count scales the
guide estimate by the remaining skill range; yellow/green chances vary.
Craft, skill and bag events trigger deferred updates of counts and materials.
A craft without a skill gain does not reduce the remaining estimate.
Completed steps show zero. Entering a craft count switches to Manual;
click Count: Manual to restore Auto. Live material totals use the new batch.
Recipes: open the matching profession in-game to read live filtered recipes.
Trainers: select a trainer, check the rank and zone, then Show on map.
The trainer directory includes both factions; choose a friendly location.

Known limitations:
Routes are estimates from early Forever data, not verified optimal routes.
Later recipes may require vendor purchases, drops, books, quests or reputation.
Camping is not included in this alpha.
Mining, Herbalism, Skinning and Fishing include suggested 1-300 zone routes.
Guide materials are estimates; the live client takes precedence when available.
English recipe names are used to match guide steps with the live recipe list.
Trainer map pins use Forever-specific source coordinates; no exploration check.
Keep/sell advice covers bundled route dependencies only, not every item use.
No automatic opening on login. Auto-open only responds to profession events.
Bounded deferred scans retain the protection against recursive event storms.

Install: copy ProfessionHelpForever into _forever_/Interface/AddOns.
After an update use /reload. This build has automated mock tests;
in-game behavior must still be checked on the Forever client.

0.2.2: Leveling automatically selects the next step after the measured skill
crosses the selected step target, updates the page and returns counts to Auto.
Opening a profession with no selected step selects the current route step.
Manual browsing of already completed steps is preserved. The last step stays
selected with zero remaining at route completion.
Training shows a reached skill cap or a cap that prevents finishing the step.
An explicitly unlearned recipe shows its client-provided source. A recipe
absent from a filtered list is marked unverified, not assumed unlearned.

0.2.3: Next-rank warnings include a Show on map button directly below the
training text. Chooses a documented next-rank trainer for your faction or
a neutral trainer. Unknown faction/rank metadata does not produce a guessed
location. Training prerequisites, books and quests still apply.

0.3.0: Gathering routes read skill directly from the profession list, including
when the crafting window is closed. Choose the profession to see the current
step. SKILL_LINES_CHANGED advances the route after a threshold is crossed.
Starting zones are faction-aware. Show on map marks an approximate zone centre,
not a guaranteed node, beast location or fishable shoreline. Move within the
zone to the resources described. No gather/catch count is invented.
Craft controls are hidden for gathering. Fishing includes Expert book and
Artisan quest guidance. Later gathering zones are provisional: the source
itself notes that higher-level routes still await Forever live testing.

0.3.1: KEEP / SELL recommendations in the details panel.
Crafted items and materials are checked against future direct requirements
in the selected route. KEEP lists later recipes and an estimated total to
reserve, not a missing count; reserve the current batch separately.
Other professions are identified as possible uses, not assumed to be learned.
Unknown uses are SELL / USE / CHECK, never a claim that an item is worthless.
Gathering advice is category-level (ores/herbs/leather/fish), not per-drop.
Live Recipes use the client output item where available. English guide names
are used for matching. Quest uses, gear, enchants, optional recipes, recursive
component requirements and all auction values are not comprehensively known.
No item is automatically sold, destroyed, or removed from bags.

0.3.2: Bag item tooltips show Keep / Sell advice via the Forever modern item
TooltipDataProcessor hook. Counts combine current and future direct material
requirements for all learned crafting professions using their actual skill.
Hover an item again after crafting or changing skills to see the latest count.
Needed is an estimate; Bags and Missing exclude the bank. Other professions
are shown as possible uses separately. No selected guide or crafting window
is required. Item matching uses English guide names. Indirect component needs,
gear, quest and non-guide recipe uses are not comprehensive: no requirement
found is not a declaration that an item is trash. No automatic item actions.

0.3.3: Bag tooltips include WHERE TO GET. Supply vendor records show an NPC
name, zone and coordinates for your faction. Coverage includes common thread,
dye, vial, flux, tool and fishing supplies; not every item or vendor.
Crafting guide matches identify a profession and same-name recipe; absence
of a match is not proof that an item cannot be crafted. Auction House text
is a search suggestion only, not a listing or price lookup. Bound bag items
and known bind-on-pickup/quest items do not get an AH purchase suggestion.
Vendor stock, discounts and prices are not checked live.

0.3.4: Vendor Show on map card below bag tooltips, including recipe items.
The card is independent of GameTooltip so moving off the bag item does not
remove the button. It closes ten seconds after leaving both tooltip and card,
or with its close button. The named item remains visible on the card.
Known vendor-sold recipes also expose Recipe vendor map in the addon details.
Only sourced vendor inventory is covered; unknown recipes have no guessed pin.
Vendor percentages are converted to normalized coordinates for the map API.

0.3.5: Vendor tooltip prices show base per-item and per-pack prices. The total
uses missing quantities from the learned-profession route plan, rounded up
to complete vendor packs. Counts are bags-only; the bank is excluded.
For example, seven missing Empty Vials sold in packs of five require two packs.
Reputation discounts, available stock and live merchant prices are not read.
Unknown price/quantity is explicitly marked, not treated as zero. These are
purchase prices from the source vendor tables, not the item vendor sell value.

0.3.6: Material sources are shown directly under each material in the main
Leveling/Recipes details, including offline guide steps. Recorded vendor items
show faction-appropriate NPC, coordinates, price, missing quantity and a separate
inline Show on map button. Multiple materials can have separate map buttons.
Live required reagent alternatives retain their ONE OF grouping.
Crafting matches and conditional Auction House search guidance are shown;
initial gathering/loot guidance covers Copper Bar, Rough Stone and Linen Cloth.
Unknown sources remain explicitly unknown; not all mob drops are indexed.
Offline item ID lookup covers sourced vendor items and initial Engineering
materials. Bag counts are shown only when the item ID is available.

Community: https://discord.gg/Pr5eMAUqt
Free addon. Optional donation / tip: https://revolut.me/denisar2z
Patreon: https://www.patreon.com/c/DenisAleksandrov/membership
