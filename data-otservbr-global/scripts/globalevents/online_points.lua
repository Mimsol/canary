local config = {
	enabled = false,
	checkDuplicateIps = true,
	showMsgToFree = true,
	storage = Storage.OnlinePoints.Gain,

	interval = 1000 * 60 * 6,

	coinsFree = 5,
	coinsVip	= 10,
}

local onlineCoinsEvent = GlobalEvent("GainCoinInterval")
local intervalSeconds = config.interval / 1000

function onlineCoinsEvent.onThink(interval)
	if not config.enabled then return true end

	local players = Game.getPlayers()
	if #players == 0 then return true end

	for _, player in pairs(players) do
			local seconds = math.max(0, player:getStorageValue(config.storage))
			if seconds >= intervalSeconds then
				local coins = player:isVip() and config.coinsVip or config.coinsFree
				player:addTibiaCoins(coins, true)
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "You have received " .. coins .. " online points.")

				player:setStorageValue(config.storage, 0)
				return true
			end
			player:setStorageValue(config.storage, seconds + math.ceil(interval / 1000))
	end
	return true
end

if config.enabled then
	onlineCoinsEvent:interval(config.interval)
	onlineCoinsEvent:register()
end
