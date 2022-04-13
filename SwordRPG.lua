getgenv().AutoXPFarm = false
getgenv().Defense = false
local player = game:GetService("Players").LocalPlayer
local SwordRemote = game:GetService("Players").LocalPlayer.RemoteFunctions.SwordShopSystem
local statsremote = game:GetService("Players").LocalPlayer.RemoteFunctions.UpgradeFunction
local tools = {}

local function GetLocalLevel()
	return player.leaderstats.Lvl.Value
end

local function GetLocalTools()
	for i,v in pairs(player.Backpack:GetChildren()) do
		if v.ClassName == "Tool" and v.Parent then
			tools[i] = v
		end
	end
end

local function Sword(BuyorSell, value, Sword)
	SwordRemote:FireServer(BuyorSell, value, Sword)
end


local function FarmXP(toolstable)
	local Hum = player.Character.HumanoidRootPart
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		local Level = GetLocalLevel()
		if v.Name == "RPG Mob" and v.Parent then
			for _,q in pairs(v:GetDescendants()) do
				if q.Name == "Lvl" and v.Parent then
				if q.Value < Level then
				if q.Parent.Parent.Human.Health > 0 then
				wait(0.5)
				Hum.CFrame = CFrame.new(q.Parent.Parent.Torso.Position)
				player.Character.Humanoid:EquipTool(toolstable[3])
				toolstable[3]:Activate()
				toolstable[3]:Deactivate()
			end
		end
	end
end
end
end
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Legendary Swords RPG")

local b = w:CreateFolder("Farming")

local f = w:CreateFolder("Misc")

local c = w:CreateFolder("Sell Weapons")

local d = w:CreateFolder("Buy Weapons")

local e = w:CreateFolder("Gold")

local exit = w:CreateFolder("DestroyGui")

b:Toggle("XPFarm",function(bool)
    AutoXPFarm = not AutoXPFarm
    spawn(function()
            while AutoXPFarm == true do wait(0.5)
            GetLocalTools()
            FarmXP(tools)
            else break
        end
    end)
end)

f:Toggle("GodMode (Mobs only)",function(bool)
    Defense = not Defense
    spawn(function()
            while Defense == true do wait()
            statsremote:FireServer("Defense", "One")
            else break
        end 
    end)
end)

c:Button("Sell Steel Sword",function()
    Sword("Sell", 45, "Steel")
end)

c:Button("Sell Iron Sword", function()
    Sword("Sell", 108, "Iron")
end)

c:Button("Sell Gold Sword", function()
    Sword("Sell", 210, "Gold")
end)

c:Button("Sell Diamond Sword", function()
    Sword("Sell", 500, "Diamond")
end)

c:Button("Sell DarkAxe", function()
    Sword("Sell", 1500, "Dark Axe")
end)

c:Button("Sell SerpentineAxe", function()
    Sword("Sell", 2500, "Serpentine Axe")
end)

c:Button("Sell DragonAxe", function()
    Sword("Sell", 4500, "DragonAxe")
end)

c:Button("Sell Ice Sword", function()
    Sword("Sell", 6700, "Ice Sword")
end)

c:Button("Sell Bone Sword", function()
    Sword("Sell", 9800, "Bone Sword")
end)

c:Button("Sell Frostbrand Sword", function()
    Sword("Sell", 15500, "Frostbrand")
end)

d:Button("Buy Steel Sword",function()
    Sword("Buy", 45, "Steel")
end)

d:Button("Buy Iron Sword", function()
    Sword("Buy", 108, "Iron")
end)

d:Button("Buy Gold Sword", function()
    Sword("Buy", 210, "Gold")
end)

d:Button("Buy Diamond Sword", function()
    Sword("Buy", 500, "Diamond")
end)

d:Button("Buy DarkAxe", function()
    Sword("Buy", 1500, "Dark Axe")
end)

d:Button("Buy SerpentineAxe", function()
    Sword("Buy", 2500, "Serpentine Axe")
end)

d:Button("Buy DragonAxe", function()
    Sword("Buy", 4500, "DragonAxe")
end)

d:Button("Buy Ice Sword", function()
    Sword("Buy", 6700, "Ice Sword")
end)

d:Button("Sell Bone Sword", function()
    Sword("Buy", 9800, "Bone Sword")
end)

d:Button("Buy Frostbrand Sword", function()
    Sword("Buy", 15500, "Frostbrand")
end)

e:Button("Inf Gold", function()
    Sword("Buy", -math.huge, "Steel")
end)

exit:DestroyGui()




