local pointPart = script.Parent
local MeshpartPoints = 30
local Players = game:GetService("Players")

local function givePoints(player)
	local playerStats = player:WaitForChild("leaderstats")
	local playerPoints = playerStats:WaitForChild("Points")
	playerPoints.Value = playerPoints.Value + MeshpartPoints
	pointPart:Destroy()
	local playerCharacter = player.Character
	local particle = Instance.new("ParticleEmitter")
	particle.Parent = playerCharacter:WaitForChild("Head")
	wait(1)
	particle:Destroy()
end
local function partTouched(otherPart)
	local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
	if player then
		givePoints(player)
	end
end
pointPart.Touched:Connect(partTouched)
