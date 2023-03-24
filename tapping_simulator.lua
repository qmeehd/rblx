if game.PlaceId == 9498006165 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Qmee Hub | [SHRINE⛩️] Tapping Simulator! 🐾", IntroEnabled = false ,  HidePremium = false, SaveConfig = true, ConfigFolder = "QmeeConfig"})

--Values

_G.autoFarm = true
_G.autoRebirth = true
_G.autoReward = true
_G.autoHatch = true
_G.rebirthUpgrade = true
_G.unlockPortal = true

--Functions

function autoFarm()
    while _G.autoFarm == true do
        local args = {
            [1] = "Main"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tap"):FireServer(unpack(args))
        wait(0.00000000001)        
    end
end

function autoRebirth()
    while _G.autoRebirth == true do
        local args = {
            [1] = 1
        }    
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
        wait()
    end
end

function autoReward()
    while _G.autoReward == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ClaimRandomReward"):FireServer()
        wait()
    end
end

function autoHatch()
    while _G.autoHatch == true do
        local args = {
            [1] = {},
            [2] = "Snow Egg",
            [3] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HatchEgg"):InvokeServer(unpack(args))        
    end
end

function rebirthUpgrade()
    while _G.rebirthUpgrade == true do
        local args = {
            [1] = "rebirthUpgrades"
        }  
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Upgrade"):FireServer(unpack(args))
        wait()
    
    end
end

function unlockPortal()
    while _G.unlockPortal == true do
        local args = {
            [1] = "Snow"
        }
     
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UnlockPortal"):FireServer(unpack(args))
        wait()
    end
end
--Tabs

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

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = Value
        autoRebirth()    
    end
})

FarmTab:AddToggle({
	Name = "Auto Reward",
	Default = false,
	Callback = function(Value)
		_G.autoReward = Value
        autoReward()    
    end
})

FarmTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = Value
        autoHatch()    
    end
})

FarmTab:AddToggle({
	Name = "Rebirth Upgrade",
	Default = false,
	Callback = function(Value)
		_G.rebirthUpgrade = Value
        rebirthUpgrade()    
    end
})

FarmTab:AddToggle({
	Name = "Portal Unlocker",
	Default = false,
	Callback = function(Value)
		_G.unlockPortal = Value
        unlockPortal()    
    end
})


end
OrionLib:Init()

