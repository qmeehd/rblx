if game.PlaceId == 3956818381 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Qmee Hub |⚡Ninja Legends", IntroEnabled = false,  HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
_G.autoFarm = true



-- Functions
function autoFarm()
    while _G.autoFarm == true do
        local args = {
            [1] = "swingKatana"
        }   
        game:GetService("Players"):WaitForChild("blobglobber998"):WaitForChild("ninjaEvent"):FireServer(unpack(args))
        wait()
        
    end  
end


-- Tabs
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
MainTab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
		_G.autoFarm = Value
        autoFarm()
	end    
})

-- Sliders
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
MainTab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,1,
	Max = 250,
	Default = Humanoid.WalkSpeed,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		Humanoid.WalkSpeed = Value
	end    

    
})

OrionLib:Init()
end