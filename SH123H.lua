local userInput = game:service('UserInputService')
			local runService = game:service('RunService')
			
			userInput.InputBegan:connect(function(Key)
				if Key.KeyCode == Enum.KeyCode.H then
					Enabled = not Enabled
					if Enabled == true then
						repeat
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().SpeedMultiplier
							runService.Stepped:wait()
						until Enabled == false
					end
				end
			end)
