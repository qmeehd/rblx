if game.PlaceId == 2202352383 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Qmee Hub | 💥SPTS Classic    ", IntroEnabled = false,  HidePremium = false, SaveConfig = true, ConfigFolder = "QmeeConfig"})

_G.autoFarm = true


function autoFarm()
    while autoFarm == true do
        local args = {
            [1] = {
                [1] = "Skill_Punch",
                [2] = "Right"
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
        wait(0.000001)        
    end
end
local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddToggle({
	Name = "Auto Punch",
	Default = false,
	Callback = function(Value)
		_G.autoFarm = (Value)
        _G.autoFarm()
end
})

end
OrionLib:Init()

