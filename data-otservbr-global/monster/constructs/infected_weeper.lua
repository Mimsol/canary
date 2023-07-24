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
	Locations = "A total of 8 infected weepers spawn in Warzone 2, you can see the exact locations httpstibia.fandom.comwikiMappercoords129.27-124.202-11-2-1-1mark1129.26-124.215-11-21-1mark2129.35-124.172-11-21-3mark3129.63-124.191-11-21-3mark4128.251-124.226-11-21-1 here."
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
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 5,
	color = 157,
}

monster.summon = {
--	maxSummons = 6,
--	summons = {
--		{name = "Parasite", chance = 10, interval = 2000, count = 6}
--	}
} -- No summons here due the Spell when we want be accurate 

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Moooaaan", yell = false},
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 198},
	{name = "platinum coin", chance = 100000, maxCount = 7},
	{id = 12600, chance = 1460} -- coal
}

-- TODO: monster-abilities
monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -800, length = 8, spread = 5, effect = CONST_ME_FIREATTACK, target = false}, --Fire Beam
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -0, maxDamage = -300?, range = ?, effect = <>, target = ?}, --Life Drain Bomb on target idk if spell
{name ="speed", interval = 2000, chance = 10, speedChange = -800, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 30000}
--	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -summons [[Parasite]] inside the radius, maxDamage = -summons [[Parasite]] inside the radius, range = ?, effect = <>, target = ?}, --Blood Ball probaly spell also
}

monster.defenses = {
	defense = 45,
	armor = 76,
	mitigation = 2.19,
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
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
