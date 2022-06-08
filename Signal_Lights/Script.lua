local trigger = game.Workspace.Trigger
local bridge = game.Workspace.Bridge


local onColor = Color3.fromRGB(0,255,0)
local offColor = Color3.fromRGB(255,0,0)


trigger.Color = offColor


local function showBridge ()
	trigger.Color = onColor
	bridge.CanCollide = true
	bridge.Transparency = 0.8
	wait(5)
	
	
	trigger.Color = offColor
	bridge.CanCollide = false
	bridge.Transparency = 1
end
trigger.Touched:Connect(showBridge)
