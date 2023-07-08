local configs = {
	-- Override examples
	--- durationOverride = 30,
	--- cooldownOverride = 60,
	--- tickTypeOverride = ConcoctionTickType.Experience,

	[Concoction.Ids.BestiaryBetterment] = { multiplier = 2.0 },
	[Concoction.Ids.WealthDuplex] = { multiplier = 2.0 },
}

for concoctionKey, concoctionId in pairs(Concoction.Ids) do
	Concoction.new({
		id = concoctionId,
		timeLeftStorage = Storage.TibiaDrome[concoctionKey].TimeLeft,
		lastActivatedAtStorage = Storage.TibiaDrome[concoctionKey].LastActivatedAt,
		config = configs[concoctionId] or {},
	}):register()
end

local concoctionsOnLogin = CreatureEvent("ConcoctionsOnLogin")

function concoctionsOnLogin.onLogin(player)
	Concoction.initAll(player, true)
	return true
end

concoctionsOnLogin:register()
