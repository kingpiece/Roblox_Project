local gamePlayers = game:GetService("Players")
local runService = game:GetService("RunService")

local map = workspace.Map
local water = map.Water

local start = game.Workspace.Map.Start
local stop = game.Workspace.Map.Stop

local watereffect = true

local function start_water()
	wait(5)
	--move water
	local startPosition = Vector3.new(0,0,0)
	local waterX, waterZ = water.Size.X / 2, water.Size.Z /2
	local waterHeight = 0
	
	spawn(function()
		local finishHeight = 65
		
		water.Position = startPosition
		
		local startTime = tick()
		while true do
			waterHeight = (tick() - startTime) * 5
			
			if waterHeight >= finishHeight or watereffect == false then
				break
			end
			
			water.Size = Vector3.new(55, waterHeight,55)
			water.Position = startPosition + Vector3.new(0, waterHeight / 2, 0)
			
			runService.Heartbeat:Wait()
		end
	end)
	
	while true do
		for _, player in next, gamePlayers:GetPlayers() do
			if player.Character then
				local root = player.Character:FindFirstChild("HumanoidRootPart")
				if root then
					if root.Position.Y<= startPosition.Y = waterHeight and root.Position.X >= startPosition.X -  waterX and root.position.X <= startPosition.X + waterX and root.Position.Z >= startPosition.Z - waterZ and root.Position.Z <= startPosition.Z + waterZ then
						local human = player.Character:FindFirstChildOfClass("Humanoid")
						if human then
							human:TakeDamage(20)
						end
					end 
				end
			end
		end
		
		wait(1)
	end
end
