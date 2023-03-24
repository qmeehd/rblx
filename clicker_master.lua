if game.PlaceId == 5490351219 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Qmee Hub | X100 CLICKS 🎉 Clicker Madness!😈", IntroEnabled = false,  HidePremium = false, SaveConfig = true, ConfigFolder = "QmeeConfig"})

--Values
_G.autoFarm = true
_G.autoRebirth = true
_G.autoEquipPet = true

--Functions
function autoFarm()
    while _G.autoFarm == true do
        local args = {
            [1] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Aero"):WaitForChild("AeroRemoteServices"):WaitForChild("ClickService"):WaitForChild("Click"):FireServer(unpack(args)) 
        wait(.0000000000000000000000000000000001)
    end
end

function autoRebirth()
    while _G.autoRebirth == true do 
        local args = {
            [1] = 100
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Aero"):WaitForChild("AeroRemoteServices"):WaitForChild("RebirthService"):WaitForChild("BuyRebirths"):FireServer(unpack(args))
        wait(.00000000000000000001)        
    end
end

function autoEquipPet()
    while _G.autoEquipPet == true do
        local args = {
            [1] = "zpRRy3gOepNZ"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Aero"):WaitForChild("AeroRemoteServices"):WaitForChild("PetService"):WaitForChild("EquipPet"):FireServer(unpack(args))        
        wait()
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

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = Value
        autoRebirth()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Equip Pet",
	Default = false,
	Callback = function(Value)
		_G.autoEquipPet = Value
        autoEquipPet()
	end    
})


    OrionLib:Init()
end