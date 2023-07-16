local mType = Game.createMonsterType("Wyvern")
local monster = {}

monster.description = "a wyvern"
monster.experience = 515
monster.outfit = {
	lookType = 239,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 290
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = " Carlin Folda 3x, Vega 3x and Ghostlands 1x. Kazordoon North of dragon lair Mapper Coords127.158124.14073texthere, 3x, a 9x 7x2x Ferngrims Gate, West of Orc Fortress ground spawn, 2x and at Paradox Tower entrance 2x. Also inside the Drillworm Caves. Gnomegate All over the place in the Truffels Garden and the Crystal Grounds, as well as Mushroom Gardens. Venore Plains of Havoc Ground level in the Giant Spider field, Mapper Coords127.217125.7873texthere and in  Black Knights Villa 1x. Edron 8x north east of town in the mountains, 2x spawn north of the mountain pass, north of Stonehome 1x, 2x north of Edron Dragon Lair, and 2x at the entrance to the Old Fortress. Darashia Plague Spike 3x. Ankrahmun MalouquahGreen Djinn Tower entrance 1x and near the Hyaenas and Cobras 3x. Port Hope Deep in Tiquanda Mapper Coords128.72127.11873texthere 2x and on a hill at Chor 3x. Vandura Mountain In the area with Nightstalkers 1x. Formorgar Glacier All over the place 2x with Mammoths and near the Magic Forcefieldteleporter to The Bloodtusk. Chyllfroest Several on top of the mountain and underground. Nargor in Crystal Gardens."
}

monster.health = 795
monster.maxHealth = 795
monster.race = "blood"
monster.corpse = 6301
monster.speed = 93
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 300,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Shriiiek", yell = false},
}

monster.loot = {
	{name = "emerald bangle", chance = 540},
	{name = "small sapphire", chance = 5000},
	{name = "gold coin", chance = 100000, maxCount = 90},
	{name = "wand of inferno", chance = 810},
	{name = "power bolt", chance = 3400, maxCount = 2},
	{name = "dragon ham", chance = 60500, maxCount = 3},
	{name = "wyvern fang", chance = 410},
	{name = "strong health potion", chance = 2500},
	{name = "wyvern talisman", chance = 12300}
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -120},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -starts from up to 13hp per turn, maxDamage = -starts from up to 13hp per turn, range = ?, effect = <>, target = ?}, --Poison Wave
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -[[Drunkenness]] for up to 25 seconds, maxDamage = -[[Drunkenness]] for up to 25 seconds, range = ?, effect = <>, target = ?}, --Screech
--	{name ="healing", interval = 2000, chance = 20, minDamage = 45, maxDamage = 65},
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120, condition = {type = CONDITION_POISON, totalDamage = 480, interval = 4000}},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -240, maxDamage = -240, length = 8, spread = 3, effect = CONST_ME_POISONAREA, target = false},
	{name ="drunk", interval = 2000, chance = 10, length = 3, spread = 2, effect = CONST_ME_SOUND_RED, target = false, duration = 5000}
}

monster.defenses = {
	defense = 25,
	armor = 19,
	mitigation = 1.21,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 45, maxDamage = 65, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0},
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
