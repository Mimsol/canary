local mType = Game.createMonsterType("Draptor")
local monster = {}

monster.description = "a draptor"
monster.experience = 2400
monster.outfit = {
	lookType = 382,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 695
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 3,
	Locations = "North east of Dragonblaze Peaks in Zao during the announced dragons raid, up to 10 draptors per raid in httptibia.wikia.comwikiMappercoords129.235-121.223-7-2-1-0mark1129.210-121.212-7-9mark2129.194-121.251-7-9mark3129.165-122.4-7-9mark4130.6-122.17-7-9mark5130.51-121.210-7-9mark6129.230-121.186-7-9mark7130.11-121.182-7-9 these spots. Furthermore, 2 to 4 Draptors may also appear inside the Emperors Castle in Razachai in two diferent httpstibia.fandom.comwikiMappercoords129.55-121.127-10-4-1-1mark1129.84-121.105-10-9mark2129.31-121.140-10-9 rooms. This raid is independent of Dragons raid and happens every 5 to 7 days."
}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 12329
monster.speed = 340
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	runHealth = 350,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "EEHEEHEEHEEH", yell = true},
	{text = "SCREEEEECH", yell = true},
	{text = "GRRR", yell = true},
}

monster.loot = {
	{name = "gold coin", chance = 33750, maxCount = 90},
	{name = "gold coin", chance = 33750, maxCount = 60},
	{name = "strong health potion", chance = 3150},
	{name = "strong mana potion", chance = 4150},
	{name = "dragon robe", chance = 950},
	{name = "draptor scales", chance = 6650}
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -230},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -197, maxDamage = -300?, range = ?, effect = <>, target = ?}, --[[Energy Damage|Energy Hit]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -130, maxDamage = -210+, range = ?, effect = <>, target = ?}, --[[Berserk|Yellow Energy Berserk]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -98, maxDamage = -120?, range = ?, effect = <>, target = ?}, --Infrequent [[Fire Wave]]
--	{name ="healing", interval = 2000, chance = 20, minDamage = 200, maxDamage = 250},
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -red music?, maxDamage = -red music?, range = ?, effect = <>, target = ?}, --[[Haste]]
--}
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
	{name ="combat", interval = 3000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -130, maxDamage = -310, radius = 3, effect = CONST_ME_YELLOWENERGY, target = false},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -300, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2500, chance = 17, type = COMBAT_FIREDAMAGE, minDamage = -70, maxDamage = -250, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 37,
	armor = 40,
	mitigation = 0.91,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 57, maxDamage = 93, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 12, speedChange = 457, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 50},
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
