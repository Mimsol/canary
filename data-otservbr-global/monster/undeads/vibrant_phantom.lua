local mType = Game.createMonsterType("Vibrant Phantom")
local monster = {}

monster.description = "a vibrant phantom"
monster.experience = 19700
monster.outfit = {
	lookType = 1298,
	lookHead = 85,
	lookBody = 85,
	lookLegs = 88,
	lookFeet = 91,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1929
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Furious Crater."
}

monster.health = 27000
monster.maxHealth = 27000
monster.race = "undead"
monster.corpse = 33813
monster.speed = 230
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
	targetDistance = 4,
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
	{text = "All this beautiful lightning.", yell = false},
	{text = "Feel the vibration!", yell = false},
}

monster.loot = {
	{name = "crystal coin", chance = 70540},
	{name = "ultimate health potion", chance = 32220, maxCount = 7},
	{id = 281, chance = 54560}, -- giant shimmering pearl (green)
	{name = "violet gem", chance = 74560},
	{name = "terra rod", chance = 21920},
	{name = "hailstorm rod", chance = 21920},
	{name = "gold ingot", chance = 54560},
	{name = "green gem", chance = 64560},
	{name = "blue gem", chance = 54560},
	{name = "underworld rod", chance = 24920},
	{name = "springsprout rod", chance = 18920},
	{name = "blue crystal shard", chance = 11920},
	{name = "violet crystal shard", chance = 11920},
	{id = 23529, chance = 28920}, -- ring of blue plasma
	{id = 34143, chance = 3500}, -- vibrant heart
	{id = 34144, chance = 4500}, -- vibrant robe
	{id = 34109, chance = 50} -- bag you desire
}

-- TODO: monster-abilities
--monster.attacks = {
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -900, maxDamage = -1200, range = ?, effect = <>, target = ?}, --[[Energy Damage|Spark Ball]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -950, maxDamage = -1300, range = ?, effect = <>, target = ?}, --[[Holy Damage|Holy Chain]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -1200, maxDamage = -1400, range = ?, effect = <>, target = ?}, --[[Holy Damage|Divine Missile]]
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -?, maxDamage = -?, range = ?, effect = <>, target = ?}, --[[Energy Damage|Small Spark Ball]] on itself
--}
monster.attacks = {
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -700, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, radius = 4, effect = CONST_ME_ENERGYAREA, target = false}
	-- Chain: const_me-> CONST_ME_PINK_ENERGY_SPARK, combat_t->COMBAT_HOLYDAMAGE
}

monster.defenses = {
	defense = 75,
	armor = 100,
	mitigation = 2.45,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 10},
	{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
