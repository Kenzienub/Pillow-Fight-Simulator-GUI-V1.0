if game.PlaceId == 314927855 then

print("Pillow Fight Simulator GUI V1.0 | Can be buggy.")	

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Pillow Fight Simulator GUI v1.0", "BloodTheme")

--FirstPage
local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("VoteSpawn")

Section:NewButton("Island", "Teleports To Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37.12148619, 2465.02368, 174.36705, -0.833694696, -0.130961537, 0.536471963, -0.0452077314, 0.984397352, 0.170053124, -0.550372005, 0.117519706, -0.826607347)
end)

Section:NewButton("Launcher", "Teleports To Launcher", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.3368454, 2468.66357, 99.8095551, -0.0871727318, 0.257885367, -0.962234914, 2.45850533e-05, 0.965912461, 0.258868724, 0.99619323, 0.0225426499, -0.0842075571)
end)

local Section = Tab:NewSection("MainSpawn")

Section:NewButton("WinnerSpawn", "Teleports To WinnerSpawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.2999821, 2943, 119.699936, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Section:NewButton("LoserSpawn", "Teleports To LoserSpawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.2999763, 2937.19922, 118.299934, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

--SecondPage
local Tab = Window:NewTab("Automaticly")

local Section = Tab:NewSection("AutoWin V1")

Section:NewButton("PR", "Automaticly Wins In PR | Rainbow Map", function()
    if game.Workspace.Map.Gamemode.PR then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(394.599976, 223.699387, 0.599995017, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end
end)

Section:NewButton("KTH ", "Automaticly Wins In KTH | Toy Map", function()
    if game.Workspace.Map.Gamemode.KTH then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.564720511, 71.8158951, 0.649995029, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end
end)

local Section = Tab:NewSection("AutoWin V2")

Section:NewToggle("CTC", "Automaticly Wins In CTC", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
        while game.Workspace.Map.Gamemode.CTC do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.2111273, 49.19907, 130.717407, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37.12148619, 2465.02368, 174.36705, -0.833694696, -0.130961537, 0.536471963, -0.0452077314, 0.984397352, 0.170053124, -0.550372005, 0.117519706, -0.826607347)
        end
        end
    else
        _G.loop = false
        while _G.loop == true do wait()
        while game.Workspace.Map.Gamemode.CTC do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.2111273, 49.19907, 130.717407, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37.12148619, 2465.02368, 174.36705, -0.833694696, -0.130961537, 0.536471963, -0.0452077314, 0.984397352, 0.170053124, -0.550372005, 0.117519706, -0.826607347)
        end
    end
end
end)



local Section = Tab:NewSection("AutoFarm")


Section:NewToggle("Star", "Automaticly Collects Stars", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["Star"].CFrame
        end
    else
        _G.loop = false
        while _G.loop == true do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["Star"].CFrame
        end
    end
end)

--ThirdPage
local Tab = Window:NewTab("Commands")

local Section = Tab:NewSection("Cracked Mods")

Section:NewButton("infinite yield", "Gives you Tons of Commands!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)


local Tab = Window:NewTab("ChatSpam")

local Section = Tab:NewSection("")

Section:NewTextBox("ChatDelay", "It will set the chat delay Spam", function(txt12)
    delay = txt12
end)

Section:NewTextBox("ChatSpam", "Will send a text to the public!", function(txt1)
    _G.loop = true
    while _G.loop == true do wait(delay)
	local args = {[1] = txt1,[2] = "All"}
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end)

Section:NewButton("StopSpam", "Stop Spamming Text", function()
    _G.loop = false
    while _G.loop == true do wait(delay)
	local args = {[1] = txt1,[2] = "All"}
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end)
end
