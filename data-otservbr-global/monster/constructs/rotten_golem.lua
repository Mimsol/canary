local mType = Game.createMonsterType("Rotten Golem")
local monster = {}

monster.description = "a rotten golem"
monster.experience = 17860
monster.outfit = {
	lookType = 1312,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1939
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Rotten Wasteland."
}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "venom"
monster.corpse = 33897
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	canPushCreatures = false,
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
	{name = "crystal coin", chance = 70540},
	{name = "great spirit potion", chance = 32220, maxCount = 7},
	{id = 281, chance = 54560}, -- giant shimmering pearl (green)
	{id = 282, chance = 54560}, -- giant shimmering pearl (brown)
	{name = "terra amulet", chance = 35500},
	{name = "giant sword", chance = 13500},
	{name = "war axe", chance = 9500},
	{name = "mercenary sword", chance = 11500},
	{name = "titan axe", chance = 19500},
	{name = "underworld rod", chance = 35500},
	{name = "sacred tree amulet", chance = 17500},
	{name = "fur armor", chance = 9500},
	{name = "terra mantle", chance = 3500},
	{name = "wood cape", chance = 2500},
	{name = "rubber cap", chance = 1500},
	{name = "stone skin amulet", chance = 2000},
	{id = 34109, chance = 50} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -750, maxDamage = -1200, radius = 7, effect = CONST_ME_BIGPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -1200, maxDamage = -1400, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="root", interval = 2000, chance = 10, target = true}
	--Chains COMBAT_EARTHDAMAGE CONST_ME_GREEN_ENERGY_SPARK -- TODO
}

monster.defenses = {
	defense = 110,
	armor = 108,
	mitigation = 3.04,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 50},
	{type = COMBAT_DEATHDAMAGE, percent = -20},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
