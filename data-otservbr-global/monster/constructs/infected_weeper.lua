local mType = Game.createMonsterType("Infected Weeper")
local monster = {}

monster.description = "an infected weeper"
monster.experience = 1200
monster.outfit = {
	lookType = 489,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 897
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Warzone 2."
	}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "fire"
monster.corpse = 15906
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	random = 20,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	--maxSummons = 6,
	--summons = {
	--	{name = "Parasite", chance = 10, interval = 2000, count = 6} -- Not normal summon
	--}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Moooaaan", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 198},
	{name = "platinum coin", chance = 100000, maxCount = 7},
	{id = 12600, chance = 1460} -- coal
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- Life Drain bomb 0-300 dmg Target true CONST_ANI_DEATH Effect CONST_ME_MAGIC_RED -- todoo
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -800, length = 7, spread = 8, effect = CONST_ME_FIREATTACK, target = false},
	{name ="speed", interval = 2000, chance = 10, speedChange = -800, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 30000}
	-- summon spell Blood Ball spawns parasites inside a 5 Radius
}

monster.defenses = {
	defense = 76,
	armor = 76,
	mitigation = 0.70,
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
