local Window = Rayfield:CreateWindow({
    Name = "NANDO WUT WUT",
    LoadingTitle = "You Loaded NASHhub sc",
    LoadingSubtitle = "by NANDO on discord.",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = NASHhub,
        FileName = "NANDOxNATHUB"
    },
    Discord = {
        Enabled = true,
        Invite = "https://discord.gg/6JH3wJJ",
        RememberJoins = true
    },
    KeySystem = true,
    KeySettings = {
        Title = "key",
        Subtitle = "Key System",
        Note = "Jan lupa join discord.",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = true,
        Key = {"WUT WUT"}
    }
})

local MainTab = Window:CreateTab("Home", nil)

Rayfield:Notify({
    Title = "Executed/Succesfully:D",
    Content = "Enjoy>.<",
    Duration = 5,
    Image = nil,
    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("The user tapped Okay!")
            end
        },
    },
})

local autoParryButton = MainTab:CreateButton({
    Name = "Auto Parry",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/AutoBlock"))()
    end,
})

local playerTab = Window:CreateTab("Player", nil)

local walkSpeedSlider = playerTab:CreateSlider({
    Name = "Walkspeed!",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local infJumpButton = playerTab:CreateButton({
    Name = "Inf jump",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BsGlitch/-nfJumps/main/BsGlitch"))()
    end,
})

local shopTab = Window:CreateTab("Shop", nil)

local swordAutobuyButton = shopTab:CreateButton({
    Name = "Sword Autobuy",
    Callback = function()
        while true do
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.Store.RequestOpenSwordBox:InvokeServer()
        end
    end,
})

local spamParryButton = MainTab:CreateButton({
   Name = "Spam parry (Autoclick for close Range)",
   Callback = function()
       local runningSpamParryLoop
       runningSpamParryLoop=true
       while runningSpamParryLoop do
           task.wait(0.1)
           local ball=workspace.Balls:FindFirstChildWhichIsA("BasePart")
           local character=game.Players.LocalPlayer.Character
           if ball and character then 
               local balldist=6
               local dist=(ball.Position-character.HumanoidRootPart.Position).Magnitude 
               if dist <= balldist and character:FindFirstChild("Highlight") then
                 
                   print("Simulated pressing F") 
               end 
           end 
       end 
   end,
})
