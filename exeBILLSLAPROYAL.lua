local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
-- Создать окно UI
local Window = Library.CreateLib("BILL", "RJTheme3")
 
-- Секция
local Tab = Window:NewTab("Slap Royal")
-- Подсекция
local Section = Tab:NewSection("mixs")
 
local decal_codes = {
 
    ["http://www.roblox.com/asset/?id=9648769161"] = "4",
 
    ["http://www.roblox.com/asset/?id=9648765536"] = "2",
 
    ["http://www.roblox.com/asset/?id=9648762863"] = "3",
 
    ["http://www.roblox.com/asset/?id=9648759883"] = "9",
 
    ["http://www.roblox.com/asset/?id=9648755440"] = "8",
 
    ["http://www.roblox.com/asset/?id=9648752438"] = "2",
 
    ["http://www.roblox.com/asset/?id=9648749145"] = "8",
 
    ["http://www.roblox.com/asset/?id=9648745618"] = "3",
 
    ["http://www.roblox.com/asset/?id=9648742013"] = "7",
 
    ["http://www.roblox.com/asset/?id=9648738553"] = "8",
 
    ["http://www.roblox.com/asset/?id=9648734698"] = "2",
 
    ["http://www.roblox.com/asset/?id=9648730082"] = "6",
 
    ["http://www.roblox.com/asset/?id=9648723237"] = "3",
 
    ["http://www.roblox.com/asset/?id=9648718450"] = "6",
 
    ["http://www.roblox.com/asset/?id=9648715920"] = "6",
 
    ["http://www.roblox.com/asset/?id=9648712563"] = "2"
 
    }
 
 
local Items = {"Potion of Strength", "Bull's essence", "Speed Potion", "Boba", "Frog Potion", "Strength Brew", "Frog Brew", "Speed Brew"}
local Lplr = game.Players.LocalPlayer
 
	local Time = tick()
 
	local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/R20-EXPLOITER/main/Files/Functions.lua"))()
 
 
 
local namecall
    namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local Args = {...}
        if getnamecallmethod() == "FireServer" and tostring(self) == "WS" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS2" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
            return
        end
        return namecall(self, ...)
    end)
Section:NewButton("Get All Items","get item", function()
 
    if Lplr.Character.inMatch.Value and workspace:FindFirstChildWhichIsA("Tool") then
 
        for _, Items in ipairs(game.Workspace:GetDescendants()) do
 
            if Items:IsA("TouchTransmitter") and Items.Parent.Name == "Handle" then
                Lplr.Character.Humanoid:EquipTool(Items.Parent.Parent)
            end
        end
 
        Lplr.Character.Humanoid:UnequipTools()
 
        else
 
            print("No Items")
 
    end
end)
 
Section:NewToggle("Anti Acid","wdw", function(bool)
 
    if bool == true then
 
        game.Workspace:FindFirstChild("antiAcid").CanCollide = true
 
    else
 
        game.Workspace:FindFirstChild("antiAcid").CanCollide = false
 
    end
 
end)
 
Section:NewToggle("Anti Lava","sd", function(bool)
 
    if bool == true then
 
        game.workspace:FindFirstChild("antiLava").CanCollide = true
 
    else
 
        game.workspace:FindFirstChild("antiLava").CanCollide = true
 
    end
 
end)
 
Section:NewSlider("WALKSPEED", "YOU SPEED", 300, 15, function(WS) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
 
    WS1 = WS
end)
 
Section:NewButton("Get Chain","dadasd", function()
 
    for i,v in ipairs(game:GetService("Workspace").Map:WaitForChild("CodeBrick"):WaitForChild("SurfaceGui"):GetDescendants()) do
 
        if v.Name == 'IMGTemplate' then
 
            local decal_url = tostring(v.Image)
            local code = decal_codes[decal_url]
 
            if 0 < #game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Display.SurfaceGui.TextLabel.Text then
                fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons.Reset.ClickDetector)
            end
 
            task.wait(.2)
 
            fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons[code].ClickDetector)
        end
    end
 
    task.wait(.2)
 
    fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons.Enter.ClickDetector)
end)
 
