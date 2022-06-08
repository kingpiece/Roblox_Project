local function onPlayerJoin(player)


	local leaderstats = Instance.new("Folder")


	leaderstats.Name = "leaderstats"


	leaderstats.Parent = player


	


	


	local points = Instance.new("IntValue")


	points.Name = "Points"


	points.Value = 0


	points.Parent = leaderstats


	


	


	local items= Instance.new("IntValue")


	items.Name = "Items"


	items.Value = 0


	items.Parent = leaderstats


	


	


	


	local spaces = Instance.new("IntValue")


	spaces.Name = "Spaces"


	spaces.Value = 0


	spaces.Parent = leaderstats


	


end



game.Players.PlayerAdded:Connect(onPlayerJoin)


