local mType = Game.createMonsterType("The Bloodweb")
local monster = {}

monster.description = "The Bloodweb"
monster.experience = 1450
monster.outfit = {
	lookType = 263,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1750
monster.maxHealth = 1750
monster.race = "undead"
monster.corpse = 7344
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{text = "Screeech!", yell = false},
}

monster.loot = {
	{id = 237, chance = 100000}, -- strong mana potion
	{id = 5879, chance = 50000}, -- spider silk
	{id = 829, chance = 33333}, -- glacier mask
	{id = 823, chance = 33333}, -- glacier kilt
	{id = 10389, chance = 20000}, -- sai
	{id = 7437, chance = 20000}, -- sapphire hammer
	{id = 5801, chance = 7692}, -- jewelled backpack
	{id = 3370, chance = 7692}, -- knight armor
	{id = 3371, chance = 5555}, -- knight legs
	{id = 7290, chance = 3703}, -- shard
	{id = 3053, chance = 3703} -- time ring
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -280},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -50, maxDamage = -210, range = ?, effect = <>, target = ?}, --[[Ice Missile]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -0, range = ?, effect = <>, target = ?}, --[[Paralyze|Paralyzing Ice Bomb]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -0, range = ?, effect = <>, target = ?}, --[[Paralyze|Paralyzing snowball]]
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 40, attack = 100, condition = {type = CONDITION_POISON, totalDamage = 8, interval = 4000}},
	{name ="speed", interval = 2000, chance = 20, speedChange = -850, range = 7, radius = 7, effect = CONST_ME_POFF, target = false, duration = 8000},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -60, maxDamage = -150, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true}
}

monster.defenses = {
	defense = 20,
	armor = 25,
--	mitigation = ???,
	{name ="speed", interval = 3000, chance = 40, speedChange = 380, effect = CONST_ME_MAGIC_RED, target = false, duration = 80000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
