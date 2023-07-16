local mType = Game.createMonsterType("Wisp")
local monster = {}

monster.description = "a wisp"
monster.experience = 0
monster.outfit = {
	lookType = 294,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 462
monster.Bestiary = {
	class = "Fey",
	race = BESTY_RACE_FEY,
	toKill = 250,
	FirstUnlock = 10,
	SecondUnlock = 100,
	CharmsPoints = 5,
	Stars = 1,
	Occurrence = 0,
	Locations = "All around Tiquanda and Feyrist. Several groups of Wisps can be found in and around the forests north of Edron 2 Mapper Coords129.100123.17173texthere, 3 Mapper Coords129.137123.21773textaround here, 3 Mapper Coords129.206123.19573textaround here and 2 Mapper Coords129.158124.773textaround here. 2 west of Hardek, Mapper Coords125.249126.9373texthere. 1 inside the Cyclops Camp. 2 north of the triple Wyvern spawn outside Kazordoon, Mapper Coords127.145124.9573texthere. 1 west of AbDendriel, Mapper Coords127.54123.16973texthere. 2 west of Venore Amazon Camp, Mapper Coords127.226124.17773texthere. A few spawns around Venore Mapper Coords128.136125.24273texthere, Mapper Coords128.218125.21073texthere, 2 Mapper Coords129.5125.21373texthere and 2 Mapper Coords129.62125.8273textaround here. 2 spawn on the Formorgar Glacier, Mapper Coords125.24121.12872texthere and Mapper Coords125.31121.20462texthere, and 1 on Krimhorn, Mapper Coords125.9122.10972texthere."
}

monster.health = 115
monster.maxHealth = 115
monster.race = "undead"
monster.corpse = 6323
monster.speed = 81
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0
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
	canPushCreatures = false,
	staticAttackChance = 15,
	targetDistance = 7,
	runHealth = 115,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 4,
	color = 204,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Crackle!", yell = false},
	{text = "Tsshh", yell = false},
}

monster.loot = {
	{name = "moon backpack", chance = 220}
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -3, maxDamage = -7, range = ?, effect = <>, target = ?}, --close range [[Life Drain]]
--	{name ="healing", interval = 2000, chance = 20, minDamage = 15, maxDamage = 25+},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -for 2 seconds, maxDamage = -for 2 seconds, range = ?, effect = <>, target = ?}, --[[Invisible]]
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -10},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -3, maxDamage = -7, range = 1, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
	defense = 10,
	armor = 7,
	mitigation = 0.43,
	{name ="speed", interval = 2000, chance = 15, speedChange = 200, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 15, maxDamage = 25, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 3000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 100},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
