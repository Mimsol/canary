local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setArea(createCombatArea(AREA_SHORTWAVE3))

local synergicCombat = Combat()
synergicCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
synergicCombat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
synergicCombat:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.5) + 20
	local max = (level / 5) + (maglevel * 7.6) + 48
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local party = creature:getParty()
	local hasSynergy = false
	if party and party:isSharedExperienceEnabled() then
		hasSynergy = party:hasSorcerer()
	end

	if hasSynergy then
		return synergicCombat:execute(creature, var)
	end

	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(43)
spell:name("Strong Ice Wave")
spell:words("exevo gran frigo hur")
spell:level(40)
spell:mana(170)
spell:needDirection(true)
spell:cooldown(8 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("druid;true", "elder druid;true")
spell:register()
