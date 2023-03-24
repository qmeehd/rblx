if game.PlaceId == 8750997647 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Qmee Hub | Tapping Legends X", IntroEnabled = false,  HidePremium = false, SaveConfig = true, ConfigFolder = "QmeeConfig"})

--Values
_G.autoFarm = true


--Functions
function autoFarm()
    while g.autoFarm == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Tap"):FireServer()
        wait(.000000000000000000000000000000000001)
    end
end


-- Tabs
local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
FarmTab:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
		_G.autoFarm = Value
        autoFarm()
	end    
})


end
OrionLib:Init()