Section:NewToggle("Slap Aura","adwad",function(bool)
	slapAura = bool
 
	if bool == true then
 
	  while slapAura == true do
 
			task.wait()
 
			for _, L_8 in pairs(game.Players:GetPlayers()) do
 
				if L_8 ~= Lplr then
 
					if L_8.Character:FindFirstChild("HumanoidRootPart") ~= nil and L_8.Character:FindFirstChild("Humanoid") and not L_8.Character:FindFirstChild("Dead")  and not Lplr.Character:FindFirstChild("Dead")  then
 
						local magnitude = (L_8.Character.HumanoidRootPart.Position - Lplr.Character.HumanoidRootPart.Position).Magnitude
 
							if 20 >= magnitude then
								game:GetService("ReplicatedStorage").Events.Slap:FireServer(L_8.Character.Torso)
							end
 
						end
					end
				end
		end
 
	end
 
end)
 
 
Section:NewButton("ESP","adwad",function(bool)
    --[[
    Script: ESP Script
    Details: Nothing much. Its ESP Chams and the different colors are for different teams.
    Creds: idk
    ]]
    -- -----------------------------------
    --  ___      _   _   _              --
    -- / __| ___| |_| |_(_)_ _  __ _ ___--
    -- \__ \/ -_)  _|  _| | ' \/ _` (_-<--
    -- |___/\___|\__|\__|_|_||_\__, /__/--
    --                         |___/    --
    -- -----------------------------------
    -- -----------------------------------
                                    ALLYCOLOR = {0,255,255}     --//Color of the ESP  of people on the same team
                                    ENEMYCOLOR =  {255,0,0}     --//Color of the ESP  of people on NOT the same team
                                    TRANSPARENCY = 0.5          --//Transparency of the ESP
                                    HEALTHBAR_ACTIVATED = true  --//Renders the Healthbar
    --
    --
 
    --                          !!!Don't Change Anything Below Here Unless You Know What You're Doing!!!
 
    function createFlex()
    -- -----------------------------------------------------------------------------------
    --[VARIABLES] //Changing may result in Errors!
    players = game:GetService("Players") --//Required for PF
    faces = {"Front","Back","Bottom","Left","Right","Top"} --//Every possible Enum face
    currentPlayer = nil --//Used for the Team-Check
    lplayer = players.LocalPlayer --//The LocalPlayer
    -- -----------------------------------------------------------------------------------
    players.PlayerAdded:Connect(function(p)
        currentPlayer = p
            p.CharacterAdded:Connect(function(character) --//For when a new Player joins the game 
                createESP(character)            
            end)        
    end)
    -- -----------------------------------------------------------------------------------
    function checkPart(obj)  if (obj:IsA("Part") or obj:IsA("MeshPart")) and obj.Name~="HumanoidRootPart" then return true end end --//Check if the Part is suitable 
    -- -----------------------------------------------------------------------------------
    function actualESP(obj) 
 
        for i=0,5 do
            surface = Instance.new("SurfaceGui",obj) --//Creates the SurfaceGui
            surface.Face = Enum.NormalId[faces[i+1]] --//Adjusts the Face and chooses from the face table
            surface.AlwaysOnTop = true
 
            frame = Instance.new("Frame",surface)   --//Creates the viewable Frame
            frame.Size = UDim2.new(1,0,1,0)
            frame.BorderSizePixel = 0                                               
            frame.BackgroundTransparency = TRANSPARENCY
                if currentPlayer.Team == players.LocalPlayer.Team then --//Checks the Players Team
                        frame.BackgroundColor3 = Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3]) --//If in same Team                                         
                else
                    frame.BackgroundColor3 = Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])  --//If in another Team
                end
 
        end
    end
    -- -----------------------------------------------------------------------------------
    function createHealthbar(hrp) 
        board =Instance.new("BillboardGui",hrp) --//Creates the BillboardGui with HumanoidRootPart as the Parent
        board.Name = "total"
        board.Size = UDim2.new(1,0,1,0)
        board.StudsOffset = Vector3.new(3,1,0)
        board.AlwaysOnTop = true
 
        bar = Instance.new("Frame",board) --//Creates the red background
        bar.BackgroundColor3 = Color3.new(255,0,0)
        bar.BorderSizePixel = 0
        bar.Size = UDim2.new(0.2,0,4,0)
        bar.Name = "total2"
 
        health = Instance.new("Frame",bar) --//Creates the changing green Frame
        health.BackgroundColor3 = Color3.new(0,255,0)
        health.BorderSizePixel = 0
        health.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0)
            hrp.Parent.Humanoid.Changed:Connect(function(property) --//Triggers when any Property changed
                hrp.total.total2.Frame.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0) --//Adjusts the size of the green Frame                               
            end)
    end
    -- -----------------------------------------------------------------------------------
    function createESP(c) --//Checks and calls the proper function
        bugfix = c:WaitForChild("Head") --// *Used so the children of the character arent nil.
        for i,v in pairs(c:GetChildren()) do
            if checkPart(v) then
            actualESP(v)
            end
        end
        if HEALTHBAR_ACTIVATED then --//If the user decided to
            createHealthbar(c:WaitForChild("HumanoidRootPart")) --//Calls the function of the creation
        end
    end
    -- -----------------------------------------------------------------------------------
    for i,people in pairs(players:GetChildren())do
        if people ~= players.LocalPlayer then
            currentPlayer = people
                                                                    --//Used for Players already in the Game
            createESP(people.Character)
                people.CharacterAdded:Connect(function(character)
                    createESP(character)            
                end)
        end
    end
    -- -----------------------------------------------------------------------------------
    end --//End of the entire function
 
    createFlex() --// Does exactly that :)
end)

 
    local antiLava = Instance.new("Part", workspace)
        antiLava.Name = "antiLava"
        antiLava.Position = Vector3.new(-238, -43, 401)
        antiLava.Size = Vector3.new(150,10,150)
        antiLava.Anchored = true
        antiLava.Transparency = 1
        antiLava.CanCollide = false
 
        local antiAcid = Instance.new("Part", workspace)
        antiAcid.Name = "antiAcid"
        antiAcid.Size = Vector3.new(154, 26, 132)
        antiAcid.Position = Vector3.new(-60, -5, -731)
        antiAcid.Transparency = 1
        antiAcid.CanCollide = false
        antiAcid.Anchored = true
 
        --------------------------------------------
 
        shared.removeBlue()
 
        game:GetService("SoundService").KillSound.SoundId = "rbxassetid://2440889605" -- Sound Effect
 
        print("R2O v1.23 Took " .. tick() - Time .. " Seconds To Load ") -- Loading Time
