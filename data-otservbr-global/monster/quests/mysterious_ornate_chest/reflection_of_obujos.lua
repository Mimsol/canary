local mType = Game.createMonsterType("Reflection of Obujos")
local monster = {}

monster.description = "reflection of Obujos"
monster.experience = 20000?
monster.outfit = {
	lookType = 445,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 35000?
monster.maxHealth = 35000?
monster.race = "blood"
monster.corpse = 13797
monster.speed = 135
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 4
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
	rewardBoss = true,
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
	{id = 13998, chance = 100000}, -- depth scutum
	{id = 13991, chance = 1285}, -- deepling axe
	{id = 13999, chance = 1285, unique = true} -- ornate legs
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -1200},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -600, range = ?, effect = <>, target = ?}, --Great Cloud-Energy Bomb
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1300, range = ?, effect = <>, target = ?}, --Ice Beam
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1500, range = ?, effect = <>, target = ?}, --Eternal Winter Wave
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -800, range = ?, effect = <>, target = ?}, --Great Sudden Death Bomb
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -800, range = ?, effect = <>, target = ?}, --Distance Earth Attack (Assassin star/arrow)
--	{name ="healing", interval = 2000, chance = 20, minDamage = 0, maxDamage = 0},
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200, condition = {type = CONDITION_POISON, totalDamage = 360, interval = 4000}},
	{name ="combat", interval = 3000, chance = 23, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -800, range = 7, radius = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true},
	{name ="combat", interval = 3500, chance = 20, type = COMBAT_MANADRAIN, minDamage = -200, maxDamage = -600, range = 7, radius = 6, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_BIGCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -800, range = 7, radius = 1, shootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="combat", interval = 1200, chance = 7, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1300, length = 8, spread = 3, effect = CONST_ME_GIANTICE, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -1600, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
--	mitigation = ???,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2100, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
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
