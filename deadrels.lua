local Window = Rayfield:CreateWindow({
    Name = "🚀 Dead rails | NASHhub 🎮",
    LoadingTitle = "Dead Rails",
    LoadingSubtitle = "by nando from NASHhub",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "NASHhub",
        FileName = "NASHhub"
    },
    Discord = {
        Enabled = true,
        Invite = "https://discord.gg/pUHUtHfT",
        RememberJoins = true
    },
    KeySystem = true,
    KeySettings = {
        Title = "Key | NASHhub",
        Subtitle = "Key System",
        Note = "Key In Discord Server, don't forget to join my discord to get the key",
        FileName = "NASHhub|Key",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = {"NASHhub57"}
    }
})

local MainTab = Window:CreateTab("🏠 Home", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
    Title = "Executed the most insane script, NASHhub",
    Content = "NASHhub",
    Duration = 5,
    Image = 13047715178,
    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("The user tapped Okay!")
            end
        }
    }
})

local Button = MainTab:CreateButton({
    Name = "Infinite Jump Toggle",
    Callback = function()
        _G.infinjump = not _G.infinjump

        if _G.infinJumpStarted == nil then
            _G.infinJumpStarted = true
            
            game.StarterGui:SetCore("SendNotification", {
                Title="NASHhub", 
                Text="Infinite Jump Activated!", 
                Duration=5
            })

            local plr = game.Players.LocalPlayer
            local m = plr:GetMouse()
            m.KeyDown:connect(function(k)
                if _G.infinjump then
                    if k:byte() == 32 then
                        local humanoid = plr.Character and plr.Character:FindFirstChildOfClass('Humanoid')
                        if humanoid then
                            humanoid:ChangeState('Jumping')
                            wait()
                            humanoid:ChangeState('Seated')
                        end
                    end
                end
            end)
        end
    end,
})

local SliderWS = MainTab:CreateSlider({
    Name = "WalkSpeed Slider",
    Range = {1, 350},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "sliderws",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local SliderJP = MainTab:CreateSlider({
    Name = "JumpPower Slider",
    Range = {1, 350},
    Increment = 1,
    Suffix = "Power",
    CurrentValue = 50, -- This should be a reasonable default value for Jump Power 
    Flag = "sliderjp",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

local DropdownArea = MainTab:CreateDropdown({
    Name = "Select Area",
    Options = {"Starter World", "Pirate Island", "Pineapple Paradise"},
    CurrentOption = {"Starter World"},
    MultipleOptions = false,
    Flag ="dropdownarea",
    Callback= function(Option)
        print(Option)
   end,
})

local InputWS= MainTab:CreateInput({
   Name="Walkspeed",
   PlaceholderText="1-500 (only numbers)",
   RemoveTextAfterFocusLost=true,
   Callback=function(Text)
       local numberText=tonumber(Text)
       if numberText and numberText >= 1 and numberText <= 500 then
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=numberText
       else
           print("Please enter a valid Walkspeed between 1 and 500.")
       end
   end,
})

local OtherSection=MainTab:CreateSection("Other")

local ToggleAutoFarm=MainTab:CreateToggle({
   Name="Auto Farm",
   CurrentValue=false,
   Flag="Toggle1",
   Callback=function(Value)
       print("FARMING")
   end,
})


local TPTab=Window:CreateTab("🔧 Misc", nil)
