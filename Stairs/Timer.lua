local start = game.Workspace.Map.Start
local stop = game.Workspace.Map.Stop

local time_val =40
local timer_started = false
local completed = false

local time_label= script.Parent
time_label.Visible = false

local LPlayer = game.Players.LocalPlayer

local function start_timer(otherPart)
	local player = game.Players:FindFirstChild(otherPart.Parent.Name)
	if player.Name == LPlayer.Name and not timer_started then
		timer_started = true
		time_label.Text = time_val
		player.PlayerGui.Timer.Label.Visible = true
		local time_num = tonumber(player.PlayerGui.Timer.Label.Text)
		while time_num > 0 do
			wait(1)
			time_num =time_num-1
			player.PlayerGui.Timer.Label.Text = tostring(time_num)
		end
		if not completed then
			player.PlayerGui.Timer.Label.Visible = false
			player.Character.Humanoid.Health = 0		
		end
		timer_started = false
		completed = false
		player.PlayerGui.Timer.Label.Text = time_val
	end
end

local function finish_timer(otherPart)
	local player = game.Players:FindFirstChild(otherPart.Parent.Name)
	if player.Name == LPlayer.Name then
		player.PlayerGui.Timer.Label.Visible = false
		completed = true
	end
end

start.Touched:Connect(start_timer)
stop.Touched:Connect(finish_timer)
