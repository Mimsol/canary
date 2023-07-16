local mType = Game.createMonsterType("White Deer")
local monster = {}

monster.description = "a white deer"
monster.experience = 0
monster.outfit = {
	lookType = 400,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 720
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
	toKill = 250,
	FirstUnlock = 10,
	SecondUnlock = 100,
	CharmsPoints = 5,
	Stars = 1,
	Occurrence = 2,
	Locations = "Around AbDendriel, Carlin east from Lothar, Femor Hills and Ferngrims Gate, usually in pairs. They will appear when theyre not Overhunting World Changeoverhunted.1. Mapper Coords127.143124.8772texthere  2. Mapper Coords127.113124.5772texthere3. Mapper Coords127.122124.6672texthere4. Mapper Coords127.62123.23672texthere5. Mapper Coords126.253123.22272texthere6. Mapper Coords126.234123.16872texthere7. Mapper Coords126.158123.11572texthere8. Mapper Coords126.128123.20272texthere9. Mapper Coords126.85123.18772texthere10. Mapper Coords125.254123.22272texthere"
}

monster.health = 195
monster.maxHealth = 195
monster.race = "blood"
monster.corpse = 0
monster.speed = 104
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 195,
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
	{text = "*bell*", yell = false},
	{text = "ROOOAAARR!!", yell = true},
	{text = "*sniff*", yell = false},
	{text = "*wheeze*", yell = false},
}

monster.loot = {
}

-- TODO: monster-abilities
--monster.attacks = {
--}

monster.defenses = {
	defense = 5,
	armor = 2,
	mitigation = 0.56,
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
