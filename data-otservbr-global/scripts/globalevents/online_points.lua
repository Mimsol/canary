local config = {
	enabled = true,
	storage = Storage.OnlinePoints.Gain,
	checkDuplicateIps = false,
	showMsgToFree = true,

	interval = 60 * 1000,

	-- per hour | system will calculate how many coins will be given and when
	coinsFree = 50,
	coinsVip = 100,
}

local onlineCoinsEvent = GlobalEvent("GainCoinInterval")
local runsPerHour = 3600 / (config.interval / 1000)

local function coinsPerRun(coinsPerHour)
	return coinsPerHour / runsPerHour
end

function onlineCoinsEvent.onThink(interval)
	if not configManager.getBoolean(configKeys.VIP_SYSTEM_ENABLED) then
		return false
	end

	local players = Game.getPlayers()
	if #players == 0 then
		return true
	end

	local checkIp = {}
	for _, player in pairs(players) do
		local ip = player:getIp()
		if ip ~= 0 and (not config.checkDuplicateIps or not checkIp[ip]) then
			checkIp[ip] = true
			local remainder = math.max(0, player:getStorageValue(config.storage)) / 10000000
			local coins = coinsPerRun(player:isVip() and config.coinsVip or config.coinsFree) + remainder
			if coins >= 1 then
				player:addTibiaCoins(math.floor(coins), true)
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "You have received " .. math.floor(coins) .. " online points.")
			end
			player:setStorageValue(config.storage, (coins - math.floor(coins)) * 10000000)
		end
	end
	return true
end

if config.enabled then
	onlineCoinsEvent:interval(config.interval)
	onlineCoinsEvent:register()
end
