local mType = Game.createMonsterType("Shadow Fiend")
local monster = {}

monster.description = "a shadow fiend"
monster.experience = ?
monster.outfit = {
	lookType = 320,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = ?
monster.maxHealth = ?
monster.race = "undead"
monster.corpse = 24256
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 10,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -?},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -300, range = ?, effect = <>, target = ?}, --Life Drain missile
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 30, condition = {type = CONDITION_POISON, totalDamage = 80, interval = 4000}},
	{name ="nightstalker paralyze", interval = 2000, chance = 19, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_LIFEDRAIN, minDamage = -360, maxDamage = -470, radius = 5, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="speed", interval = 2000, chance = 20, speedChange = -600, range = 6, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = false, duration = 20000},
	{name ="silencer skill reducer", interval = 2000, chance = 30, range = 4, effect = CONST_ME_POFF, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 30,
--	mitigation = ???,
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_HEALING, minDamage = 160, maxDamage = 230, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
