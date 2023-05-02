local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local duration = 13000

local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_SUBID, 5)
skill:setParameter(CONDITION_PARAM_TICKS, duration)
skill:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, 220)
skill:setParameter(CONDITION_PARAM_BUFF_DAMAGEDEALT, 65)
skill:setParameter(CONDITION_PARAM_BUFF_DAMAGERECEIVED, 85)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:addCondition(skill)

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	local party = creature:getParty()
	local synergies = {
		druid = false,
	}
	if party and party:isSharedExperienceEnabled() then
		if party:hasDruid() then
			synergies.druid = true
		end
	end

	if synergies.druid then
		local protectParty = Condition(CONDITION_ATTRIBUTES)
		protectParty:setParameter(CONDITION_PARAM_SUBID, 5)
		protectParty:setParameter(CONDITION_PARAM_TICKS, duration)
		protectParty:setParameter(CONDITION_PARAM_BUFF_DAMAGERECEIVED, 98)
		protectParty:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
		local members = {party:getLeader()}

		for _, member in ipairs(party:getMembers()) do
			table.insert(members, member)
		end

		for _, member in ipairs(members) do
			if creature:getId() ~= member:getId() then
				member:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
				member:addCondition(protectParty)
			end
		end
	end

	if creature:getCondition(CONDITION_ATTRIBUTES, CONDITIONID_COMBAT, 5) then
		creature:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_COMBAT, 5)
	end
	return combat:execute(creature, variant)
end

spell:name("Protector")
spell:words("utamo tempo")
spell:group("support", "focus")
spell:vocation("knight;true", "elite knight;true")
spell:id(132)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000, 2 * 1000)
spell:level(55)
spell:mana(200)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
