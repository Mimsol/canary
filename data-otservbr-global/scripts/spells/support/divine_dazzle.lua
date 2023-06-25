local function getDiagonalDistance(pos1, pos2)
	local dstX = math.abs(pos1.x - pos2.x)
	local dstY = math.abs(pos1.y - pos2.y)
	if dstX > dstY then
		return 14 * dstY + 10 * (dstX - dstY)
	else
		return 14 * dstX + 10 * (dstY - dstX)
	end
end

local function chain(player, targets, duration)
	local party = player:getParty()
	local synergies = {
		knight = false,
		druid = false
	}
	if party and party:isSharedExperienceEnabled() then
		if party:hasKnight() then
			synergies.knight = true
		end
		if party:hasDruid() then
			synergies.druid = true
		end
	end

	if synergies.knight then
		duration = duration + 2000
	end

	local creatures = Game.getSpectators(player:getPosition(), false, false, 6, 6, 6, 6)
	local totalChain = 0
	local monsters = {}
	for _, creature in pairs(creatures) do
		if creature:isMonster() then
			local monster = creature:getMonster()
			if creature:getType():isRewardBoss() then
				return -1
			end
			if creature:getMaster() ~= nil then goto continue end
			if not synergies.knight and monster:isChallenged() then goto continue end

			local type = creature:getType()
			if type:getTargetDistance() > 1 or type:getRunHealth() > 0 or synergies.druid then
				table.insert(monsters, creature)
			end

			::continue::
		end
	end
	local lastChain = player
	local lastChainPosition = player:getPosition()
	local closestMonster, closestMonsterIndex, closestMonsterPosition
	local path, tempPosition, updateLastChain
	while (totalChain < targets and #monsters > 0) do
		closestMonster = nil
		for index, monster in pairs(monsters) do
			tempPosition = monster:getPosition()
			if not closestMonster or getDiagonalDistance(lastChain:getPosition(), tempPosition) < getDiagonalDistance(lastChain:getPosition(), closestMonsterPosition) then
				closestMonster = monster
				closestMonsterIndex = index
				closestMonsterPosition = tempPosition
			end
		end
		table.remove(monsters, closestMonsterIndex)
		updateLastChain = false
		if lastChainPosition:getDistance(closestMonsterPosition) == 1 then
			updateLastChain = true
		else
			path = lastChainPosition:getPathTo(closestMonsterPosition, 0, 1, true, true, 9)
			if path and #path > 0 then
				for i=1, #path do
					lastChainPosition:getNextPosition(path[i], 1)
					lastChainPosition:sendMagicEffect(CONST_ME_DIVINE_DAZZLE)
				end
				updateLastChain = true
			end
		end
		if updateLastChain then
			if synergies.knight then
				local monsterHaste = createConditionObject(CONDITION_HASTE)
				setConditionParam(monsterHaste, CONDITION_PARAM_TICKS, duration)
				setConditionParam(monsterHaste, CONDITION_PARAM_SPEED, closestMonster:getBaseSpeed() + 20)
				closestMonster:addCondition(monsterHaste)
			end
			closestMonsterPosition:sendMagicEffect(CONST_ME_DIVINE_DAZZLE)
			if not closestMonster:isChallenged() then
				closestMonster:changeTargetDistance(1, duration)
				if synergies.druid then
					doChallengeCreature(player, closestMonster, 6000)
				end
				lastChain = closestMonster
				lastChainPosition = closestMonsterPosition
				totalChain = totalChain + 1
			end
		end
	end
	return totalChain
end

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	local targets = 5
	local duration = 12000
	local player = creature:getPlayer()
	if creature and player then
		targets = targets + player:getWheelSpellAdditionalTarget("Divine Dazzle")
		duration = duration + (player:getWheelSpellAdditionalDuration("Divine Dazzle") * 1000)
	end
	local total = chain(creature, targets, duration)
	if total > 0 then
		return true
	elseif total == -1 then
		creature:sendCancelMessage("You can't use this spell if there's a boss.")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	else
		creature:sendCancelMessage("There are no applicable monsters.")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end
end

spell:group("support")
spell:id(238)
spell:name("Divine Dazzle")
spell:words("exana amp res")
spell:castSound(SOUND_EFFECT_TYPE_SPELL_DIVINE_DAZZLE)
spell:level(250)
spell:mana(80)
spell:isAggressive(false)
spell:isPremium(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:vocation("paladin;true", "royal paladin;true")
spell:needLearn(false)
spell:register()
