local Window = Rayfield:CreateWindow({
   Name = "ðŸ”¥ Dead rails | NASHhub ðŸ”«",
   LoadingTitle = "Dead Rails",
   LoadingSubtitle = "by nando from NASHhun",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = NASHhub,
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
      Note = "Key In Discord Server",
      FileName = "NASHhubKey"
      SaveKey = false,
      GrabKeyFromSite = true,
      Key = {"NASHhub57"}
   }
})

local MainTab = Window:CreateTab("ðŸ  Home", nil)
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
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	_G.infinJumpStarted = true
	
	game.StarterGui:SetCore("SendNotification", {Title=" NASHhub"; Text="Infinite Jump Activated!"; Duration=5;})

	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws",
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp",
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Dropdown = MainTab:CreateDropdown({
   Name = "Select Area",
   Options = {"Starter World","Pirate Island","Pineapple Paradise"},
   CurrentOption = {"Starter World"},
   MultipleOptions = false,
   Flag = "dropdownarea",
   Callback = function(Option)
        print(Option)
   end,
})

local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local OtherSection = MainTab:CreateSection("Other")

local Toggle = MainTab:CreateToggle({
   Name = "Auto Farm",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        print("FARMING")
   end,
})


local TPTab = Window:CreateTab("ðŸŽ² Misc", nil)
end
    end
end
