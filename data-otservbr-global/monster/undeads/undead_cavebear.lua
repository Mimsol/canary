local mType = Game.createMonsterType("Undead Cavebear")
local monster = {}

monster.description = "an undead cavebear"
monster.experience = 600
monster.outfit = {
	lookType = 384,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 696
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 3,
	Locations = "Lich Hell, httpstibia.fandom.comwikiMappercoords124.204-127.66-10-4-1-1mark1124.169-127.48-10-9mark2124.221-127.81-10-9mark3124.236-127.48-10-9 spots are marked here.noincludebr Minimapx124.205y127.65z10zoom2zoomm1width0.4height0.3centermarknomark1124.169,127.48,9,mark2124.221,127.81,9,mark3124.236,127.48,9,noinclude"
}

monster.health = 450
monster.maxHealth = 450
monster.race = "undead"
monster.corpse = 12336
monster.speed = 109
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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
	{text = "Grrrrrrrrrrrr", yell = false},
	{text = "Groooowl", yell = false},
}

monster.loot = {
	{name = "gold coin", chance = 31820, maxCount = 80},
	{name = "maxilla", chance = 13640},
	{name = "cavebear skull", chance = 2600},
	{name = "health potion", chance = 1300}
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -150?},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -70, maxDamage = -130, range = ?, effect = <>, target = ?}, --[[Sudden Death]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -50+, maxDamage = -50+, range = ?, effect = <>, target = ?}, --[[Sudden Death]] [[Berserk]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -?, maxDamage = -?, range = ?, effect = <>, target = ?}, --[[Life Drain]] Bomb
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -?, maxDamage = -?, range = ?, effect = <>, target = ?}, --Poison Beam
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400}
}

monster.defenses = {
	defense = 27,
	armor = 28,
	mitigation = 0.72,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -25},
	{type = COMBAT_DEATHDAMAGE, percent = 100},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
