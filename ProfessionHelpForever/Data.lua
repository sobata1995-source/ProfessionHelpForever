-- Forever-specific factual route estimates and trainer locations. Sources: SOURCES.txt
local P=ProfessionHelpForever
P.catalog={}
P.catalog["Engineering"]={routes={{low=1,high=32,name="Rough Blasting Powder",crafts=37},{low=32,high=45,name="Rough Dynamite",crafts=19},{low=45,high=60,name="Handful of Copper Bolts",crafts=50},{low=60,high=75,name="Rough Copper Bomb",crafts=21},{low=75,high=80,name="Rough Copper Bomb",crafts=12},{low=80,high=85,name="Rough Boomstick",crafts=6},{low=85,high=92,name="Coarse Blasting Powder",crafts=11},{low=92,high=100,name="Rough Boomstick",crafts=17},{low=100,high=105,name="Copper Modulator",crafts=7},{low=105,high=110,name="Bronze Tube",crafts=6},{low=110,high=125,name="Silver Contact",crafts=21},{low=125,high=140,name="Heavy Blasting Powder",crafts=27},{low=140,high=145,name="Whirring Bronze Gizmo",crafts=8},{low=145,high=150,name="Bronze Framework",crafts=6},{low=150,high=175,name="Gold Power Core",crafts=39},{low=175,high=183,name="Solid Dynamite",crafts=10},{low=183,high=195,name="Gyrochronatom",crafts=23},{low=195,high=200,name="Mithril Tube",crafts=6},{low=200,high=210,name="Mechanical Repair Kit",crafts=12},{low=210,high=225,name="Hi-Impact Mithril Slugs",crafts=19},{low=225,high=238,name="Hi-Impact Mithril Slugs",crafts=29},{low=238,high=245,name="Hi-Explosive Bomb",crafts=9},{low=245,high=250,name="Mithril Gyro-Shot",crafts=6},{low=250,high=257,name="Dense Blasting Powder",crafts=11},{low=257,high=260,name="Mithril Gyro-Shot",crafts=5},{low=260,high=277,name="Tinkerbox",crafts=36},{low=277,high=287,name="Salt Shaker",crafts=27},{low=287,high=300,name="Thorium Shells",crafts=13}},trainers={{name="Thund",zone="Orgrimmar",map=1454,x=0.758,y=0.244,rank="Apprentice Engineering Trainers (1-75)"},{name="Graham Van Talen",zone="Undercity",map=1458,x=0.753,y=0.727,rank="Apprentice Engineering Trainers (1-75)"},{name="Mukdrak",zone="Durotar",map=1411,x=0.522,y=0.408,rank="Apprentice Engineering Trainers (1-75)"},{name="Twizwick Sprocketgrind",zone="Mulgore",map=1412,x=0.5870000000000001,y=0.395,rank="Apprentice Engineering Trainers (1-75)"},{name="Tinkerwiz",zone="The Barrens",map=1413,x=0.627,y=0.363,rank="Apprentice Engineering Trainers (1-75)"},{name="Strange Hermit",zone="Zephras Isle",map=2521,x=0.54,y=0.389,rank="Apprentice Engineering Trainers (1-75)"},{name="Jemma Quikswitch",zone="Ironforge",map=1455,x=0.6779999999999999,y=0.442,rank="Apprentice Engineering Trainers (1-75)"},{name="Sprite Jumpsprocket",zone="Stormwind City",map=1453,x=0.619,y=0.307,rank="Apprentice Engineering Trainers (1-75)"},{name="Jenna Lemkenilli",zone="Darkshore",map=1439,x=0.38299999999999995,y=0.41100000000000003,rank="Apprentice Engineering Trainers (1-75)"},{name="Bronk Guzzlegear",zone="Dun Morogh",map=1426,x=0.502,y=0.504,rank="Apprentice Engineering Trainers (1-75)"},{name="Deek Fizzlebizz",zone="Loch Modan",map=1432,x=0.45799999999999996,y=0.135,rank="Apprentice Engineering Trainers (1-75)"},{name="Nogg",zone="Orgrimmar",map=1454,x=0.758,y=0.254,rank="Journeyman Engineering Trainers (75-150)"},{name="Franklin Lloyd",zone="Undercity",map=1458,x=0.763,y=0.733,rank="Journeyman Engineering Trainers (75-150)"},{name="Trixie Quikswitch",zone="Ironforge",map=1455,x=0.6759999999999999,y=0.431,rank="Journeyman Engineering Trainers (75-150)"},{name="Lilliam Sparkspindle",zone="Stormwind City",map=1453,x=0.622,y=0.304,rank="Journeyman Engineering Trainers (75-150)"},{name="Finbus Geargrind",zone="Duskwood",map=1431,x=0.774,y=0.485,rank="Journeyman Engineering Trainers (75-150)"},{name="Roxxik",zone="Orgrimmar",map=1454,x=0.76,y=0.251,rank="Expert Engineering Trainers (150-225)"},{name="Springspindle Fizzlegear",zone="Ironforge",map=1455,x=0.685,y=0.435,rank="Expert Engineering Trainers (150-225)"},{name="Buzzek Bracketswing",zone="Tanaris",map=1446,x=0.523,y=0.27699999999999997,rank="Artisan Engineering Trainers (225-300)"},{name="Tinkmaster Overspark",zone="Ironforge",map=1455,x=0.698,y=0.507,rank="Gnomish Engineering"},{name="Oglethorpe Obnoticus",zone="Stranglethorn Vale",map=1434,x=0.28300000000000003,y=0.763,rank="Gnomish Engineering"},{name="Melbin Powderfuse",zone="Riverglades",map=2548,x=0.778,y=0.509,rank="Goblin Engineering"},{name="Nixx Sprocketspring",zone="Tanaris",map=1446,x=0.525,y=0.273,rank="Goblin Engineering"},{name="Vazario Linkgrease",zone="The Barrens",map=1413,x=0.627,y=0.363,rank="Goblin Engineering"}}}
P.catalog["Alchemy"]={routes={{low=1,high=13,name="Elixir of Minor Force",crafts=13},{low=13,high=20,name="Elixir of Minor Defense",crafts=7},{low=20,high=23,name="Mana Well",crafts=4},{low=23,high=67,name="Elixir of Minor Defense",crafts=47},{low=67,high=75,name="Minor Mana Potion",crafts=10},{low=75,high=80,name="Minor Mana Potion",crafts=8},{low=80,high=99,name="Elixir of Minor Fortitude",crafts=26},{low=99,high=103,name="Lesser Discolored Healing Potion",crafts=7},{low=103,high=120,name="Draught of Tongues",crafts=25},{low=120,high=130,name="Elixir of Wisdom",crafts=12},{low=130,high=142,name="Swim Speed Potion",crafts=15},{low=142,high=145,name="Discolored Healing Potion",crafts=4},{low=145,high=150,name="Lesser Mana Potion",crafts=6},{low=150,high=163,name="Lesser Mana Potion",crafts=19},{low=163,high=175,name="Elixir of Lesser Defense",crafts=19},{low=175,high=190,name="Greater Discolored Healing Potion",crafts=19},{low=190,high=205,name="Draught of Water Walking",crafts=19},{low=205,high=215,name="Elixir of Agility",crafts=12},{low=215,high=225,name="Elixir of Defense",crafts=12},{low=225,high=230,name="Restorative Potion",crafts=6},{low=230,high=245,name="Superior Discolored Healing Potion",crafts=19},{low=245,high=272,name="Draught of Detect Undead",crafts=44},{low=272,high=299,name="Draught of Detect Demon",crafts=66},{low=299,high=300,name="Greater Fire Protection Potion",crafts=1}},trainers={{name="Whuut",zone="Orgrimmar",map=1454,x=0.5589999999999999,y=0.331,rank="Apprentice Alchemy Trainers (1-75)"},{name="Kray",zone="Thunder Bluff",map=1456,x=0.46799999999999997,y=0.344,rank="Apprentice Alchemy Trainers (1-75)"},{name="Doctor Martin Felben",zone="Undercity",map=1458,x=0.46399999999999997,y=0.741,rank="Apprentice Alchemy Trainers (1-75)"},{name="Miao'zan",zone="Durotar",map=1411,x=0.5539999999999999,y=0.74,rank="Apprentice Alchemy Trainers (1-75)"},{name="Carolai Anise",zone="Tirisfal Glades",map=1420,x=0.595,y=0.522,rank="Apprentice Alchemy Trainers (1-75)"},{name="Iaadaria Bitterwind",zone="Zephras Isle",map=2521,x=0.6629999999999999,y=0.795,rank="Apprentice Alchemy Trainers (1-75)"},{name="Nyassa Swiftdraught",zone="Zephras Isle",map=2521,x=0.43700000000000006,y=0.434,rank="Apprentice Alchemy Trainers (1-75)"},{name="Valiena Swiftgale",zone="Zephras Isle",map=2521,x=0.5920000000000001,y=0.762,rank="Apprentice Alchemy Trainers (1-75)"},{name="Milla Fairancora",zone="Darnassus",map=1457,x=0.5529999999999999,y=0.228,rank="Apprentice Alchemy Trainers (1-75)"},{name="Vosur Brakthel",zone="Ironforge",map=1455,x=0.665,y=0.5539999999999999,rank="Apprentice Alchemy Trainers (1-75)"},{name="Tel'Athir",zone="Stormwind City",map=1453,x=0.556,y=0.857,rank="Apprentice Alchemy Trainers (1-75)"},{name="Linzy Blackbolt",zone="Alterac Mountains",map=1416,x=0.185,y=0.624,rank="Apprentice Alchemy Trainers (1-75)"},{name="Alchemist Mallory",zone="Elwynn Forest",map=1429,x=0.39899999999999997,y=0.483,rank="Apprentice Alchemy Trainers (1-75)"},{name="Ghak Healtouch",zone="Loch Modan",map=1432,x=0.37,y=0.493,rank="Apprentice Alchemy Trainers (1-75)"},{name="Cyndra Kindwhisper",zone="Teldrassil",map=1438,x=0.5760000000000001,y=0.607,rank="Apprentice Alchemy Trainers (1-75)"},{name="Yelmak",zone="Orgrimmar",map=1454,x=0.5670000000000001,y=0.332,rank="Journeyman Alchemy Trainers (75-150)"},{name="Bena Winterhoof",zone="Thunder Bluff",map=1456,x=0.466,y=0.332,rank="Journeyman Alchemy Trainers (75-150)"},{name="Doctor Marsh",zone="Undercity",map=1458,x=0.513,y=0.742,rank="Journeyman Alchemy Trainers (75-150)"},{name="Serge Hinott",zone="Hillsbrad Foothills",map=1424,x=0.616,y=0.192,rank="Journeyman Alchemy Trainers (75-150)"},{name="Jaxin Chong",zone="Stranglethorn Vale",map=1434,x=0.281,y=0.78,rank="Journeyman Alchemy Trainers (75-150)"},{name="Sylvanna Forestmoon",zone="Darnassus",map=1457,x=0.561,y=0.24100000000000002,rank="Journeyman Alchemy Trainers (75-150)"},{name="Tally Berryfizz",zone="Ironforge",map=1455,x=0.6659999999999999,y=0.5529999999999999,rank="Journeyman Alchemy Trainers (75-150)"},{name="Lilyssia Nightbreeze",zone="Stormwind City",map=1453,x=0.557,y=0.861,rank="Journeyman Alchemy Trainers (75-150)"},{name="Kylanna",zone="Ashenvale",map=1440,x=0.508,y=0.6709999999999999,rank="Journeyman Alchemy Trainers (75-150)"},{name="Linzy Blackbolt",zone="Alterac Mountains",map=1416,x=0.185,y=0.624,rank="Journeyman Alchemy Trainers (75-150)"},{name="Alchemist Narett",zone="Dustwallow Marsh",map=1445,x=0.64,y=0.47700000000000004,rank="Journeyman Alchemy Trainers (75-150)"},{name="Doctor Herbert Halsey",zone="Undercity",map=1458,x=0.478,y=0.732,rank="Expert Alchemy Trainers (150-225)"},{name="Ainethil",zone="Darnassus",map=1457,x=0.5489999999999999,y=0.24,rank="Expert Alchemy Trainers (150-225)"},{name="Linzy Blackbolt",zone="Alterac Mountains",map=1416,x=0.185,y=0.624,rank="Expert Alchemy Trainers (150-225)"},{name="Rogvar",zone="Swamp of Sorrows",map=1435,x=0.485,y=0.5579999999999999,rank="Artisan Alchemy Trainers (225-300)"},{name="Kylanna Windwhisper",zone="Feralas",map=1444,x=0.326,y=0.43799999999999994,rank="Artisan Alchemy Trainers (225-300)"}}}
P.catalog["Blacksmithing"]={routes={{low=1,high=40,name="Rough Sharpening Stone",crafts=53},{low=40,high=45,name="Coarse Sharpening Stone",crafts=6},{low=45,high=75,name="Rough Grinding Stone",crafts=54},{low=75,high=90,name="Silver Skeleton Key",crafts=27},{low=90,high=100,name="Runed Copper Belt",crafts=14},{low=100,high=113,name="Heavy Sharpening Stone",crafts=28},{low=113,high=115,name="Blackfathom Sharpening Stone",crafts=7},{low=115,high=125,name="Rough Bronze Bracers",crafts=12},{low=125,high=129,name="Iron Buckle",crafts=7},{low=129,high=142,name="Golden Skeleton Key",crafts=31},{low=142,high=150,name="Silvered Bronze Gauntlets",crafts=10},{low=150,high=155,name="Silvered Bronze Gauntlets",crafts=9},{low=155,high=165,name="Bronze Warhammer",crafts=12},{low=165,high=175,name="Green Iron Bracers",crafts=13},{low=175,high=183,name="Solid Sharpening Stone",crafts=15},{low=183,high=191,name="Truesilver Skeleton Key",crafts=21},{low=191,high=200,name="Golden Scale Bracers",crafts=16},{low=200,high=207,name="Heavy Mithril Gauntlet",crafts=9},{low=207,high=210,name="Mithril Plate Pants",crafts=4},{low=210,high=219,name="Steel Plate Helm",crafts=12},{low=219,high=225,name="Mithril Plate Gloves",crafts=10},{low=225,high=230,name="Orcish War Leggings",crafts=6},{low=230,high=235,name="Dense Sharpening Stone",crafts=12},{low=235,high=240,name="Heavy Mithril Boots",crafts=8},{low=240,high=257,name="Ornate Mithril Helm",crafts=36},{low=257,high=260,name="Phantom Blade",crafts=7},{low=260,high=278,name="Thorium Greatsword",crafts=31},{low=278,high=285,name="Inlaid Thorium Hammer",crafts=13},{low=285,high=300,name="Rune Edge",crafts=23}},trainers={{name="Ug'thok",zone="Orgrimmar",map=1454,x=0.807,y=0.23600000000000002,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Thrag Stonehoof",zone="Thunder Bluff",map=1456,x=0.392,y=0.564,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Basil Frye",zone="Undercity",map=1458,x=0.6,y=0.289,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Dwukk",zone="Durotar",map=1411,x=0.521,y=0.40700000000000003,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Gur'dok",zone="Riverglades",map=2548,x=0.6,y=0.46299999999999997,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Guillaume Sorouy",zone="Silverpine Forest",map=1421,x=0.43200000000000005,y=0.41,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Angus Hammerhand",zone="Tirisfal Glades",map=1420,x=0.21100000000000002,y=0.45799999999999996,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Aedi Thriceforged",zone="Zephras Isle",map=2521,x=0.449,y=0.44299999999999995,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Daeann Steelwind",zone="Zephras Isle",map=2521,x=0.654,y=0.8009999999999999,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Groum Stonebeard",zone="Ironforge",map=1455,x=0.521,y=0.419,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Dane Lindgren",zone="Stormwind City",map=1453,x=0.6409999999999999,y=0.371,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Alard Schmied",zone="Alterac Mountains",map=1416,x=0.19699999999999998,y=0.634,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Delfrum Flintbeard",zone="Darkshore",map=1439,x=0.382,y=0.41,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Tognus Flintfire",zone="Dun Morogh",map=1426,x=0.45299999999999996,y=0.52,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Smith Argus",zone="Elwynn Forest",map=1429,x=0.41700000000000004,y=0.6559999999999999,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Alphonse Dumas",zone="Riverglades",map=2548,x=0.645,y=0.82,rank="Apprentice Blacksmithing Trainers (1-75)"},{name="Snarl",zone="Orgrimmar",map=1454,x=0.797,y=0.23399999999999999,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Karn Stonehoof",zone="Thunder Bluff",map=1456,x=0.392,y=0.5539999999999999,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="James Van Brunt",zone="Undercity",map=1458,x=0.615,y=0.303,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Traugh",zone="The Barrens",map=1413,x=0.513,y=0.289,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Angus Hammerhand",zone="Tirisfal Glades",map=1420,x=0.21100000000000002,y=0.45799999999999996,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Daeann Steelwind",zone="Zephras Isle",map=2521,x=0.654,y=0.8009999999999999,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Rotgath Stonebeard",zone="Ironforge",map=1455,x=0.519,y=0.424,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Therum Deepforge",zone="Stormwind City",map=1453,x=0.636,y=0.368,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Alard Schmied",zone="Alterac Mountains",map=1416,x=0.19699999999999998,y=0.634,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Clarise Gnarltree",zone="Duskwood",map=1431,x=0.74,y=0.485,rank="Journeyman Blacksmithing Trainers (75-150)"},{name="Saru Steelfury",zone="Orgrimmar",map=1454,x=0.8220000000000001,y=0.23,rank="Expert Blacksmithing Trainers (150-225)"},{name="Bengus Deepforge",zone="Ironforge",map=1455,x=0.524,y=0.41200000000000003,rank="Expert Blacksmithing Trainers (150-225)"},{name="Alard Schmied",zone="Alterac Mountains",map=1416,x=0.19699999999999998,y=0.634,rank="Expert Blacksmithing Trainers (150-225)"},{name="Brikk Keencraft",zone="Stranglethorn Vale",map=1434,x=0.29,y=0.755,rank="Artisan Blacksmithing Trainers (225-300)"},{name="Grumnus Steelshaper",zone="Ironforge",map=1455,x=0.502,y=0.42700000000000005,rank="Armorsmithing"},{name="Okothos Ironrager",zone="Orgrimmar",map=1454,x=0.799,y=0.23600000000000002,rank="Armorsmithing"},{name="Ironus Coldsteel",zone="Ironforge",map=1455,x=0.509,y=0.43200000000000005,rank="Weaponsmithing"},{name="Borgosh Corebender",zone="Orgrimmar",map=1454,x=0.797,y=0.23399999999999999,rank="Weaponsmithing"}}}
P.catalog["Enchanting"]={routes={{low=1,high=24,name="Enchant Bracer - Inferior Stamina",crafts=26},{low=24,high=70,name="Enchant Bracer - Minor Deflect",crafts=46},{low=70,high=75,name="Enchant Chest - Inferior Stamina",crafts=6},{low=75,high=100,name="Enchant Chest - Inferior Stamina",crafts=49},{low=100,high=130,name="Enchant Bracer - Minor Stamina",crafts=54},{low=130,high=145,name="Enchant Shield - Minor Stamina",crafts=19},{low=145,high=150,name="Enchant Chest - Stamina",crafts=6},{low=150,high=155,name="Enchant Cloak - Lesser Fire Resistance",crafts=6},{low=155,high=180,name="Enchant Bracer - Lesser Stamina",crafts=39},{low=180,high=200,name="Enchant Boots - Lesser Agility",crafts=28},{low=200,high=225,name="Enchant Bracer - Strength",crafts=39},{low=225,high=232,name="Enchant Cloak - Greater Defense",crafts=8},{low=232,high=261,name="Enchant Gloves - Agility",crafts=56},{low=261,high=289,name="Enchant Boots - Agility",crafts=67},{low=289,high=300,name="Enchant Gloves - Minor Haste",crafts=29}},trainers={{name="Jhag",zone="Orgrimmar",map=1454,x=0.535,y=0.384,rank="Apprentice Enchanting Trainers (1-75)"},{name="Mot Dawnstrider",zone="Thunder Bluff",map=1456,x=0.449,y=0.39,rank="Apprentice Enchanting Trainers (1-75)"},{name="Malcomb Wynn",zone="Undercity",map=1458,x=0.624,y=0.608,rank="Apprentice Enchanting Trainers (1-75)"},{name="Pa'zula",zone="Durotar",map=1411,x=0.5670000000000001,y=0.737,rank="Apprentice Enchanting Trainers (1-75)"},{name="Vance Undergloom",zone="Tirisfal Glades",map=1420,x=0.618,y=0.516,rank="Apprentice Enchanting Trainers (1-75)"},{name="Eaysaa Brightgust",zone="Zephras Isle",map=2521,x=0.5920000000000001,y=0.763,rank="Apprentice Enchanting Trainers (1-75)"},{name="Nasalanna Windsinger",zone="Zephras Isle",map=2521,x=0.43200000000000005,y=0.43200000000000005,rank="Apprentice Enchanting Trainers (1-75)"},{name="Lalina Summermoon",zone="Darnassus",map=1457,x=0.589,y=0.128,rank="Apprentice Enchanting Trainers (1-75)"},{name="Thonys Pillarstone",zone="Ironforge",map=1455,x=0.604,y=0.449,rank="Apprentice Enchanting Trainers (1-75)"},{name="Betty Quin",zone="Stormwind City",map=1453,x=0.531,y=0.738,rank="Apprentice Enchanting Trainers (1-75)"},{name="Vanessa Sellers",zone="Alterac Mountains",map=1416,x=0.168,y=0.622,rank="Apprentice Enchanting Trainers (1-75)"},{name="Alanna Raveneye",zone="Teldrassil",map=1438,x=0.368,y=0.342,rank="Apprentice Enchanting Trainers (1-75)"},{name="Godan",zone="Orgrimmar",map=1454,x=0.5379999999999999,y=0.385,rank="Journeyman Enchanting Trainers (75-150)"},{name="Teg Dawnstrider",zone="Thunder Bluff",map=1456,x=0.449,y=0.377,rank="Journeyman Enchanting Trainers (75-150)"},{name="Lavinia Crowe",zone="Undercity",map=1458,x=0.624,y=0.616,rank="Journeyman Enchanting Trainers (75-150)"},{name="Taladan",zone="Darnassus",map=1457,x=0.586,y=0.132,rank="Journeyman Enchanting Trainers (75-150)"},{name="Gimble Thistlefuzz",zone="Ironforge",map=1455,x=0.598,y=0.455,rank="Journeyman Enchanting Trainers (75-150)"},{name="Lucan Cordell",zone="Stormwind City",map=1453,x=0.531,y=0.743,rank="Journeyman Enchanting Trainers (75-150)"},{name="Vanessa Sellers",zone="Alterac Mountains",map=1416,x=0.168,y=0.622,rank="Journeyman Enchanting Trainers (75-150)"},{name="Xylinnia Starshine",zone="Feralas",map=1444,x=0.315,y=0.442,rank="Journeyman Enchanting Trainers (75-150)"},{name="Hgarth",zone="Stonetalon Mountains",map=1442,x=0.49200000000000005,y=0.5710000000000001,rank="Expert Enchanting Trainers (150-225)"},{name="Vanessa Sellers",zone="Alterac Mountains",map=1416,x=0.168,y=0.622,rank="Expert Enchanting Trainers (150-225)"},{name="Kitta Firewind",zone="Elwynn Forest",map=1429,x=0.649,y=0.706,rank="Expert Enchanting Trainers (150-225)"}}}
P.catalog["Tailoring"]={routes={{low=1,high=39,name="Brown Linen Shirt",crafts=39},{low=39,high=45,name="Simple Linen Pants",crafts=7},{low=45,high=50,name="Brown Linen Vest",crafts=6},{low=50,high=75,name="Linen Belt",crafts=43},{low=75,high=78,name="Linen Belt",crafts=12},{low=78,high=80,name="Simple Kilt",crafts=3},{low=80,high=110,name="Woolen Cape",crafts=66},{low=110,high=128,name="Double-stitched Woolen Shoulders",crafts=25},{low=128,high=130,name="Gloves of Meditation",crafts=3},{low=130,high=135,name="Azure Silk Hood",crafts=7},{low=135,high=140,name="Silk Headband",crafts=7},{low=140,high=145,name="Lesser Wizard's Robe",crafts=9},{low=145,high=150,name="Formal White Shirt",crafts=7},{low=150,high=155,name="Red Swashbuckler's Shirt",crafts=7},{low=155,high=166,name="Earthen Vest",crafts=14},{low=166,high=170,name="Green Silken Shoulders",crafts=5},{low=170,high=180,name="Crimson Silk Vest",crafts=14},{low=180,high=185,name="Crimson Silk Pantaloons",crafts=6},{low=185,high=192,name="Orange Mageweave Shirt",crafts=11},{low=192,high=195,name="Black Mageweave Leggings",crafts=5},{low=195,high=211,name="Black Mageweave Gloves",crafts=23},{low=211,high=220,name="Black Mageweave Headband",crafts=14},{low=220,high=225,name="Black Mageweave Leggings",crafts=6},{low=225,high=245,name="Black Mageweave Leggings",crafts=46},{low=245,high=251,name="Runecloth Belt",crafts=26},{low=251,high=285,name="Mooncloth",crafts=40},{low=285,high=300,name="Mooncloth Boots",crafts=21}},trainers={{name="Snang",zone="Orgrimmar",map=1454,x=0.629,y=0.494,rank="Apprentice Tailoring Trainers (1-75)"},{name="Vhan",zone="Thunder Bluff",map=1456,x=0.44,y=0.446,rank="Apprentice Tailoring Trainers (1-75)"},{name="Victor Ward",zone="Undercity",map=1458,x=0.7020000000000001,y=0.297,rank="Apprentice Tailoring Trainers (1-75)"},{name="Kil'hala",zone="The Barrens",map=1413,x=0.522,y=0.317,rank="Apprentice Tailoring Trainers (1-75)"},{name="Bowen Brisboise",zone="Tirisfal Glades",map=1420,x=0.526,y=0.556,rank="Apprentice Tailoring Trainers (1-75)"},{name="Othesia Evengale",zone="Zephras Isle",map=2521,x=0.643,y=0.8109999999999999,rank="Apprentice Tailoring Trainers (1-75)"},{name="Taleen Shimmerthread",zone="Zephras Isle",map=2521,x=0.449,y=0.442,rank="Apprentice Tailoring Trainers (1-75)"},{name="Trianna",zone="Darnassus",map=1457,x=0.636,y=0.213,rank="Apprentice Tailoring Trainers (1-75)"},{name="Uthrar Threx",zone="Ironforge",map=1455,x=0.43700000000000006,y=0.282,rank="Apprentice Tailoring Trainers (1-75)"},{name="Lawrence Schneider",zone="Stormwind City",map=1453,x=0.535,y=0.8170000000000001,rank="Apprentice Tailoring Trainers (1-75)"},{name="Charles Worth",zone="Alterac Mountains",map=1416,x=0.177,y=0.602,rank="Apprentice Tailoring Trainers (1-75)"},{name="Grondal Moonbreeze",zone="Darkshore",map=1439,x=0.382,y=0.405,rank="Apprentice Tailoring Trainers (1-75)"},{name="Eldrin",zone="Elwynn Forest",map=1429,x=0.7929999999999999,y=0.69,rank="Apprentice Tailoring Trainers (1-75)"},{name="Magar",zone="Orgrimmar",map=1454,x=0.635,y=0.5,rank="Journeyman Tailoring Trainers (75-150)"},{name="Tepa",zone="Thunder Bluff",map=1456,x=0.444,y=0.451,rank="Journeyman Tailoring Trainers (75-150)"},{name="Rhiannon Davis",zone="Undercity",map=1458,x=0.701,y=0.301,rank="Journeyman Tailoring Trainers (75-150)"},{name="Grarnik Goodstitch",zone="Stranglethorn Vale",map=1434,x=0.287,y=0.768,rank="Journeyman Tailoring Trainers (75-150)"},{name="Mahani",zone="The Barrens",map=1413,x=0.449,y=0.594,rank="Journeyman Tailoring Trainers (75-150)"},{name="Othesia Evengale",zone="Zephras Isle",map=2521,x=0.643,y=0.8109999999999999,rank="Journeyman Tailoring Trainers (75-150)"},{name="Taleen Shimmerthread",zone="Zephras Isle",map=2521,x=0.449,y=0.442,rank="Journeyman Tailoring Trainers (75-150)"},{name="Me'lynn",zone="Darnassus",map=1457,x=0.632,y=0.223,rank="Journeyman Tailoring Trainers (75-150)"},{name="Jormund Stonebrow",zone="Ironforge",map=1455,x=0.433,y=0.289,rank="Journeyman Tailoring Trainers (75-150)"},{name="Sellandus",zone="Stormwind City",map=1453,x=0.523,y=0.8340000000000001,rank="Journeyman Tailoring Trainers (75-150)"},{name="Charles Worth",zone="Alterac Mountains",map=1416,x=0.177,y=0.602,rank="Journeyman Tailoring Trainers (75-150)"},{name="Josef Gregorian",zone="Undercity",map=1458,x=0.706,y=0.304,rank="Expert Tailoring Trainers (150-225)"},{name="Georgio Bolero",zone="Stormwind City",map=1453,x=0.5329999999999999,y=0.815,rank="Expert Tailoring Trainers (150-225)"},{name="Charles Worth",zone="Alterac Mountains",map=1416,x=0.177,y=0.602,rank="Expert Tailoring Trainers (150-225)"},{name="Daryl Stack",zone="Hillsbrad Foothills",map=1424,x=0.637,y=0.20800000000000002,rank="Artisan Tailoring Trainers (225-300)"},{name="Timothy Worthington",zone="Dustwallow Marsh",map=1445,x=0.662,y=0.518,rank="Artisan Tailoring Trainers (225-300)"}}}
P.catalog["Leatherworking"]={routes={{low=1,high=50,name="Light Armor Kit",crafts=61},{low=50,high=67,name="Cured Light Hide",crafts=36},{low=67,high=70,name="Small Leather Ammo Pouch",crafts=6},{low=70,high=75,name="Embossed Leather Gloves",crafts=6},{low=75,high=88,name="Embossed Leather Gloves",crafts=22},{low=88,high=90,name="Fine Leather Belt",crafts=3},{low=90,high=102,name="Cured Medium Hide",crafts=23},{low=102,high=117,name="Gray Leather Boots",crafts=26},{low=117,high=120,name="Dark Leather Cloak",crafts=5},{low=120,high=125,name="Nimble Leather Gloves",crafts=6},{low=125,high=135,name="Dark Leather Belt",crafts=13},{low=135,high=144,name="Cured Heavy Hide",crafts=20},{low=144,high=145,name="Hillman's Shoulders",crafts=3},{low=145,high=150,name="Heavy Armor Kit",crafts=6},{low=150,high=155,name="Heavy Armor Kit",crafts=8},{low=155,high=170,name="Green Leather Belt",crafts=27},{low=170,high=175,name="Barbaric Shoulders",crafts=6},{low=175,high=178,name="Thick Leather",crafts=4},{low=178,high=185,name="Green Leather Bracers",crafts=11},{low=185,high=195,name="Guardian Gloves",crafts=14},{low=195,high=200,name="Thick Armor Kit",crafts=6},{low=200,high=217,name="Nightscape Headband",crafts=36},{low=217,high=220,name="Turtle Scale Breastplate",crafts=9},{low=220,high=225,name="Thick Leather Ammo Pouch",crafts=6},{low=225,high=233,name="Cured Rugged Hide",crafts=15},{low=233,high=242,name="Rugged Armor Kit",crafts=26},{low=242,high=245,name="Nightscape Boots",crafts=9},{low=245,high=262,name="Helm of Fire",crafts=36},{low=262,high=282,name="Charged Scorpid Bracers",crafts=22},{low=282,high=294,name="Masterwork Volcanic Leggings",crafts=13},{low=294,high=300,name="Blue Suede Bracers",crafts=7}},trainers={{name="Kamari",zone="Orgrimmar",map=1454,x=0.632,y=0.446,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Mak",zone="Thunder Bluff",map=1456,x=0.42200000000000004,y=0.431,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Dan Golthas",zone="Undercity",map=1458,x=0.708,y=0.586,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Chaw Stronghide",zone="Mulgore",map=1412,x=0.45,y=0.615,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Waldor",zone="The Barrens",map=1413,x=0.46,y=0.359,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Shelene Rhobart",zone="Tirisfal Glades",map=1420,x=0.654,y=0.601,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Emerii Tallgust",zone="Zephras Isle",map=2521,x=0.638,y=0.8059999999999999,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Indari Sunseam",zone="Zephras Isle",map=2521,x=0.447,y=0.445,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Darianna",zone="Darnassus",map=1457,x=0.645,y=0.21,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Gretta Finespindle",zone="Ironforge",map=1455,x=0.39,y=0.327,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Randal Worth",zone="Stormwind City",map=1453,x=0.722,y=0.628,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Adele Fielder",zone="Elwynn Forest",map=1429,x=0.46399999999999997,y=0.621,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Nadyia Maneweaver",zone="Teldrassil",map=1438,x=0.418,y=0.494,rank="Apprentice Leatherworking Trainers (1-75)"},{name="Karolek",zone="Orgrimmar",map=1454,x=0.627,y=0.444,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Tarn",zone="Thunder Bluff",map=1456,x=0.425,y=0.429,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Arthur Moore",zone="Undercity",map=1458,x=0.7020000000000001,y=0.5760000000000001,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Brawn",zone="Stranglethorn Vale",map=1434,x=0.318,y=0.289,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Krulmoo Fullmoon",zone="The Barrens",map=1413,x=0.44799999999999995,y=0.594,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Emerii Tallgust",zone="Zephras Isle",map=2521,x=0.638,y=0.8059999999999999,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Faldron",zone="Darnassus",map=1457,x=0.649,y=0.21600000000000003,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Fimble Finespindle",zone="Ironforge",map=1455,x=0.402,y=0.337,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Simon Tanner",zone="Stormwind City",map=1453,x=0.7170000000000001,y=0.629,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Aayndia Floralwind",zone="Ashenvale",map=1440,x=0.36,y=0.521,rank="Journeyman Leatherworking Trainers (75-150)"},{name="Una",zone="Thunder Bluff",map=1456,x=0.41700000000000004,y=0.42700000000000005,rank="Expert Leatherworking Trainers (150-225)"},{name="Telonis",zone="Darnassus",map=1457,x=0.644,y=0.215,rank="Expert Leatherworking Trainers (150-225)"},{name="Hahrana Ironhide",zone="Feralas",map=1444,x=0.7440000000000001,y=0.431,rank="Artisan Leatherworking Trainers (225-300)"},{name="Drakk Stonehand",zone="The Hinterlands",map=1425,x=0.134,y=0.433,rank="Artisan Leatherworking Trainers (225-300)"},{name="Peter Galen",zone="Azshara",map=1447,x=0.376,y=0.655,rank="Dragonscale Leatherworking"},{name="Thorkaf Dragoneye",zone="Badlands",map=1418,x=0.626,y=0.575,rank="Dragonscale Leatherworking"},{name="Brumn Winterhoof",zone="Arathi Highlands",map=1417,x=0.282,y=0.449,rank="Elemental Leatherworking"},{name="Sarah Tanner",zone="Searing Gorge",map=1427,x=0.636,y=0.759,rank="Elemental Leatherworking"},{name="Caryssia Moonhunter",zone="Feralas",map=1444,x=0.894,y=0.465,rank="Tribal Leatherworking"},{name="Se'Jib",zone="Stranglethorn Vale",map=1434,x=0.365,y=0.341,rank="Tribal Leatherworking"}}}
P.catalog["Cooking"]={routes={{low=1,high=5,name="Basic Campfire",crafts=9},{low=5,high=72,name="Charred Wolf Meat",crafts=84},{low=72,high=75,name="Spiced Wolf Meat",crafts=8},{low=75,high=80,name="Spiced Wolf Meat",crafts=16},{low=80,high=85,name="Critter Cookie",crafts=12},{low=85,high=90,name="Smoked Bear Meat",crafts=7},{low=90,high=115,name="Coyote Steak",crafts=39},{low=115,high=130,name="Crab Cake",crafts=19},{low=130,high=150,name="Dry Pork Ribs",crafts=43},{low=150,high=154,name="Dry Pork Ribs",crafts=20},{low=154,high=160,name="Dig Rat Stew",crafts=19},{low=160,high=165,name="Lean Wolf Steak",crafts=5},{low=165,high=199,name="Goblin Deviled Clams",crafts=74},{low=199,high=210,name="Plain Ol' Paletusk",crafts=13},{low=210,high=215,name="Spinefin Halibut",crafts=7},{low=215,high=225,name="Goldthorn Tea",crafts=12},{low=225,high=240,name="Goldthorn Tea",crafts=28},{low=240,high=274,name="Spider Sausage",crafts=74},{low=274,high=275,name="Poached Sunscale Salmon",crafts=1},{low=275,high=289,name="Bat Hachee",crafts=16},{low=289,high=300,name="Poached Sunscale Salmon",crafts=13}},trainers={{name="Zamja",zone="Orgrimmar",map=1454,x=0.575,y=0.539,rank="Cooking Trainers (1-150)"},{name="Aska Mistrunner",zone="Thunder Bluff",map=1456,x=0.509,y=0.531,rank="Cooking Trainers (1-150)"},{name="Eunice Burch",zone="Undercity",map=1458,x=0.623,y=0.447,rank="Cooking Trainers (1-150)"},{name="Cook Torka",zone="Durotar",map=1411,x=0.511,y=0.425,rank="Cooking Trainers (1-150)"},{name="Pyall Silentstride",zone="Mulgore",map=1412,x=0.45,y=0.617,rank="Cooking Trainers (1-150)"},{name="Gorg",zone="Riverglades",map=2548,x=0.5870000000000001,y=0.446,rank="Cooking Trainers (1-150)"},{name="Mudduk",zone="Stranglethorn Vale",map=1434,x=0.314,y=0.28,rank="Cooking Trainers (1-150)"},{name="Duhng",zone="The Barrens",map=1413,x=0.5529999999999999,y=0.318,rank="Cooking Trainers (1-150)"},{name="William Pickman",zone="Tirisfal Glades",map=1420,x=0.618,y=0.515,rank="Cooking Trainers (1-150)"},{name="Nyalah Brightfire",zone="Zephras Isle",map=2521,x=0.606,y=0.727,rank="Cooking Trainers (1-150)"},{name="Zerril Softbreeze",zone="Zephras Isle",map=2521,x=0.43799999999999994,y=0.439,rank="Cooking Trainers (1-150)"},{name="Alegorn",zone="Darnassus",map=1457,x=0.489,y=0.212,rank="Cooking Trainers (1-150)"},{name="Daryl Riknussun",zone="Ironforge",map=1455,x=0.6,y=0.36700000000000005,rank="Cooking Trainers (1-150)"},{name="Stephen Ryback",zone="Stormwind City",map=1453,x=0.782,y=0.532,rank="Cooking Trainers (1-150)"},{name="Katherine Lee",zone="Alterac Mountains",map=1416,x=0.126,y=0.6579999999999999,rank="Cooking Trainers (1-150)"},{name="Cook Ghilm",zone="Dun Morogh",map=1426,x=0.685,y=0.545,rank="Cooking Trainers (1-150)"},{name="Gremlock Pilsnor",zone="Dun Morogh",map=1426,x=0.47600000000000003,y=0.523,rank="Cooking Trainers (1-150)"},{name="Tomas",zone="Elwynn Forest",map=1429,x=0.44299999999999995,y=0.66,rank="Cooking Trainers (1-150)"},{name="Crystal Boughman",zone="Redridge Mountains",map=1433,x=0.177,y=0.43700000000000006,rank="Cooking Trainers (1-150)"},{name="Zarrin",zone="Teldrassil",map=1438,x=0.5710000000000001,y=0.613,rank="Cooking Trainers (1-150)"},{name="Wulan",zone="Desolace",map=1443,x=0.261,y=0.6970000000000001,rank="Expert Cooking (150-225)"},{name="Shandrina",zone="Ashenvale",map=1440,x=0.495,y=0.6709999999999999,rank="Expert Cooking (150-225)"}}}
P.catalog["First Aid"]={routes={{low=1,high=50,name="Linen Bandage",crafts=61},{low=50,high=55,name="Heavy Linen Bandage",crafts=6},{low=55,high=75,name="Minor Healing Potion",crafts=28},{low=75,high=80,name="Minor Healing Potion",crafts=12},{low=80,high=135,name="Anti-Venom",crafts=107},{low=135,high=150,name="Healing Potion",crafts=19},{low=150,high=201,name="Silk Bandage",crafts=112},{low=201,high=210,name="Leather Tourniquet",crafts=9},{low=210,high=215,name="Mageweave Bandage",crafts=6},{low=215,high=225,name="Potent Anti-Venom",crafts=10},{low=225,high=240,name="Potent Anti-Venom",crafts=16},{low=240,high=260,name="Heavy Mageweave Bandage",crafts=25},{low=260,high=297,name="Runecloth Bandage",crafts=57},{low=297,high=300,name="Heavy Runecloth Bandage",crafts=4}},trainers={{name="Arnok",zone="Orgrimmar",map=1454,x=0.342,y=0.845,rank="First Aid Trainers (1-150)"},{name="Pand Stonebinder",zone="Thunder Bluff",map=1456,x=0.29600000000000004,y=0.21100000000000002,rank="First Aid Trainers (1-150)"},{name="Mary Edras",zone="Undercity",map=1458,x=0.7340000000000001,y=0.557,rank="First Aid Trainers (1-150)"},{name="Rawrk",zone="Durotar",map=1411,x=0.542,y=0.42,rank="First Aid Trainers (1-150)"},{name="Vira Younghoof",zone="Mulgore",map=1412,x=0.461,y=0.639,rank="First Aid Trainers (1-150)"},{name="Nurse Neela",zone="Tirisfal Glades",map=1420,x=0.618,y=0.528,rank="First Aid Trainers (1-150)"},{name="Melasa Fairmend",zone="Zephras Isle",map=2521,x=0.631,y=0.726,rank="First Aid Trainers (1-150)"},{name="Naleeia Tattermend",zone="Zephras Isle",map=2521,x=0.431,y=0.46299999999999997,rank="First Aid Trainers (1-150)"},{name="Dannelor",zone="Darnassus",map=1457,x=0.517,y=0.125,rank="First Aid Trainers (1-150)"},{name="Nissa Firestone",zone="Ironforge",map=1455,x=0.5489999999999999,y=0.585,rank="First Aid Trainers (1-150)"},{name="Shaina Fuller",zone="Stormwind City",map=1453,x=0.53,y=0.447,rank="First Aid Trainers (1-150)"},{name="Angelique Butler",zone="Alterac Mountains",map=1416,x=0.172,y=0.611,rank="First Aid Trainers (1-150)"},{name="Thamner Pol",zone="Dun Morogh",map=1426,x=0.47200000000000003,y=0.525,rank="First Aid Trainers (1-150)"},{name="Michelle Belle",zone="Elwynn Forest",map=1429,x=0.434,y=0.6559999999999999,rank="First Aid Trainers (1-150)"},{name="Byancie",zone="Teldrassil",map=1438,x=0.5529999999999999,y=0.568,rank="First Aid Trainers (1-150)"},{name="Fremal Doohickey",zone="Wetlands",map=1437,x=0.10800000000000001,y=0.613,rank="First Aid Trainers (1-150)"},{name="Balai Lok'Wein",zone="Dustwallow Marsh",map=1445,x=0.365,y=0.304,rank="Expert First Aid (150-225)"},{name="Deneb Walker",zone="Arathi Highlands",map=1417,x=0.271,y=0.588,rank="Expert First Aid (150-225)"},{name="Doctor Gregory Victor",zone="Arathi Highlands",map=1417,x=0.7340000000000001,y=0.368,rank="Artisan First Aid (225-300)"},{name="Doctor Gustaf VanHowzen",zone="Dustwallow Marsh",map=1445,x=0.6779999999999999,y=0.49,rank="Artisan First Aid (225-300)"}}}
P.catalog["Mining"]={routes={},trainers={{name="Norzsh",zone="Durotar",map=1411,x=0.405,y=0.6809999999999999,rank="Junior Mining Trainers (1-75)"},{name="Vartha Rockmane",zone="Mulgore",map=1412,x=0.44299999999999995,y=0.784,rank="Junior Mining Trainers (1-75)"},{name="Walter Mason",zone="Tirisfal Glades",map=1420,x=0.32299999999999995,y=0.657,rank="Junior Mining Trainers (1-75)"},{name="Sally Swiftwrench",zone="Dun Morogh",map=1426,x=0.28800000000000003,y=0.6779999999999999,rank="Junior Mining Trainers (1-75)"},{name="Kelsey Fargo",zone="Elwynn Forest",map=1429,x=0.47200000000000003,y=0.322,rank="Junior Mining Trainers (1-75)"},{name="Fanorran Stilloak",zone="Teldrassil",map=1438,x=0.5820000000000001,y=0.415,rank="Junior Mining Trainers (1-75)"},{name="Makaru",zone="Orgrimmar",map=1454,x=0.731,y=0.264,rank="Mining Trainers (1-300)"},{name="Brek Stonehoof",zone="Thunder Bluff",map=1456,x=0.34600000000000003,y=0.5760000000000001,rank="Mining Trainers (1-300)"},{name="Brom Killian",zone="Undercity",map=1458,x=0.56,y=0.371,rank="Mining Trainers (1-300)"},{name="Krunn",zone="Durotar",map=1411,x=0.519,y=0.41,rank="Mining Trainers (1-300)"},{name="Grungle",zone="Riverglades",map=2548,x=0.778,y=0.52,rank="Mining Trainers (1-300)"},{name="Johan Focht",zone="Silverpine Forest",map=1421,x=0.434,y=0.405,rank="Mining Trainers (1-300)"},{name="Pikkle",zone="Tanaris",map=1446,x=0.511,y=0.281,rank="Mining Trainers (1-300)"},{name="Halavuul Cragwind",zone="Zephras Isle",map=2521,x=0.654,y=0.804,rank="Mining Trainers (1-300)"},{name="Messana Crestwind",zone="Zephras Isle",map=2521,x=0.44799999999999995,y=0.445,rank="Mining Trainers (1-300)"},{name="Geofram Bouldertoe",zone="Ironforge",map=1455,x=0.502,y=0.261,rank="Mining Trainers (1-300)"},{name="Gelman Stonehand",zone="Stormwind City",map=1453,x=0.5920000000000001,y=0.37799999999999995,rank="Mining Trainers (1-300)"},{name="Kurdram Stonehammer",zone="Darkshore",map=1439,x=0.382,y=0.41,rank="Mining Trainers (1-300)"},{name="Dank Drizzlecut",zone="Dun Morogh",map=1426,x=0.693,y=0.5529999999999999,rank="Mining Trainers (1-300)"},{name="Yarr Hammerstone",zone="Dun Morogh",map=1426,x=0.5,y=0.503,rank="Mining Trainers (1-300)"},{name="Matt Johnson",zone="Duskwood",map=1431,x=0.742,y=0.496,rank="Mining Trainers (1-300)"},{name="Brock Stoneseeker",zone="Loch Modan",map=1432,x=0.37200000000000005,y=0.478,rank="Mining Trainers (1-300)"}}}
P.catalog["Herbalism"]={routes={},trainers={{name="Zor'la",zone="Durotar",map=1411,x=0.426,y=0.674,rank="Junior Herbalism Trainers (1-75)"},{name="Garan Sunstrider",zone="Mulgore",map=1412,x=0.442,y=0.78,rank="Junior Herbalism Trainers (1-75)"},{name="Florence Nightshade",zone="Tirisfal Glades",map=1420,x=0.324,y=0.652,rank="Junior Herbalism Trainers (1-75)"},{name="Emrys Flintbeard",zone="Dun Morogh",map=1426,x=0.28800000000000003,y=0.664,rank="Junior Herbalism Trainers (1-75)"},{name="Nancy Songflower",zone="Elwynn Forest",map=1429,x=0.522,y=0.434,rank="Junior Herbalism Trainers (1-75)"},{name="Eleyna Duskbreeze",zone="Teldrassil",map=1438,x=0.598,y=0.414,rank="Junior Herbalism Trainers (1-75)"},{name="Jandi",zone="Orgrimmar",map=1454,x=0.555,y=0.396,rank="Herbalism Trainers (1-300)"},{name="Komin Winterhoof",zone="Thunder Bluff",map=1456,x=0.5,y=0.39899999999999997,rank="Herbalism Trainers (1-300)"},{name="Martha Alliestar",zone="Undercity",map=1458,x=0.5429999999999999,y=0.496,rank="Herbalism Trainers (1-300)"},{name="Mishiki",zone="Durotar",map=1411,x=0.555,y=0.7509999999999999,rank="Herbalism Trainers (1-300)"},{name="Ruw",zone="Feralas",map=1444,x=0.76,y=0.433,rank="Herbalism Trainers (1-300)"},{name="Aranae Venomblood",zone="Hillsbrad Foothills",map=1424,x=0.617,y=0.196,rank="Herbalism Trainers (1-300)"},{name="Malvor",zone="Moonglade",map=1450,x=0.456,y=0.47,rank="Herbalism Trainers (1-300)"},{name="Angrun",zone="Stranglethorn Vale",map=1434,x=0.322,y=0.275,rank="Herbalism Trainers (1-300)"},{name="Flora Silverwind",zone="Stranglethorn Vale",map=1434,x=0.27699999999999997,y=0.778,rank="Herbalism Trainers (1-300)"},{name="Faruza",zone="Tirisfal Glades",map=1420,x=0.599,y=0.521,rank="Herbalism Trainers (1-300)"},{name="Halassa Fernbreeze",zone="Zephras Isle",map=2521,x=0.43,y=0.435,rank="Herbalism Trainers (1-300)"},{name="Syriel Nightrain",zone="Zephras Isle",map=2521,x=0.579,y=0.755,rank="Herbalism Trainers (1-300)"},{name="Firodren Mooncaller",zone="Darnassus",map=1457,x=0.479,y=0.6859999999999999,rank="Herbalism Trainers (1-300)"},{name="Reyna Stonebranch",zone="Ironforge",map=1455,x=0.557,y=0.59,rank="Herbalism Trainers (1-300)"},{name="Shylamiir",zone="Stormwind City",map=1453,x=0.314,y=0.63,rank="Herbalism Trainers (1-300)"},{name="Tannysa",zone="Stormwind City",map=1453,x=0.544,y=0.8420000000000001,rank="Herbalism Trainers (1-300)"},{name="Cylania Rootstalker",zone="Ashenvale",map=1440,x=0.506,y=0.672,rank="Herbalism Trainers (1-300)"},{name="Brant Jasperbloom",zone="Dustwallow Marsh",map=1445,x=0.64,y=0.47600000000000003,rank="Herbalism Trainers (1-300)"},{name="Herbalist Pomeroy",zone="Elwynn Forest",map=1429,x=0.39899999999999997,y=0.484,rank="Herbalism Trainers (1-300)"},{name="Kali Healtouch",zone="Loch Modan",map=1432,x=0.365,y=0.483,rank="Herbalism Trainers (1-300)"},{name="Alma Jainrose",zone="Redridge Mountains",map=1433,x=0.16699999999999998,y=0.457,rank="Herbalism Trainers (1-300)"},{name="Malorne Bladeleaf",zone="Teldrassil",map=1438,x=0.5770000000000001,y=0.606,rank="Herbalism Trainers (1-300)"},{name="Telurinon Moonshadow",zone="Wetlands",map=1437,x=0.081,y=0.56,rank="Herbalism Trainers (1-300)"}}}
P.catalog["Skinning"]={routes={},trainers={{name="Kagil",zone="Durotar",map=1411,x=0.408,y=0.679,rank="Junior Skinning Trainers (1-75)"},{name="Nawka Wildsong",zone="Mulgore",map=1412,x=0.444,y=0.768,rank="Junior Skinning Trainers (1-75)"},{name="Margaret Weaver",zone="Tirisfal Glades",map=1420,x=0.326,y=0.6579999999999999,rank="Junior Skinning Trainers (1-75)"},{name="Brighid Stormflayer",zone="Dun Morogh",map=1426,x=0.292,y=0.6759999999999999,rank="Junior Skinning Trainers (1-75)"},{name="Riley Peltskinner",zone="Elwynn Forest",map=1429,x=0.47,y=0.4,rank="Junior Skinning Trainers (1-75)"},{name="Terunne Bearshaper",zone="Teldrassil",map=1438,x=0.594,y=0.387,rank="Junior Skinning Trainers (1-75)"},{name="Thuwd",zone="Orgrimmar",map=1454,x=0.632,y=0.45399999999999996,rank="Skinning Trainers (1-300)"},{name="Mooranta",zone="Thunder Bluff",map=1456,x=0.446,y=0.429,rank="Skinning Trainers (1-300)"},{name="Killian Hagey",zone="Undercity",map=1458,x=0.7020000000000001,y=0.591,rank="Skinning Trainers (1-300)"},{name="Malux",zone="Desolace",map=1443,x=0.233,y=0.6970000000000001,rank="Skinning Trainers (1-300)"},{name="Kulleg Stonehorn",zone="Feralas",map=1444,x=0.745,y=0.43,rank="Skinning Trainers (1-300)"},{name="Yonn Deepcut",zone="Mulgore",map=1412,x=0.45,y=0.614,rank="Skinning Trainers (1-300)"},{name="Dranh",zone="The Barrens",map=1413,x=0.45,y=0.59,rank="Skinning Trainers (1-300)"},{name="Rand Rhobart",zone="Tirisfal Glades",map=1420,x=0.655,y=0.6,rank="Skinning Trainers (1-300)"},{name="Ishlee Breezewhisper",zone="Zephras Isle",map=2521,x=0.596,y=0.76,rank="Skinning Trainers (1-300)"},{name="Mendalass Tattermend",zone="Zephras Isle",map=2521,x=0.433,y=0.434,rank="Skinning Trainers (1-300)"},{name="Eladriel",zone="Darnassus",map=1457,x=0.642,y=0.221,rank="Skinning Trainers (1-300)"},{name="Balthus Stoneflayer",zone="Ironforge",map=1455,x=0.397,y=0.32299999999999995,rank="Skinning Trainers (1-300)"},{name="Maris Granger",zone="Stormwind City",map=1453,x=0.722,y=0.625,rank="Skinning Trainers (1-300)"},{name="Jayla",zone="Ashenvale",map=1440,x=0.499,y=0.672,rank="Skinning Trainers (1-300)"},{name="Helene Peltskinner",zone="Elwynn Forest",map=1429,x=0.46299999999999997,y=0.623,rank="Skinning Trainers (1-300)"},{name="Wilma Ranthal",zone="Redridge Mountains",map=1433,x=0.836,y=0.7120000000000001,rank="Skinning Trainers (1-300)"},{name="Radnaal Maneweaver",zone="Teldrassil",map=1438,x=0.42,y=0.5,rank="Skinning Trainers (1-300)"}}}
P.catalog["Fishing"]={routes={},trainers={{name="Lumak",zone="Orgrimmar",map=1454,x=0.698,y=0.292,rank="Fishing Trainers (1-150)"},{name="Kah Mistrunner",zone="Thunder Bluff",map=1456,x=0.561,y=0.467,rank="Fishing Trainers (1-150)"},{name="Armand Cromwell",zone="Undercity",map=1458,x=0.809,y=0.311,rank="Fishing Trainers (1-150)"},{name="Kil'Hiwana",zone="Ashenvale",map=1440,x=0.10800000000000001,y=0.336,rank="Fishing Trainers (1-150)"},{name="Lui'Mala",zone="Desolace",map=1443,x=0.22699999999999998,y=0.725,rank="Fishing Trainers (1-150)"},{name="Lau'Tiki",zone="Durotar",map=1411,x=0.5329999999999999,y=0.816,rank="Fishing Trainers (1-150)"},{name="Uthan Stillwater",zone="Mulgore",map=1412,x=0.442,y=0.637,rank="Fishing Trainers (1-150)"},{name="Krix",zone="Riverglades",map=2548,x=0.7929999999999999,y=0.5479999999999999,rank="Fishing Trainers (1-150)"},{name="Myizz Luckycatch",zone="Stranglethorn Vale",map=1434,x=0.275,y=0.7709999999999999,rank="Fishing Trainers (1-150)"},{name="Katoom the Angler",zone="The Hinterlands",map=1425,x=0.8029999999999999,y=0.8140000000000001,rank="Fishing Trainers (1-150)"},{name="Clyde Kellen",zone="Tirisfal Glades",map=1420,x=0.672,y=0.51,rank="Fishing Trainers (1-150)"},{name="Baelann Swiftcurrent",zone="Zephras Isle",map=2521,x=0.632,y=0.757,rank="Fishing Trainers (1-150)"},{name="Fenn Fairweather",zone="Zephras Isle",map=2521,x=0.45,y=0.484,rank="Fishing Trainers (1-150)"},{name="Astaia",zone="Darnassus",map=1457,x=0.478,y=0.5670000000000001,rank="Fishing Trainers (1-150)"},{name="Grimnur Stonebrand",zone="Ironforge",map=1455,x=0.48100000000000004,y=0.065,rank="Fishing Trainers (1-150)"},{name="Arnold Leland",zone="Stormwind City",map=1453,x=0.55,y=0.696,rank="Fishing Trainers (1-150)"},{name="Paxton Ganter",zone="Dun Morogh",map=1426,x=0.355,y=0.402,rank="Fishing Trainers (1-150)"},{name="Lee Brown",zone="Elwynn Forest",map=1429,x=0.47600000000000003,y=0.623,rank="Fishing Trainers (1-150)"},{name="Brannock",zone="Feralas",map=1444,x=0.322,y=0.41600000000000004,rank="Fishing Trainers (1-150)"},{name="Donald Rabonne",zone="Hillsbrad Foothills",map=1424,x=0.504,y=0.6409999999999999,rank="Fishing Trainers (1-150)"},{name="Warg Deepwater",zone="Loch Modan",map=1432,x=0.406,y=0.396,rank="Fishing Trainers (1-150)"},{name="Matthew Hooper",zone="Redridge Mountains",map=1433,x=0.214,y=0.511,rank="Fishing Trainers (1-150)"},{name="Androl Oakhand",zone="Teldrassil",map=1438,x=0.5589999999999999,y=0.935,rank="Fishing Trainers (1-150)"},{name="Harold Riggs",zone="Wetlands",map=1437,x=0.081,y=0.585,rank="Fishing Trainers (1-150)"},{name="Old Man Heming",zone="Stranglethorn Vale",map=1434,x=0.275,y=0.7709999999999999,rank="Expert Fishing (150-225)"}}}
P.professionOrder={"Engineering","Alchemy","Blacksmithing","Enchanting","Tailoring","Leatherworking","Cooking","First Aid","Mining","Herbalism","Skinning","Fishing"}

P.catalog["Alchemy"].routes[1].materials={{name="Silverleaf",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[2].materials={{name="Silverleaf",quantity=1.0},{name="Peacebloom",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[3].materials={{name="Peacebloom",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[4].materials={{name="Silverleaf",quantity=1.0},{name="Peacebloom",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[5].materials={{name="Mageroyal",quantity=1.0},{name="Peacebloom",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[6].materials={{name="Mageroyal",quantity=1.0},{name="Peacebloom",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[7].materials={{name="Earthroot",quantity=2.0},{name="Peacebloom",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[8].materials={{name="Empty Vial",quantity=1.0},{name="Briarthorn",quantity=1.0},{name="Murloc Eye",quantity=1.0}}
P.catalog["Alchemy"].routes[9].materials={{name="Earthroot",quantity=2.0},{name="Mageroyal",quantity=2.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[10].materials={{name="Mageroyal",quantity=1.0},{name="Briarthorn",quantity=2.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[11].materials={{name="Swiftthistle",quantity=1.0},{name="Blackmouth Oil",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[12].materials={{name="Leaded Vial",quantity=1.0},{name="Bruiseweed",quantity=1.0},{name="Murloc Eye",quantity=1.0}}
P.catalog["Alchemy"].routes[13].materials={{name="Mageroyal",quantity=1.0},{name="Stranglekelp",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[14].materials={{name="Mageroyal",quantity=1.0},{name="Stranglekelp",quantity=1.0},{name="Empty Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[15].materials={{name="Wild Steelbloom",quantity=1.0},{name="Stranglekelp",quantity=1.0},{name="Leaded Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[16].materials={{name="Leaded Vial",quantity=1.0},{name="Kingsblood",quantity=1.0},{name="Murloc Eye",quantity=1.0}}
P.catalog["Alchemy"].routes[17].materials={{name="Blackmouth Oil",quantity=1.0},{name="Liferoot",quantity=1.0},{name="Leaded Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[18].materials={{name="Stranglekelp",quantity=1.0},{name="Goldthorn",quantity=1.0},{name="Leaded Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[19].materials={{name="Wild Steelbloom",quantity=1.0},{name="Goldthorn",quantity=1.0},{name="Leaded Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[20].materials={{name="Elemental Earth",quantity=1.0},{name="Goldthorn",quantity=1.0},{name="Crystal Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[21].materials={{name="Crystal Vial",quantity=1.0},{name="Sungrass",quantity=1.0},{name="Murloc Eye",quantity=1.0}}
P.catalog["Alchemy"].routes[22].materials={{name="Arthas' Tears",quantity=1.0},{name="Crystal Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[23].materials={{name="Gromsblood",quantity=2.0},{name="Crystal Vial",quantity=1.0}}
P.catalog["Alchemy"].routes[24].materials={{name="Elemental Fire",quantity=1.0},{name="Dreamfoil",quantity=1.0},{name="Crystal Vial",quantity=1.0}}
P.catalog["Blacksmithing"].routes[1].materials={{name="Rough Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[2].materials={{name="Coarse Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[3].materials={{name="Rough Stone",quantity=2.0}}
P.catalog["Blacksmithing"].routes[4].materials={{name="Silver Bar",quantity=1.0},{name="Rough Grinding Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[5].materials={{name="Copper Bar",quantity=10.0}}
P.catalog["Blacksmithing"].routes[6].materials={{name="Heavy Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[7].materials={{name="Coarse Sharpening Stone",quantity=1.0},{name="Lesser Magic Essence",quantity=1.0}}
P.catalog["Blacksmithing"].routes[8].materials={{name="Bronze Bar",quantity=4.0}}
P.catalog["Blacksmithing"].routes[9].materials={{name="Iron Bar",quantity=1.0}}
P.catalog["Blacksmithing"].routes[10].materials={{name="Gold Bar",quantity=1.0},{name="Heavy Grinding Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[11].materials={{name="Bronze Bar",quantity=8.0},{name="Silver Bar",quantity=1.0},{name="Coarse Grinding Stone",quantity=2.0}}
P.catalog["Blacksmithing"].routes[12].materials={{name="Bronze Bar",quantity=8.0},{name="Silver Bar",quantity=1.0},{name="Coarse Grinding Stone",quantity=2.0}}
P.catalog["Blacksmithing"].routes[13].materials={{name="Bronze Bar",quantity=8.0},{name="Strong Flux",quantity=1.0},{name="Medium Leather",quantity=1.0}}
P.catalog["Blacksmithing"].routes[14].materials={{name="Iron Bar",quantity=6.0},{name="Green Dye",quantity=1.0}}
P.catalog["Blacksmithing"].routes[15].materials={{name="Solid Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[16].materials={{name="Truesilver Bar",quantity=1.0},{name="Solid Grinding Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[17].materials={{name="Steel Bar",quantity=5.0},{name="Heavy Grinding Stone",quantity=2.0}}
P.catalog["Blacksmithing"].routes[18].materials={{name="Mithril Bar",quantity=6.0},{name="Mageweave Cloth",quantity=4.0}}
P.catalog["Blacksmithing"].routes[19].materials={{name="Mithril Bar",quantity=12.0}}
P.catalog["Blacksmithing"].routes[20].materials={{name="Steel Bar",quantity=14.0},{name="Solid Grinding Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[21].materials={{name="Mithril Bar",quantity=8.0},{name="Heavy Leather",quantity=6.0},{name="Mageweave Cloth",quantity=4.0}}
P.catalog["Blacksmithing"].routes[22].materials={{name="Mithril Bar",quantity=12.0},{name="Elemental Earth",quantity=1.0}}
P.catalog["Blacksmithing"].routes[23].materials={{name="Dense Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[24].materials={{name="Mithril Bar",quantity=14.0},{name="Thick Leather",quantity=4.0}}
P.catalog["Blacksmithing"].routes[25].materials={{name="Mithril Bar",quantity=16.0},{name="Truesilver Bar",quantity=2.0},{name="Black Pearl",quantity=1.0},{name="Solid Grinding Stone",quantity=1.0}}
P.catalog["Blacksmithing"].routes[26].materials={{name="Mithril Bar",quantity=28.0},{name="Breath of Wind",quantity=6.0},{name="Truesilver Bar",quantity=8.0},{name="Lesser Invisibility Potion",quantity=2.0},{name="Aquamarine",quantity=6.0},{name="Solid Grinding Stone",quantity=4.0},{name="Thick Leather",quantity=2.0}}
P.catalog["Blacksmithing"].routes[27].materials={{name="Thorium Bar",quantity=16.0},{name="Dense Grinding Stone",quantity=2.0},{name="Rugged Leather",quantity=4.0}}
P.catalog["Blacksmithing"].routes[28].materials={{name="Thorium Bar",quantity=30.0},{name="Gold Bar",quantity=4.0},{name="Truesilver Bar",quantity=2.0},{name="Blue Sapphire",quantity=2.0},{name="Rugged Leather",quantity=4.0}}
P.catalog["Blacksmithing"].routes[29].materials={{name="Thorium Bar",quantity=30.0},{name="Large Opal",quantity=2.0},{name="Dense Grinding Stone",quantity=2.0},{name="Rugged Leather",quantity=4.0}}
P.catalog["Cooking"].routes[1].materials={{name="Simple Wood",quantity=1.0}}
P.catalog["Cooking"].routes[2].materials={{name="Stringy Wolf Meat",quantity=1.0}}
P.catalog["Cooking"].routes[3].materials={{name="Stringy Wolf Meat",quantity=1.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[4].materials={{name="Stringy Wolf Meat",quantity=1.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[5].materials={{name="Simple Flour",quantity=5.0}}
P.catalog["Cooking"].routes[6].materials={{name="Bear Meat",quantity=1.0}}
P.catalog["Cooking"].routes[7].materials={{name="Coyote Meat",quantity=1.0}}
P.catalog["Cooking"].routes[8].materials={{name="Crawler Meat",quantity=1.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[9].materials={{name="Boar Ribs",quantity=1.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[10].materials={{name="Boar Ribs",quantity=1.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[11].materials={{name="Dig Rat",quantity=1.0}}
P.catalog["Cooking"].routes[12].materials={{name="Lean Wolf Flank",quantity=1.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[13].materials={{name="Tangy Clam Meat",quantity=1.0},{name="Hot Spices",quantity=1.0}}
P.catalog["Cooking"].routes[14].materials={{name="Chunk of Boar Meat",quantity=2.0},{name="Mild Spices",quantity=1.0}}
P.catalog["Cooking"].routes[15].materials={{name="Raw Spinefin Halibut",quantity=1.0}}
P.catalog["Cooking"].routes[16].materials={{name="Goldthorn",quantity=1.0},{name="Refreshing Spring Water",quantity=1.0}}
P.catalog["Cooking"].routes[17].materials={{name="Goldthorn",quantity=1.0},{name="Refreshing Spring Water",quantity=1.0}}
P.catalog["Cooking"].routes[18].materials={{name="White Spider Meat",quantity=2.0}}
P.catalog["Cooking"].routes[19].materials={{name="Raw Sunscale Salmon",quantity=1.0}}
P.catalog["Cooking"].routes[20].materials={{name="Meaty Bat Wing",quantity=3.0},{name="Soothing Spices",quantity=2.0}}
P.catalog["Cooking"].routes[21].materials={{name="Raw Sunscale Salmon",quantity=1.0}}
P.catalog["Enchanting"].routes[1].materials={{name="Mote of Magic",quantity=1.0}}
P.catalog["Enchanting"].routes[2].materials={{name="Lesser Magic Essence",quantity=1.0}}
P.catalog["Enchanting"].routes[3].materials={{name="Strange Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[4].materials={{name="Strange Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[5].materials={{name="Strange Dust",quantity=2.0}}
P.catalog["Enchanting"].routes[6].materials={{name="Lesser Astral Essence",quantity=1.0},{name="Strange Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[7].materials={{name="Strange Dust",quantity=2.0},{name="Lesser Astral Essence",quantity=1.0}}
P.catalog["Enchanting"].routes[8].materials={{name="Fire Oil",quantity=1.0},{name="Lesser Astral Essence",quantity=1.0}}
P.catalog["Enchanting"].routes[9].materials={{name="Soul Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[10].materials={{name="Soul Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[11].materials={{name="Vision Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[12].materials={{name="Vision Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[13].materials={{name="Vision Dust",quantity=1.0}}
P.catalog["Enchanting"].routes[14].materials={{name="Greater Nether Essence",quantity=1.0}}
P.catalog["Enchanting"].routes[15].materials={{name="Large Radiant Shard",quantity=1.0},{name="Wildvine",quantity=1.0}}
P.catalog["Engineering"].routes[1].materials={{name="Rough Stone",quantity=1.0}}
P.catalog["Engineering"].routes[2].materials={{name="Rough Blasting Powder",quantity=1.0},{name="Linen Cloth",quantity=1.0}}
P.catalog["Engineering"].routes[3].materials={{name="Copper Bar",quantity=1.0}}
P.catalog["Engineering"].routes[4].materials={{name="Copper Bar",quantity=1.0},{name="Handful of Copper Bolts",quantity=1.0},{name="Rough Blasting Powder",quantity=2.0},{name="Linen Cloth",quantity=1.0}}
P.catalog["Engineering"].routes[5].materials={{name="Copper Bar",quantity=1.0},{name="Handful of Copper Bolts",quantity=1.0},{name="Rough Blasting Powder",quantity=2.0},{name="Linen Cloth",quantity=1.0}}
P.catalog["Engineering"].routes[6].materials={{name="Copper Tube",quantity=1.0},{name="Handful of Copper Bolts",quantity=1.0},{name="Wooden Stock",quantity=1.0}}
P.catalog["Engineering"].routes[7].materials={{name="Coarse Stone",quantity=1.0}}
P.catalog["Engineering"].routes[8].materials={{name="Copper Tube",quantity=1.0},{name="Handful of Copper Bolts",quantity=1.0},{name="Wooden Stock",quantity=1.0}}
P.catalog["Engineering"].routes[9].materials={{name="Handful of Copper Bolts",quantity=2.0},{name="Copper Bar",quantity=1.0},{name="Linen Cloth",quantity=2.0}}
P.catalog["Engineering"].routes[10].materials={{name="Bronze Bar",quantity=2.0},{name="Weak Flux",quantity=1.0}}
P.catalog["Engineering"].routes[11].materials={{name="Silver Bar",quantity=1.0}}
P.catalog["Engineering"].routes[12].materials={{name="Heavy Stone",quantity=1.0}}
P.catalog["Engineering"].routes[13].materials={{name="Bronze Bar",quantity=2.0},{name="Wool Cloth",quantity=1.0}}
P.catalog["Engineering"].routes[14].materials={{name="Bronze Bar",quantity=2.0},{name="Medium Leather",quantity=1.0},{name="Wool Cloth",quantity=1.0}}
P.catalog["Engineering"].routes[15].materials={{name="Gold Bar",quantity=1.0}}
P.catalog["Engineering"].routes[16].materials={{name="Solid Blasting Powder",quantity=1.0},{name="Silk Cloth",quantity=1.0}}
P.catalog["Engineering"].routes[17].materials={{name="Iron Bar",quantity=1.0},{name="Gold Power Core",quantity=1.0}}
P.catalog["Engineering"].routes[18].materials={{name="Mithril Bar",quantity=3.0}}
P.catalog["Engineering"].routes[19].materials={{name="Mithril Bar",quantity=1.0},{name="Mageweave Cloth",quantity=1.0},{name="Solid Blasting Powder",quantity=1.0}}
P.catalog["Engineering"].routes[20].materials={{name="Mithril Bar",quantity=1.0},{name="Solid Blasting Powder",quantity=1.0}}
P.catalog["Engineering"].routes[21].materials={{name="Mithril Bar",quantity=1.0},{name="Solid Blasting Powder",quantity=1.0}}
P.catalog["Engineering"].routes[22].materials={{name="Mithril Casing",quantity=2.0},{name="Unstable Trigger",quantity=1.0},{name="Solid Blasting Powder",quantity=2.0}}
P.catalog["Engineering"].routes[23].materials={{name="Mithril Bar",quantity=2.0},{name="Solid Blasting Powder",quantity=2.0}}
P.catalog["Engineering"].routes[24].materials={{name="Dense Stone",quantity=2.0}}
P.catalog["Engineering"].routes[25].materials={{name="Mithril Bar",quantity=2.0},{name="Solid Blasting Powder",quantity=2.0}}
P.catalog["Engineering"].routes[26].materials={{name="Mithril Casing",quantity=1.0},{name="Gold Power Core",quantity=2.0}}
P.catalog["Engineering"].routes[27].materials={{name="Mithril Casing",quantity=1.0},{name="Thorium Bar",quantity=6.0},{name="Gold Power Core",quantity=1.0},{name="Unstable Trigger",quantity=4.0}}
P.catalog["Engineering"].routes[28].materials={{name="Thorium Bar",quantity=2.0},{name="Dense Blasting Powder",quantity=1.0}}
P.catalog["First Aid"].routes[1].materials={{name="Linen Cloth",quantity=1.0}}
P.catalog["First Aid"].routes[2].materials={{name="Linen Cloth",quantity=2.0}}
P.catalog["First Aid"].routes[3].materials={{name="Empty Vial",quantity=1.0},{name="Mild Spices",quantity=1.0},{name="Peacebloom",quantity=1.0}}
P.catalog["First Aid"].routes[4].materials={{name="Empty Vial",quantity=1.0},{name="Mild Spices",quantity=1.0},{name="Peacebloom",quantity=1.0}}
P.catalog["First Aid"].routes[5].materials={{name="Small Venom Sac",quantity=1.0}}
P.catalog["First Aid"].routes[6].materials={{name="Leaded Vial",quantity=1.0},{name="Hot Spices",quantity=1.0},{name="Bruiseweed",quantity=1.0}}
P.catalog["First Aid"].routes[7].materials={{name="Silk Cloth",quantity=1.0}}
P.catalog["First Aid"].routes[8].materials={{name="Thick Leather",quantity=2.0},{name="Silken Thread",quantity=2.0}}
P.catalog["First Aid"].routes[9].materials={{name="Mageweave Cloth",quantity=1.0}}
P.catalog["First Aid"].routes[10].materials={{name="Swollen Venom Sac",quantity=1.0}}
P.catalog["First Aid"].routes[11].materials={{name="Swollen Venom Sac",quantity=1.0}}
P.catalog["First Aid"].routes[12].materials={{name="Mageweave Cloth",quantity=2.0}}
P.catalog["First Aid"].routes[13].materials={{name="Runecloth",quantity=1.0}}
P.catalog["First Aid"].routes[14].materials={{name="Runecloth",quantity=2.0}}
P.catalog["Leatherworking"].routes[1].materials={{name="Light Leather",quantity=1.0}}
P.catalog["Leatherworking"].routes[2].materials={{name="Light Hide",quantity=1.0},{name="Salt",quantity=1.0}}
P.catalog["Leatherworking"].routes[3].materials={{name="Light Leather",quantity=3.0},{name="Coarse Thread",quantity=4.0}}
P.catalog["Leatherworking"].routes[4].materials={{name="Light Leather",quantity=3.0},{name="Coarse Thread",quantity=2.0}}
P.catalog["Leatherworking"].routes[5].materials={{name="Light Leather",quantity=3.0},{name="Coarse Thread",quantity=2.0}}
P.catalog["Leatherworking"].routes[6].materials={{name="Light Leather",quantity=6.0},{name="Coarse Thread",quantity=2.0}}
P.catalog["Leatherworking"].routes[7].materials={{name="Medium Hide",quantity=1.0},{name="Salt",quantity=1.0}}
P.catalog["Leatherworking"].routes[8].materials={{name="Medium Leather",quantity=4.0},{name="Fine Thread",quantity=2.0},{name="Gray Dye",quantity=1.0}}
P.catalog["Leatherworking"].routes[9].materials={{name="Medium Leather",quantity=8.0},{name="Fine Thread",quantity=1.0},{name="Gray Dye",quantity=1.0}}
P.catalog["Leatherworking"].routes[10].materials={{name="Elixir of Minor Agility",quantity=1.0},{name="Medium Leather",quantity=6.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[11].materials={{name="Fine Leather Belt",quantity=1.0},{name="Cured Medium Hide",quantity=1.0},{name="Fine Thread",quantity=2.0},{name="Gray Dye",quantity=1.0}}
P.catalog["Leatherworking"].routes[12].materials={{name="Heavy Hide",quantity=1.0},{name="Salt",quantity=3.0}}
P.catalog["Leatherworking"].routes[13].materials={{name="Cured Medium Hide",quantity=1.0},{name="Medium Leather",quantity=4.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[14].materials={{name="Heavy Leather",quantity=5.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[15].materials={{name="Heavy Leather",quantity=5.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[16].materials={{name="Cured Heavy Hide",quantity=1.0},{name="Heavy Leather",quantity=5.0},{name="Fine Thread",quantity=1.0},{name="Green Dye",quantity=1.0},{name="Iron Buckle",quantity=1.0}}
P.catalog["Leatherworking"].routes[17].materials={{name="Heavy Leather",quantity=8.0},{name="Cured Heavy Hide",quantity=1.0},{name="Fine Thread",quantity=2.0}}
P.catalog["Leatherworking"].routes[18].materials={{name="Heavy Leather",quantity=6.0}}
P.catalog["Leatherworking"].routes[19].materials={{name="Cured Heavy Hide",quantity=2.0},{name="Heavy Leather",quantity=6.0},{name="Green Dye",quantity=1.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[20].materials={{name="Heavy Leather",quantity=4.0},{name="Cured Heavy Hide",quantity=1.0},{name="Silken Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[21].materials={{name="Thick Leather",quantity=5.0},{name="Silken Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[22].materials={{name="Thick Leather",quantity=5.0},{name="Silken Thread",quantity=2.0}}
P.catalog["Leatherworking"].routes[23].materials={{name="Thick Leather",quantity=6.0},{name="Turtle Scale",quantity=12.0},{name="Heavy Silken Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[24].materials={{name="Thick Leather",quantity=10.0},{name="Cured Thick Hide",quantity=1.0},{name="Elixir of Defense",quantity=1.0},{name="Silken Thread",quantity=6.0}}
P.catalog["Leatherworking"].routes[25].materials={{name="Rugged Hide",quantity=1.0},{name="Refined Deeprock Salt",quantity=1.0}}
P.catalog["Leatherworking"].routes[26].materials={{name="Rugged Leather",quantity=5.0}}
P.catalog["Leatherworking"].routes[27].materials={{name="Thick Leather",quantity=16.0},{name="Heavy Silken Thread",quantity=2.0}}
P.catalog["Leatherworking"].routes[28].materials={{name="Thick Leather",quantity=40.0},{name="Heart of Fire",quantity=8.0},{name="Core of Earth",quantity=4.0},{name="Cured Thick Hide",quantity=2.0},{name="Heavy Silken Thread",quantity=4.0}}
P.catalog["Leatherworking"].routes[29].materials={{name="Rugged Leather",quantity=2.0},{name="Heavy Scorpid Scale",quantity=4.0},{name="Rune Thread",quantity=1.0},{name="Elemental Air",quantity=2.0}}
P.catalog["Leatherworking"].routes[30].materials={{name="Rugged Leather",quantity=6.0},{name="Essence of Fire",quantity=1.0},{name="Core of Earth",quantity=1.0},{name="Rune Thread",quantity=1.0}}
P.catalog["Leatherworking"].routes[31].materials={{name="Rugged Leather",quantity=10.0},{name="Rune Thread",quantity=1.0},{name="Blue Dye",quantity=1.0}}
P.catalog["Tailoring"].routes[1].materials={{name="Bolt of Linen Cloth",quantity=1.0},{name="Coarse Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[2].materials={{name="Bolt of Linen Cloth",quantity=1.0},{name="Coarse Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[3].materials={{name="Bolt of Linen Cloth",quantity=1.0},{name="Coarse Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[4].materials={{name="Bolt of Linen Cloth",quantity=1.0},{name="Coarse Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[5].materials={{name="Bolt of Linen Cloth",quantity=1.0},{name="Coarse Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[6].materials={{name="Bolt of Linen Cloth",quantity=4.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[7].materials={{name="Bolt of Woolen Cloth",quantity=1.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[8].materials={{name="Bolt of Woolen Cloth",quantity=3.0},{name="Fine Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[9].materials={{name="Bolt of Woolen Cloth",quantity=4.0},{name="Fine Thread",quantity=3.0},{name="Elixir of Wisdom",quantity=1.0}}
P.catalog["Tailoring"].routes[10].materials={{name="Bolt of Silk Cloth",quantity=2.0},{name="Blue Dye",quantity=2.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[11].materials={{name="Bolt of Silk Cloth",quantity=3.0},{name="Fine Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[12].materials={{name="Bolt of Silk Cloth",quantity=2.0},{name="Fine Thread",quantity=2.0},{name="Spider's Silk",quantity=2.0}}
P.catalog["Tailoring"].routes[13].materials={{name="Bolt of Silk Cloth",quantity=3.0},{name="Bleach",quantity=2.0},{name="Fine Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[14].materials={{name="Bolt of Silk Cloth",quantity=3.0},{name="Red Dye",quantity=2.0},{name="Silken Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[15].materials={{name="Bolt of Silk Cloth",quantity=3.0},{name="Elemental Earth",quantity=1.0},{name="Fine Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[16].materials={{name="Bolt of Silk Cloth",quantity=5.0},{name="Silken Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[17].materials={{name="Bolt of Silk Cloth",quantity=4.0},{name="Red Dye",quantity=2.0},{name="Fine Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[18].materials={{name="Bolt of Silk Cloth",quantity=4.0},{name="Red Dye",quantity=2.0},{name="Silken Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[19].materials={{name="Bolt of Mageweave",quantity=1.0},{name="Orange Dye",quantity=1.0},{name="Heavy Silken Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[20].materials={{name="Bolt of Mageweave",quantity=2.0},{name="Silken Thread",quantity=3.0}}
P.catalog["Tailoring"].routes[21].materials={{name="Bolt of Mageweave",quantity=2.0},{name="Heavy Silken Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[22].materials={{name="Bolt of Mageweave",quantity=3.0},{name="Heavy Silken Thread",quantity=2.0}}
P.catalog["Tailoring"].routes[23].materials={{name="Bolt of Mageweave",quantity=2.0},{name="Silken Thread",quantity=3.0}}
P.catalog["Tailoring"].routes[24].materials={{name="Bolt of Mageweave",quantity=2.0},{name="Silken Thread",quantity=3.0}}
P.catalog["Tailoring"].routes[25].materials={{name="Bolt of Runecloth",quantity=3.0},{name="Rune Thread",quantity=1.0}}
P.catalog["Tailoring"].routes[26].materials={{name="Felcloth",quantity=2.0}}
P.catalog["Tailoring"].routes[27].materials={{name="Bolt of Runecloth",quantity=6.0},{name="Mooncloth",quantity=4.0},{name="Black Pearl",quantity=2.0},{name="Rune Thread",quantity=1.0}}

-- Faction access from trainer source paragraphs; missing metadata is not assumed friendly.
P.catalog["Alchemy"].trainers[1].faction="Horde"
P.catalog["Alchemy"].trainers[2].faction="Horde"
P.catalog["Alchemy"].trainers[3].faction="Horde"
P.catalog["Alchemy"].trainers[4].faction="Horde"
P.catalog["Alchemy"].trainers[5].faction="Horde"
P.catalog["Alchemy"].trainers[6].faction="Neutral"
P.catalog["Alchemy"].trainers[7].faction="Neutral"
P.catalog["Alchemy"].trainers[8].faction="Neutral"
P.catalog["Alchemy"].trainers[9].faction="Alliance"
P.catalog["Alchemy"].trainers[10].faction="Alliance"
P.catalog["Alchemy"].trainers[11].faction="Alliance"
P.catalog["Alchemy"].trainers[12].faction="Alliance"
P.catalog["Alchemy"].trainers[13].faction="Alliance"
P.catalog["Alchemy"].trainers[14].faction="Alliance"
P.catalog["Alchemy"].trainers[15].faction="Alliance"
P.catalog["Alchemy"].trainers[16].faction="Horde"
P.catalog["Alchemy"].trainers[17].faction="Horde"
P.catalog["Alchemy"].trainers[18].faction="Horde"
P.catalog["Alchemy"].trainers[19].faction="Horde"
P.catalog["Alchemy"].trainers[20].faction="Neutral"
P.catalog["Alchemy"].trainers[21].faction="Alliance"
P.catalog["Alchemy"].trainers[22].faction="Alliance"
P.catalog["Alchemy"].trainers[23].faction="Alliance"
P.catalog["Alchemy"].trainers[24].faction="Alliance"
P.catalog["Alchemy"].trainers[25].faction="Alliance"
P.catalog["Alchemy"].trainers[26].faction="Alliance"
P.catalog["Alchemy"].trainers[27].faction="Horde"
P.catalog["Alchemy"].trainers[28].faction="Alliance"
P.catalog["Alchemy"].trainers[29].faction="Alliance"
P.catalog["Alchemy"].trainers[30].faction="Horde"
P.catalog["Alchemy"].trainers[31].faction="Alliance"
P.catalog["Blacksmithing"].trainers[1].faction="Horde"
P.catalog["Blacksmithing"].trainers[2].faction="Horde"
P.catalog["Blacksmithing"].trainers[3].faction="Horde"
P.catalog["Blacksmithing"].trainers[4].faction="Horde"
P.catalog["Blacksmithing"].trainers[5].faction="Horde"
P.catalog["Blacksmithing"].trainers[6].faction="Horde"
P.catalog["Blacksmithing"].trainers[7].faction="Horde"
P.catalog["Blacksmithing"].trainers[8].faction="Neutral"
P.catalog["Blacksmithing"].trainers[9].faction="Neutral"
P.catalog["Blacksmithing"].trainers[10].faction="Alliance"
P.catalog["Blacksmithing"].trainers[11].faction="Alliance"
P.catalog["Blacksmithing"].trainers[12].faction="Alliance"
P.catalog["Blacksmithing"].trainers[13].faction="Alliance"
P.catalog["Blacksmithing"].trainers[14].faction="Alliance"
P.catalog["Blacksmithing"].trainers[15].faction="Alliance"
P.catalog["Blacksmithing"].trainers[16].faction="Alliance"
P.catalog["Blacksmithing"].trainers[17].faction="Horde"
P.catalog["Blacksmithing"].trainers[18].faction="Horde"
P.catalog["Blacksmithing"].trainers[19].faction="Horde"
P.catalog["Blacksmithing"].trainers[20].faction="Horde"
P.catalog["Blacksmithing"].trainers[21].faction="Horde"
P.catalog["Blacksmithing"].trainers[22].faction="Neutral"
P.catalog["Blacksmithing"].trainers[23].faction="Alliance"
P.catalog["Blacksmithing"].trainers[24].faction="Alliance"
P.catalog["Blacksmithing"].trainers[25].faction="Alliance"
P.catalog["Blacksmithing"].trainers[26].faction="Alliance"
P.catalog["Blacksmithing"].trainers[27].faction="Horde"
P.catalog["Blacksmithing"].trainers[28].faction="Alliance"
P.catalog["Blacksmithing"].trainers[29].faction="Alliance"
P.catalog["Blacksmithing"].trainers[30].faction="Neutral"
P.catalog["Blacksmithing"].trainers[31].faction="Alliance"
P.catalog["Blacksmithing"].trainers[32].faction="Horde"
P.catalog["Blacksmithing"].trainers[33].faction="Alliance"
P.catalog["Blacksmithing"].trainers[34].faction="Horde"
P.catalog["Cooking"].trainers[1].faction="Horde"
P.catalog["Cooking"].trainers[2].faction="Horde"
P.catalog["Cooking"].trainers[3].faction="Horde"
P.catalog["Cooking"].trainers[4].faction="Horde"
P.catalog["Cooking"].trainers[5].faction="Horde"
P.catalog["Cooking"].trainers[6].faction="Horde"
P.catalog["Cooking"].trainers[7].faction="Horde"
P.catalog["Cooking"].trainers[8].faction="Horde"
P.catalog["Cooking"].trainers[9].faction="Horde"
P.catalog["Cooking"].trainers[10].faction="Neutral"
P.catalog["Cooking"].trainers[11].faction="Neutral"
P.catalog["Cooking"].trainers[12].faction="Alliance"
P.catalog["Cooking"].trainers[13].faction="Alliance"
P.catalog["Cooking"].trainers[14].faction="Alliance"
P.catalog["Cooking"].trainers[15].faction="Alliance"
P.catalog["Cooking"].trainers[16].faction="Alliance"
P.catalog["Cooking"].trainers[17].faction="Alliance"
P.catalog["Cooking"].trainers[18].faction="Alliance"
P.catalog["Cooking"].trainers[19].faction="Alliance"
P.catalog["Cooking"].trainers[20].faction="Alliance"
P.catalog["Cooking"].trainers[21].faction="Horde"
P.catalog["Cooking"].trainers[22].faction="Alliance"
P.catalog["Enchanting"].trainers[1].faction="Horde"
P.catalog["Enchanting"].trainers[2].faction="Horde"
P.catalog["Enchanting"].trainers[3].faction="Horde"
P.catalog["Enchanting"].trainers[4].faction="Horde"
P.catalog["Enchanting"].trainers[5].faction="Horde"
P.catalog["Enchanting"].trainers[6].faction="Neutral"
P.catalog["Enchanting"].trainers[7].faction="Neutral"
P.catalog["Enchanting"].trainers[8].faction="Alliance"
P.catalog["Enchanting"].trainers[9].faction="Alliance"
P.catalog["Enchanting"].trainers[10].faction="Alliance"
P.catalog["Enchanting"].trainers[11].faction="Alliance"
P.catalog["Enchanting"].trainers[12].faction="Alliance"
P.catalog["Enchanting"].trainers[13].faction="Horde"
P.catalog["Enchanting"].trainers[14].faction="Horde"
P.catalog["Enchanting"].trainers[15].faction="Horde"
P.catalog["Enchanting"].trainers[16].faction="Alliance"
P.catalog["Enchanting"].trainers[17].faction="Alliance"
P.catalog["Enchanting"].trainers[18].faction="Alliance"
P.catalog["Enchanting"].trainers[19].faction="Alliance"
P.catalog["Enchanting"].trainers[20].faction="Alliance"
P.catalog["Enchanting"].trainers[21].faction="Horde"
P.catalog["Enchanting"].trainers[22].faction="Alliance"
P.catalog["Enchanting"].trainers[23].faction="Alliance"
P.catalog["Engineering"].trainers[1].faction="Horde"
P.catalog["Engineering"].trainers[2].faction="Horde"
P.catalog["Engineering"].trainers[3].faction="Horde"
P.catalog["Engineering"].trainers[4].faction="Neutral"
P.catalog["Engineering"].trainers[5].faction="Neutral"
P.catalog["Engineering"].trainers[6].faction="Neutral"
P.catalog["Engineering"].trainers[7].faction="Alliance"
P.catalog["Engineering"].trainers[8].faction="Alliance"
P.catalog["Engineering"].trainers[9].faction="Alliance"
P.catalog["Engineering"].trainers[10].faction="Alliance"
P.catalog["Engineering"].trainers[11].faction="Alliance"
P.catalog["Engineering"].trainers[12].faction="Horde"
P.catalog["Engineering"].trainers[13].faction="Horde"
P.catalog["Engineering"].trainers[14].faction="Alliance"
P.catalog["Engineering"].trainers[15].faction="Alliance"
P.catalog["Engineering"].trainers[16].faction="Alliance"
P.catalog["Engineering"].trainers[17].faction="Horde"
P.catalog["Engineering"].trainers[18].faction="Alliance"
P.catalog["Engineering"].trainers[19].faction="Neutral"
P.catalog["Engineering"].trainers[20].faction="Alliance"
P.catalog["Engineering"].trainers[21].faction="Neutral"
P.catalog["Engineering"].trainers[22].faction="Neutral"
P.catalog["Engineering"].trainers[23].faction="Neutral"
P.catalog["Engineering"].trainers[24].faction="Neutral"
P.catalog["First Aid"].trainers[1].faction="Horde"
P.catalog["First Aid"].trainers[2].faction="Horde"
P.catalog["First Aid"].trainers[3].faction="Horde"
P.catalog["First Aid"].trainers[4].faction="Horde"
P.catalog["First Aid"].trainers[5].faction="Horde"
P.catalog["First Aid"].trainers[6].faction="Horde"
P.catalog["First Aid"].trainers[7].faction="Neutral"
P.catalog["First Aid"].trainers[8].faction="Neutral"
P.catalog["First Aid"].trainers[9].faction="Alliance"
P.catalog["First Aid"].trainers[10].faction="Alliance"
P.catalog["First Aid"].trainers[11].faction="Alliance"
P.catalog["First Aid"].trainers[12].faction="Alliance"
P.catalog["First Aid"].trainers[13].faction="Alliance"
P.catalog["First Aid"].trainers[14].faction="Alliance"
P.catalog["First Aid"].trainers[15].faction="Alliance"
P.catalog["First Aid"].trainers[16].faction="Alliance"
P.catalog["First Aid"].trainers[17].faction="Horde"
P.catalog["First Aid"].trainers[18].faction="Alliance"
P.catalog["First Aid"].trainers[19].faction="Horde"
P.catalog["First Aid"].trainers[20].faction="Alliance"
P.catalog["Fishing"].trainers[1].faction="Horde"
P.catalog["Fishing"].trainers[2].faction="Horde"
P.catalog["Fishing"].trainers[3].faction="Horde"
P.catalog["Fishing"].trainers[4].faction="Horde"
P.catalog["Fishing"].trainers[5].faction="Horde"
P.catalog["Fishing"].trainers[6].faction="Horde"
P.catalog["Fishing"].trainers[7].faction="Horde"
P.catalog["Fishing"].trainers[8].faction="Neutral"
P.catalog["Fishing"].trainers[9].faction="Neutral"
P.catalog["Fishing"].trainers[10].faction="Horde"
P.catalog["Fishing"].trainers[11].faction="Horde"
P.catalog["Fishing"].trainers[12].faction="Neutral"
P.catalog["Fishing"].trainers[13].faction="Neutral"
P.catalog["Fishing"].trainers[14].faction="Alliance"
P.catalog["Fishing"].trainers[15].faction="Alliance"
P.catalog["Fishing"].trainers[16].faction="Alliance"
P.catalog["Fishing"].trainers[17].faction="Alliance"
P.catalog["Fishing"].trainers[18].faction="Alliance"
P.catalog["Fishing"].trainers[19].faction="Alliance"
P.catalog["Fishing"].trainers[20].faction="Alliance"
P.catalog["Fishing"].trainers[21].faction="Alliance"
P.catalog["Fishing"].trainers[22].faction="Alliance"
P.catalog["Fishing"].trainers[23].faction="Alliance"
P.catalog["Fishing"].trainers[24].faction="Alliance"
P.catalog["Fishing"].trainers[25].faction="Neutral"
P.catalog["Herbalism"].trainers[1].faction="Horde"
P.catalog["Herbalism"].trainers[2].faction="Horde"
P.catalog["Herbalism"].trainers[3].faction="Horde"
P.catalog["Herbalism"].trainers[4].faction="Alliance"
P.catalog["Herbalism"].trainers[5].faction="Alliance"
P.catalog["Herbalism"].trainers[6].faction="Alliance"
P.catalog["Herbalism"].trainers[7].faction="Horde"
P.catalog["Herbalism"].trainers[8].faction="Horde"
P.catalog["Herbalism"].trainers[9].faction="Horde"
P.catalog["Herbalism"].trainers[10].faction="Horde"
P.catalog["Herbalism"].trainers[11].faction="Horde"
P.catalog["Herbalism"].trainers[12].faction="Horde"
P.catalog["Herbalism"].trainers[13].faction="Neutral"
P.catalog["Herbalism"].trainers[14].faction="Horde"
P.catalog["Herbalism"].trainers[15].faction="Neutral"
P.catalog["Herbalism"].trainers[16].faction="Horde"
P.catalog["Herbalism"].trainers[17].faction="Neutral"
P.catalog["Herbalism"].trainers[18].faction="Neutral"
P.catalog["Herbalism"].trainers[19].faction="Alliance"
P.catalog["Herbalism"].trainers[20].faction="Alliance"
P.catalog["Herbalism"].trainers[21].faction="Alliance"
P.catalog["Herbalism"].trainers[22].faction="Alliance"
P.catalog["Herbalism"].trainers[23].faction="Alliance"
P.catalog["Herbalism"].trainers[24].faction="Alliance"
P.catalog["Herbalism"].trainers[25].faction="Alliance"
P.catalog["Herbalism"].trainers[26].faction="Alliance"
P.catalog["Herbalism"].trainers[27].faction="Alliance"
P.catalog["Herbalism"].trainers[28].faction="Alliance"
P.catalog["Herbalism"].trainers[29].faction="Alliance"
P.catalog["Leatherworking"].trainers[1].faction="Horde"
P.catalog["Leatherworking"].trainers[2].faction="Horde"
P.catalog["Leatherworking"].trainers[3].faction="Horde"
P.catalog["Leatherworking"].trainers[4].faction="Horde"
P.catalog["Leatherworking"].trainers[5].faction="Neutral"
P.catalog["Leatherworking"].trainers[6].faction="Horde"
P.catalog["Leatherworking"].trainers[7].faction="Neutral"
P.catalog["Leatherworking"].trainers[8].faction="Neutral"
P.catalog["Leatherworking"].trainers[9].faction="Alliance"
P.catalog["Leatherworking"].trainers[10].faction="Alliance"
P.catalog["Leatherworking"].trainers[11].faction="Alliance"
P.catalog["Leatherworking"].trainers[12].faction="Alliance"
P.catalog["Leatherworking"].trainers[13].faction="Alliance"
P.catalog["Leatherworking"].trainers[14].faction="Horde"
P.catalog["Leatherworking"].trainers[15].faction="Horde"
P.catalog["Leatherworking"].trainers[16].faction="Horde"
P.catalog["Leatherworking"].trainers[17].faction="Horde"
P.catalog["Leatherworking"].trainers[18].faction="Horde"
P.catalog["Leatherworking"].trainers[19].faction="Neutral"
P.catalog["Leatherworking"].trainers[20].faction="Alliance"
P.catalog["Leatherworking"].trainers[21].faction="Alliance"
P.catalog["Leatherworking"].trainers[22].faction="Alliance"
P.catalog["Leatherworking"].trainers[23].faction="Alliance"
P.catalog["Leatherworking"].trainers[24].faction="Horde"
P.catalog["Leatherworking"].trainers[25].faction="Alliance"
P.catalog["Leatherworking"].trainers[26].faction="Horde"
P.catalog["Leatherworking"].trainers[27].faction="Alliance"
P.catalog["Leatherworking"].trainers[28].faction="Alliance"
P.catalog["Leatherworking"].trainers[29].faction="Horde"
P.catalog["Leatherworking"].trainers[30].faction="Horde"
P.catalog["Leatherworking"].trainers[31].faction="Alliance"
P.catalog["Leatherworking"].trainers[32].faction="Alliance"
P.catalog["Leatherworking"].trainers[33].faction="Horde"
P.catalog["Mining"].trainers[1].faction="Horde"
P.catalog["Mining"].trainers[2].faction="Horde"
P.catalog["Mining"].trainers[3].faction="Horde"
P.catalog["Mining"].trainers[4].faction="Alliance"
P.catalog["Mining"].trainers[5].faction="Alliance"
P.catalog["Mining"].trainers[6].faction="Alliance"
P.catalog["Mining"].trainers[7].faction="Horde"
P.catalog["Mining"].trainers[8].faction="Horde"
P.catalog["Mining"].trainers[9].faction="Horde"
P.catalog["Mining"].trainers[10].faction="Horde"
P.catalog["Mining"].trainers[11].faction="Neutral"
P.catalog["Mining"].trainers[12].faction="Horde"
P.catalog["Mining"].trainers[13].faction="Neutral"
P.catalog["Mining"].trainers[14].faction="Neutral"
P.catalog["Mining"].trainers[15].faction="Neutral"
P.catalog["Mining"].trainers[16].faction="Alliance"
P.catalog["Mining"].trainers[17].faction="Alliance"
P.catalog["Mining"].trainers[18].faction="Alliance"
P.catalog["Mining"].trainers[19].faction="Alliance"
P.catalog["Mining"].trainers[20].faction="Alliance"
P.catalog["Mining"].trainers[21].faction="Alliance"
P.catalog["Mining"].trainers[22].faction="Alliance"
P.catalog["Skinning"].trainers[1].faction="Horde"
P.catalog["Skinning"].trainers[2].faction="Horde"
P.catalog["Skinning"].trainers[3].faction="Horde"
P.catalog["Skinning"].trainers[4].faction="Alliance"
P.catalog["Skinning"].trainers[5].faction="Alliance"
P.catalog["Skinning"].trainers[6].faction="Alliance"
P.catalog["Skinning"].trainers[7].faction="Horde"
P.catalog["Skinning"].trainers[8].faction="Horde"
P.catalog["Skinning"].trainers[9].faction="Horde"
P.catalog["Skinning"].trainers[10].faction="Horde"
P.catalog["Skinning"].trainers[11].faction="Horde"
P.catalog["Skinning"].trainers[12].faction="Horde"
P.catalog["Skinning"].trainers[13].faction="Horde"
P.catalog["Skinning"].trainers[14].faction="Horde"
P.catalog["Skinning"].trainers[15].faction="Neutral"
P.catalog["Skinning"].trainers[16].faction="Neutral"
P.catalog["Skinning"].trainers[17].faction="Alliance"
P.catalog["Skinning"].trainers[18].faction="Alliance"
P.catalog["Skinning"].trainers[19].faction="Alliance"
P.catalog["Skinning"].trainers[20].faction="Alliance"
P.catalog["Skinning"].trainers[21].faction="Alliance"
P.catalog["Skinning"].trainers[22].faction="Alliance"
P.catalog["Skinning"].trainers[23].faction="Alliance"
P.catalog["Tailoring"].trainers[1].faction="Horde"
P.catalog["Tailoring"].trainers[2].faction="Horde"
P.catalog["Tailoring"].trainers[3].faction="Horde"
P.catalog["Tailoring"].trainers[4].faction="Horde"
P.catalog["Tailoring"].trainers[5].faction="Horde"
P.catalog["Tailoring"].trainers[6].faction="Neutral"
P.catalog["Tailoring"].trainers[7].faction="Neutral"
P.catalog["Tailoring"].trainers[8].faction="Alliance"
P.catalog["Tailoring"].trainers[9].faction="Alliance"
P.catalog["Tailoring"].trainers[10].faction="Alliance"
P.catalog["Tailoring"].trainers[11].faction="Alliance"
P.catalog["Tailoring"].trainers[12].faction="Alliance"
P.catalog["Tailoring"].trainers[13].faction="Alliance"
P.catalog["Tailoring"].trainers[14].faction="Horde"
P.catalog["Tailoring"].trainers[15].faction="Horde"
P.catalog["Tailoring"].trainers[16].faction="Horde"
P.catalog["Tailoring"].trainers[17].faction="Neutral"
P.catalog["Tailoring"].trainers[18].faction="Horde"
P.catalog["Tailoring"].trainers[19].faction="Neutral"
P.catalog["Tailoring"].trainers[20].faction="Neutral"
P.catalog["Tailoring"].trainers[21].faction="Alliance"
P.catalog["Tailoring"].trainers[22].faction="Alliance"
P.catalog["Tailoring"].trainers[23].faction="Alliance"
P.catalog["Tailoring"].trainers[24].faction="Alliance"
P.catalog["Tailoring"].trainers[25].faction="Horde"
P.catalog["Tailoring"].trainers[26].faction="Alliance"
P.catalog["Tailoring"].trainers[27].faction="Alliance"
P.catalog["Tailoring"].trainers[28].faction="Horde"
P.catalog["Tailoring"].trainers[29].faction="Alliance"
