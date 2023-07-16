local mType = Game.createMonsterType("Water Buffalo")
local monster = {}

monster.description = "a water buffalo"
monster.experience = 20
monster.outfit = {
	lookType = 523,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 872
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 3,
	Locations = "It raids every four hours, starting at server save, in groups of one to three at various places around Venore swamp, especially near the southern production site. Some sightings have been Mapper Coords128.96125.14374texthere, Mapper Coords128.108125.20174texthere, Mapper Coords128.123125.23674texthere, Mapper Coords128.183126.574texthere, Mapper Coords128.193125.22474texthere, Mapper Coords128.52125.17177texthere, Mapper Coords129.69125.7677texthere, and Mapper Coords129.38125.14377texthere."
}

monster.health = 390
monster.maxHealth = 390
monster.race = "blood"
monster.corpse = 17421
monster.speed = 75
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Gnarrr!", yell = false},
	{text = "Gnoorr!", yell = false},
	{text = "Mrrr!", yell = false},
	{text = "<snort>", yell = false},
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 20},
	{name = "meat", chance = 33600, maxCount = 4},
	{name = "ham", chance = 39200, maxCount = 3}
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -40+},
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30}
}

monster.defenses = {
	defense = 5,
	armor = 35,
	mitigation = 1.04,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
