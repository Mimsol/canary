function Party.broadcastPartyLoot(self, text)
	self:getLeader():sendTextMessage(MESSAGE_LOOT, text)
	local membersList = self:getMembers()
	for i = 1, #membersList do
		local player = membersList[i]
		if player then
			player:sendTextMessage(MESSAGE_LOOT, text)
		end
	end
end

function Party.hasVocation(self, vocationId)
	if self:getLeader():getVocation():getBaseId() == vocationId then
		return true
	end
	local membersList = self:getMembers()
	for i = 1, #membersList do
		local player = membersList[i]
		if player and player:getVocation():getBaseId() == vocationId then
			return true
		end
	end
	return false
end

function Party.hasKnight(self)
	return self:hasVocation(VOCATION.BASE_ID.KNIGHT)
end

function Party.hasPaladin(self)
	return self:hasVocation(VOCATION.BASE_ID.PALADIN)
end

function Party.hasSorcerer(self)
	return self:hasVocation(VOCATION.BASE_ID.SORCERER)
end

function Party.hasDruid(self)
	return self:hasVocation(VOCATION.BASE_ID.DRUID)
end
