game:GetService("Players"):Chat("-gh 4623059912,4504231783")

getgenv().ReanimateVersion = "v6"



loadstring(game:HttpGet("https://raw.githubusercontent.com/stangithuboffical/selexity/main/Reanimate", true))()


wait (2.10)






game.Players.LocalPlayer.Character.Humanoid:WaitForChild("Animator"):Destroy()






HumanDied = false
local CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000-67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end




game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end
hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local CloneChar = DeadChar


for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
		local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").Stepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
	end
end


if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end

local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local Player = game.Players.LocalPlayer
local Char = Player.Character
local Mouse = Player:GetMouse()
local Hum = Char:FindFirstChildOfClass'Humanoid'
local Torso = Char.Torso
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Root = Char:FindFirstChild'HumanoidRootPart'
local Head = Char.Head
local LC = Char["Starslayer Railgun"]
local Orb = Char["RockAccessory"]


NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function newMotor(P0,P1,C0,C1)
	return NewInstance('Motor',P0,{Part0=P0,Part1=P1,C0=C0,C1=C1})
end

local welds = {}
local WeldDefaults = {}

local Sine = 0
local DJ={RLINV1=CFrame.new(-.5,1,0),RLINV2=CFrame.new(.5,-1,0),LLINV1=CFrame.new(.5,1,0),LLINV2=CFrame.new(-.5,-1,0)}

table.insert(welds,newMotor(Torso,Head,CF.N(0,1.5,0),CF.N()))
table.insert(welds,newMotor(Root,Torso,CF.N(),CF.N()))
table.insert(welds,newMotor(Torso,RLeg,CF.N(.5,-1,0),CF.N(0,1,0)))
table.insert(welds,newMotor(Torso,RArm,CF.N(1.5,.5,0),CF.N(0,.5,0)))
table.insert(welds,newMotor(Torso,LLeg,CF.N(-.5,-1,0),CF.N(0,1,0)))
table.insert(welds,newMotor(Torso,LArm,CF.N(-1.5,.5,0),CF.N(0,.5,0)))

WeldDefaults={}
for i = 1,#welds do
	local v=welds[i]
	WeldDefaults[i]=v.C0
end

local NK,RJ,RH,RS,LH,LS=unpack(welds)
local GunAngle = {C0=CFrame.new(-4.62459602e-38, 0.999999881, -3.97174872e-38, 1, 0, 0, 0, 1, 0, 0, 0, 1),C1=CFrame.new()}

local NKC0,RJC0,RHC0,RSC0,LHC0,LSC0=unpack(WeldDefaults)

local RenderEvent = Instance.new("BindableEvent",nil)

function RenderEvWait(Num)
	if typeof(Num) == "number" then
		if Num > 0 then
			for i=1,Num do
				RenderEvent.Event:Wait()
			end
		else
			RenderEvent.Event:Wait()
		end
	else
		RenderEvent.Event:Wait()
	end
end

function UpdateWeld(w,p1)
	return p1*(w.C0*w.C1:Inverse())
end	

function Clerp(a,b,c)
	return a:Lerp(b,math.clamp(c,0,1))
end

function Anim(a, b, c)
	if a == "RootJoint" then
		RJ.C0=Clerp(RJ.C0,RJC0*b, c)
	elseif a == "Neck" then
		NK.C0=Clerp(NK.C0,NKC0*b, c)
	elseif a == "RightShoulder" then
		RS.C0=Clerp(RS.C0,RSC0*b,c)
	elseif a == "LeftShoulder" then
		LS.C0=Clerp(LS.C0,LSC0*b,c)
	elseif a == "RightHip" then
		RH.C0=Clerp(RH.C0,RHC0*b,c)
	elseif a == "LeftHip" then
		LH.C0=Clerp(LH.C0,LHC0*b,c)
	elseif a == "Gun" then
		GunAngle.C0=Clerp(GunAngle.C0,CFrame.new(0,-1,-.25)*b*CFrame.Angles(0, 0, math.rad(44)),c)
	end
end

function RevNum(Num)
	local Return = Num
	if Return < 0 then
		Return = -Num
	end
	return Return
end

function CFrameToAngles(CF,Reverse)local CFX,CFY,CFZ = CF:ToOrientation();return CFrame.Angles(CFX*Reverse,CFY*Reverse,CFZ*Reverse);end
function CFrameToVector3(CF,Reverse)return CFrame.new(CF.Position*Reverse);end
function sawtooth(x) return x%(2*math.pi)*1/math.pi-1;end
local function RandomAngle()return math.rad(math.random(-360,360));end
function ApplyProperties(v)coroutine.resume(coroutine.create(function()v.Anchored,v.CanCollide,v.CanQuery,v.CanTouch = true,false,false,false;end))end

local RootAngles = {X=0,Y=0,Z=0}
local HoldingGun = true
local DoAnim = true
local Attacking = false
local LookAt = false
local Flying = false
local Jumping = false
local Falling = false
local MousePos = Vector3.new()
local SoulPos = Torso.CFrame
local FlingTarget = nil
local FlingStage = 0

local ZNum, XNum

local CameraShakes = true
function CameraShake(ShakePos_,Range_,Time_,DistanceNum_)
	if CameraShakes == true then
		coroutine.resume(coroutine.create(function()
			local ShakePos,Move,Time,DistanceNum,ShakeCamera = ShakePos_,Range_,Time_,DistanceNum_,workspace["CurrentCamera"]
			local Dist = (ShakePos-ShakeCamera.CFrame.Position).Magnitude
			local Angle,FakeSine = 0,math.random(0,100000)
			repeat
				FakeSine=FakeSine+2.5
				Move = Move - (Time*0.01)
				Dist = (ShakePos-ShakeCamera.CFrame.Position).Magnitude
				Angle = (-Move*.5)*(math.clamp(1-Dist/DistanceNum,0,math.huge))
				local ShakeOffset = CFrame.new((.1*math.cos(FakeSine/.12))*Angle,(.1*math.cos(FakeSine/.22))*Angle,(.1*math.cos(FakeSine/.32))*Angle)*CFrame.Angles(math.rad((5*math.cos(FakeSine/3.21))*Angle),math.rad((5*math.cos(FakeSine/4.75))*Angle),math.rad((5*math.cos(FakeSine/2.12))*Angle))
				ShakeCamera.CFrame = ShakeCamera.CFrame*ShakeOffset
				RenderEvWait()
				ShakeCamera.CFrame = ShakeCamera.CFrame*CFrameToVector3(ShakeOffset,-1)*CFrameToAngles(ShakeOffset,-1)
			until Move <= 0
		end))
	end
end

function DestroyOnTime(Inst,Time)
	coroutine.resume(coroutine.create(function()
		if Time >= 0 then wait(Time) end
		Inst:Destroy()
	end))
end

function Sound(Position,SoundId,Pitch,Volume)
	local Holder = Instance.new("Part",nil)
	Holder.Size = Vector3.new(math.random(0,5),math.random(0,5),math.random(0,5))
	Holder.Position = Position
	Holder.Name = ""
	local Sound = Instance.new("Sound",Holder)
	Sound.Name = ""
	Sound.Playing = false
	Sound.SoundId = SoundId
	Sound.PlaybackSpeed = Pitch
	Sound.Volume = Volume
	Sound.PlayOnRemove = true
	Sound:Play()
	Holder.Parent = game:GetService("SoundService")
	DestroyOnTime(Holder,.001)
	return Sound
end

local LastSineGunShot = 0
function ShotAnim(AnimType)
	if AnimType == 1 then
		Anim("RootJoint",CFrame.new(.5*math.cos(Sine/50),.5*math.sin(Sine/50),.1*math.sin(Sine/110))*CFrame.Angles(math.rad(-5+2*math.cos(Sine/50)),math.rad(45),math.rad(2.5*math.cos((Sine+1)/50))),.25)
		Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-15+5*math.sin(Sine/50)),math.rad(-45),math.rad(-2.25*math.cos(Sine/50))),.25)
		Anim("RightShoulder",CFrame.new(0,.1*math.sin(Sine/50),0)*CFrame.Angles(math.rad(95-2*math.cos(Sine/50)),0,math.rad(45+2*math.cos(Sine/50))),.25)
		Anim("LeftShoulder",CFrame.new(0,-.1-.1*math.cos(Sine/50),0)*CFrame.Angles(math.rad(45),math.rad(5*math.cos(Sine/50)),math.rad(-25)),.25)
		Anim("RightHip",CFrame.new(0,.8-.1*math.cos(Sine/50),-.7)*CFrame.Angles(0,math.rad(-5+5*math.sin(Sine/50)),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(45),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("LeftHip",CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(15-5*math.sin(Sine/50)),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(45),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)
	elseif AnimType == 2 then
		Anim("RootJoint",CFrame.new(.5*math.cos(Sine/50),.5*math.sin(Sine/50),.1*math.sin(Sine/110))*CFrame.Angles(math.rad(15),0,0)*CFrame.Angles(math.rad(-5+2*math.cos(Sine/50)),math.rad(45),math.rad(2.5*math.cos((Sine+1)/50))),1)
		Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30+5*math.sin(Sine/50)),math.rad(-45),math.rad(-2.25*math.cos(Sine/50))),1)
		Anim("RightShoulder",CFrame.new(-1.5,.1*math.sin(Sine/50),2)*CFrame.Angles(math.rad(90+5*math.sin(Sine/50)),0,math.rad(45+2*math.cos(Sine/50)))*CFrame.Angles(math.rad(25),0,0),1)
		Anim("LeftShoulder",CFrame.new(0,-.1-.1*math.cos(Sine/50),0)*CFrame.Angles(math.rad(45),math.rad(5*math.cos(Sine/50)),math.rad(-25)),.25)
		Anim("RightHip",CFrame.new(0,.8-.1*math.cos(Sine/50),-.7)*CFrame.Angles(0,math.rad(-5+5*math.sin(Sine/50)),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(45),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("LeftHip",CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(15-5*math.sin(Sine/50)),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(45),0)*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.25)	
	elseif AnimType == 3 then
		Anim("RootJoint",CFrame.new(.5*math.cos(Sine/50),.5*math.sin(Sine/50),.1*math.sin(Sine/110))*CFrame.Angles(math.rad(-5+2*math.cos(Sine/50)),math.rad(-15+2*math.cos((Sine-LastSineGunShot)/1.5)),math.rad(2.5*math.cos((Sine+1)/50))),.25)
		Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-35+5*math.sin(Sine/50)),math.rad(15-2*math.cos((Sine-LastSineGunShot)/1.5)),math.rad(-2.25*math.cos(Sine/50))),.25)
		Anim("RightShoulder",CFrame.new(0,-.25*math.sin(Sine/1.5),0)*CFrame.Angles(math.rad(5-25*math.cos((Sine-LastSineGunShot)/1.5)),0,math.rad(15+2*math.cos(Sine/50))),1)
		Anim("LeftShoulder",CFrame.new(0,-.1-.1*math.cos(Sine/50),0)*CFrame.Angles(math.rad(-15),math.rad(-25+5*math.cos(Sine/50)),math.rad(-5)),.25)
		Anim("RightHip",CFrame.new(0,.8-.1*math.cos(Sine/50),-.7)*CFrame.Angles(0,math.rad(-5+5*math.sin(Sine/50)),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("LeftHip",CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(15-5*math.sin(Sine/50)),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(180*sawtooth((Sine-LastSineGunShot)/1.5)),0,0),1)
	elseif AnimType == 4 then
		Anim("RootJoint",CFrame.new(.5*math.cos(Sine/50),.5*math.sin(Sine/50),.1*math.sin(Sine/110))*CFrame.Angles(math.rad(0),math.rad(-15),math.rad(2.5*math.cos((Sine+1)/50))),.25)
		Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-35+5*math.sin(Sine/50)),math.rad(-15),math.rad(-2.25*math.cos(Sine/50))),.25)
		Anim("RightShoulder",CFrame.new(0,.25,0)*CFrame.Angles(math.rad(179.9),math.rad(-15),0),1)
		Anim("LeftShoulder",CFrame.new(0,-.1-.1*math.cos(Sine/50),0)*CFrame.Angles(math.rad(-15),math.rad(-25+5*math.cos(Sine/50)),math.rad(-5)),.25)
		Anim("RightHip",CFrame.new(0,.8-.1*math.cos(Sine/50),-.7)*CFrame.Angles(0,math.rad(-5+5*math.sin(Sine/50)),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("LeftHip",CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(15-5*math.sin(Sine/50)),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(0,0,0),1)
	elseif AnimType == 5 then
		Anim("RootJoint",CFrame.new(.5*math.cos(Sine/50),.5*math.sin(Sine/50),.1*math.sin(Sine/110))*CFrame.new(0,1,0)*CFrame.Angles(0,0,math.rad(-15))*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(-15),math.rad(2.5*math.cos((Sine+1)/50))),1)
		Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-45+5*math.sin(Sine/50)),math.rad(-15),math.rad(-2.25*math.cos(Sine/50))),.25)
		Anim("RightShoulder",CFrame.new(0,-.5,-.25)*CFrame.Angles(math.rad(179.9),math.rad(-15),math.rad(-15)),1)
		Anim("LeftShoulder",CFrame.new(0,-.1-.1*math.cos(Sine/50),0)*CFrame.Angles(math.rad(-15),math.rad(-25+5*math.cos(Sine/50)),math.rad(-5)),.25)
		Anim("RightHip",CFrame.new(0,.8-.1*math.cos(Sine/50),-.7)*CFrame.Angles(0,math.rad(-5+5*math.sin(Sine/50)),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("LeftHip",CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(15-5*math.sin(Sine/50)),0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(0,math.rad(-45),0)*CFrame.Angles(0,math.rad(45),0),.25)
		Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(0,0,0),1)
	end
end

local Stuff = game:GetObjects("rbxassetid://113674464294324")[1]
local VFX = Stuff.VFX

function ShootSlash(Pos)
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(function()
			local NewBlock = VFX.Block:Clone()
			NewBlock.Size = Vector3.new()
			NewBlock.CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle())
			NewBlock.Material = Enum.Material.Neon
			NewBlock.Color = Color3.new(0, 0, 0)
			NewBlock.Parent = workspace
			coroutine.resume(coroutine.create(function()repeat RenderEvent.Event:Wait();NewBlock.Color=Color3.new(0, 0, 0) until NewBlock == nil or not NewBlock:IsDescendantOf(workspace);end))
			local Tween = game:GetService("TweenService"):Create(NewBlock,TweenInfo.new(.25,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0),{Size = Vector3.new(4,4,4)})
			game:GetService("TweenService"):Create(NewBlock,TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0),{CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle()),Transparency = 1}):Play()
			Tween:Play()
			local TempTween;TempTween=Tween.Completed:Connect(function()
				NewBlock:Destroy()
				TempTween:Disconnect()
			end)
		end))
		coroutine.resume(coroutine.create(function()
			local NewBlock = VFX.Block:Clone()
			NewBlock.Size = Vector3.new()
			NewBlock.CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle())
			NewBlock.Material = Enum.Material.Metal
			NewBlock.Reflectance = 0
			NewBlock.Color = Color3.new(0, 0, 0)
			NewBlock.Transparency = 0
			NewBlock.Parent = workspace
			local Tween = game:GetService("TweenService"):Create(NewBlock,TweenInfo.new(.25,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0),{Size = Vector3.new(2,2,2)})
			game:GetService("TweenService"):Create(NewBlock,TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0),{CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle())}):Play()
			Tween:Play()
			local TempTween;TempTween=Tween.Completed:Connect(function()
				NewBlock:Destroy()
				TempTween:Disconnect()
			end)
		end))
		coroutine.resume(coroutine.create(function()
			for i=1,2 do
				local NewSlash = VFX.Slash:Clone()
				NewSlash.Size = Vector3.new()
				NewSlash.CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle())
				NewSlash.Material = Enum.Material.Neon
				NewSlash.Color = Color3.new(0, 0, 0)
				NewSlash.Parent = workspace
				coroutine.resume(coroutine.create(function()repeat RenderEvent.Event:Wait();NewSlash.Color=Color3.new(0, 0, 0) until NewSlash == nil or not NewSlash:IsDescendantOf(workspace);end))
				local Tween = game:GetService("TweenService"):Create(NewSlash,TweenInfo.new(1+math.random(0,50)/50,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0),{Size = Vector3.new(3,0,4)*6})
				game:GetService("TweenService"):Create(NewSlash,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0),{CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle()),Transparency = 1}):Play()
				Tween:Play()
				local TempTween;TempTween=Tween.Completed:Connect(function()
					NewSlash:Destroy()
					TempTween:Disconnect()
				end)
			end
		end))
		coroutine.resume(coroutine.create(function()
			for i=1,2 do
				local NewSlash = VFX.Slash:Clone()
				NewSlash.Size = Vector3.new()
				NewSlash.CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle())
				NewSlash.Material = Enum.Material.Metal
				NewSlash.Reflectance = 0
				NewSlash.Color = Color3.new(0, 0, 0)
				NewSlash.Parent = workspace
				local Tween = game:GetService("TweenService"):Create(NewSlash,TweenInfo.new(1+math.random(0,50)/50,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0),{Size = Vector3.new(3,0,4)*6})
				game:GetService("TweenService"):Create(NewSlash,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0),{CFrame = CFrame.new(Pos)*CFrame.Angles(RandomAngle(),RandomAngle(),RandomAngle()),Transparency = 1}):Play()
				Tween:Play()
				local TempTween;TempTween=Tween.Completed:Connect(function()
					NewSlash:Destroy()
					TempTween:Disconnect()
				end)
			end
		end))
	end))
end
function ElectricPart(Pos1,Pos2)
	coroutine.resume(coroutine.create(function()
		local EffPart = VFX.Block:Clone()
		EffPart.Name = ""
		local LookAt,Dist = CFrame.lookAt(Pos1,Pos2),(Pos1-Pos2).Magnitude
		EffPart.CFrame = LookAt*CFrame.new(0,0,-Dist/2)
		EffPart.Size = Vector3.new(0,0,Dist)
		EffPart.Color = Color3.new(0, 0, 0)
		EffPart.Parent = workspace
		coroutine.resume(coroutine.create(function()repeat RenderEvent.Event:Wait();EffPart.Color=Color3.new(0, 0, 0) until EffPart == nil or not EffPart:IsDescendantOf(workspace);end))
		local Tween = game:GetService("TweenService"):Create(EffPart,TweenInfo.new(.16,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0),{Size = Vector3.new(2,2,Dist),CFrame = LookAt*CFrame.new(0,0,-Dist/2)})
		Tween:Play()
		local TempTween;TempTween=Tween.Completed:Connect(function()
			EffPart:Destroy()
			TempTween:Disconnect()
		end)
	end))
end
function ElectricLine(Pos1,Pos2)
	coroutine.resume(coroutine.create(function()
		local EffPart = VFX.Block:Clone()
		EffPart.Name = ""
		local LookAt,Dist = CFrame.lookAt(Pos1,Pos2),(Pos1-Pos2).Magnitude
		EffPart.CFrame = LookAt*CFrame.new(0,0,-Dist/2)
		EffPart.Size = Vector3.new(.5,.5,Dist)
		EffPart.Color = Color3.new(0, 0, 0)
		EffPart.Parent = workspace
		local Tween = game:GetService("TweenService"):Create(EffPart,TweenInfo.new(.16,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{Size = Vector3.new(.5,.5,Dist),CFrame = LookAt*CFrame.new(0,0,-Dist/2),Transparency = 1})
		Tween:Play()
		local TempTween;TempTween=Tween.Completed:Connect(function()
			EffPart:Destroy()
			TempTween:Disconnect()
		end)
	end))
end
function Electricity(Pos1,Pos2)
	local ElectricEvent = Instance.new("BindableEvent",nil);ElectricEvent.Name = ""
	coroutine.resume(coroutine.create(function()
		local StartCF,Distance,DistanceFloor = CFrame.lookAt(Pos1,Pos2)*CFrame.new(0,0,1),(Pos1-Pos2).Magnitude,math.floor(math.clamp((Pos1-Pos2).Magnitude/10,1,20))
		local OffsetCF1,OffsetCF2 = StartCF,StartCF
		for i=1,math.clamp((DistanceFloor/2)-1,1,math.huge) do
			StartCF = StartCF*CFrame.new(0,0,-(Distance/DistanceFloor)*2)
			OffsetCF1 = StartCF*CFrame.new(math.random(-10,10)/2,math.random(-10,10)/2,math.random(-10,10)/2)
			ElectricPart(OffsetCF1.Position,OffsetCF2.Position)
			OffsetCF2 = OffsetCF1
			task.wait()
		end
		ElectricPart(OffsetCF1.Position,Pos2)
		ElectricLine(Pos1,Pos2)
		ElectricEvent:Fire()
		task.wait(.1)
		ElectricEvent:Destroy()
	end))
	ElectricEvent.Event:Wait()
end
function ElectricShot(Pos1,Pos2)
	ShootSlash(Pos1)
	coroutine.resume(coroutine.create(function()for i=1,2 do coroutine.resume(coroutine.create(function()Electricity(Pos1,Pos2)end));end;end))
	Electricity(Pos1,Pos2)
	ShootSlash(Pos2)
end

function Kill(Pos, Radius)
	coroutine.resume(coroutine.create(function()
		local RootParts = {}
		for i,v in pairs(game:GetDescendants()) do
			if v:IsA("BasePart") and v.Name ~= "Base" and v.Name ~= "Baseplate" and ((v.Position - Pos).Magnitude <= Radius/2) then
				if v.Parent:IsA("Model") and v.Parent ~= workspace and v.Parent ~= workspace.Terrain and v.Parent:FindFirstChild("HumanoidRootPart") then
					if not table.find(RootParts,v.Parent:FindFirstChild("HumanoidRootPart")) then
						table.insert(RootParts,v.Parent:FindFirstChild("HumanoidRootPart"))
					end
				end
			end
		end
		for _, Part in next, RootParts do
			FlingTarget = Part
			task.wait(1)
			FlingTarget = nil
		end
	end))
end

function Shoot()
	if Attacking == false and HoldingGun then
		Attacking,DoAnim,LookAt = true,false,true
		coroutine.resume(coroutine.create(function()
			for i=1,15 do
				ShotAnim(1)
				RenderEvWait()
			end
			coroutine.resume(coroutine.create(function()
				local GunPos,GunHole = LC.Handle.CFrame*CFrame.new(0,-3.15,-1.25),LC.Handle.CFrame*CFrame.new(0,-3.25,-1.25)
				Sound(GunHole.Position,"rbxassetid://642890855",.45,10)
				ElectricLine(GunHole.Position,GunPos.Position)
				ElectricShot(GunPos.Position,MousePos)
				Sound(MousePos,"rbxassetid://821439273",1+math.random(-100,100)*0.00025,10)
				Kill(MousePos,7)
				CameraShake(MousePos,5,30,50)
			end))
			for i=1,5 do
				ShotAnim(2)
				RenderEvWait()
			end
			for i=1,5 do
				ShotAnim(1)
				RenderEvWait()
			end
			Attacking,DoAnim,LookAt = false,true,false
		end))
	end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, g)
	if g then return end
	if input.KeyCode == Enum.KeyCode.B then
		HoldingGun = not HoldingGun
	end
	if input.KeyCode == Enum.KeyCode.F then
		Flying = not Flying
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Shoot()
	end
end)

local Player = game:GetService("Players").LocalPlayer

local RenderFire = game:GetService("RunService"):BindToRenderStep("untitled reanim", 0, function()
	RenderEvent:Fire()
	MousePos = Player:GetMouse().Hit.Position
end)

local Angle = 0

game:GetService("RunService").RenderStepped:Connect(function()
	if Sine>1000000 then Sine=0;end
	Sine = Sine + 1
	local WalkSine = Sine*1.2
	local MoveDirection = Hum.MoveDirection
	local Walking = false
	Falling = Root.Velocity.y < -1
	Jumping = Root.Velocity.y > 1
	if MoveDirection.X > 0 or MoveDirection.X < 0 or MoveDirection.Z > 0 or MoveDirection.Z < 0 or MoveDirection.Y > 0 or MoveDirection.Y < 0 then
		Walking = true
	end	
	RootAngles.X,RootAngles.Y,RootAngles.Z = Root.CFrame.Rotation:ToOrientation()
	local FwdDir = MoveDirection*CFrame.Angles(0,RootAngles.Y,0).lookVector
	local RigDir = MoveDirection*CFrame.Angles(0,RootAngles.Y,0).rightVector
	local Vector = {X=RigDir.X+RigDir.Z,Z=FwdDir.X+FwdDir.Z}
	local XZ,XYZ = (MoveDirection*Vector3.new(1,0,1)).Magnitude,(MoveDirection-MoveDirection).Magnitude
	XNum = Vector.X
	ZNum = Vector.Z
	local RevXNum,RevZNum = RevNum(XNum),RevNum(ZNum)
	local LimbRotAngle = CFrame.lookAt(Vector3.new(),Vector3.new(XNum,0,-ZNum)).Rotation
	if DoAnim then
		if not Flying then
			Hum.WalkSpeed = 16
			if not HoldingGun then
				if not Falling then
					if not Jumping then
						if not Walking then
							Anim("RootJoint",CFrame.new(0,-.1+.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(2*math.sin(Sine/50)),0),.25)
							Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-1+1*math.cos(Sine/50)),math.rad(-2*math.sin(Sine/50)),0),.25)
							Anim("RightShoulder",CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(2+2*math.cos(Sine/50))),.25)
							Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-2-2*math.cos(Sine/50))),.25)
							Anim("RightHip",CFrame.new(0,0,-.05)*CFrame.Angles(0,math.rad(-2*math.sin(Sine/50)),0)*CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(-5),0),.25)
							Anim("LeftHip",CFrame.new(0,0,-.05)*CFrame.Angles(0,math.rad(-2*math.sin(Sine/50)),0)*CFrame.new(0,.1-.1*math.cos(Sine/50),0)*CFrame.Angles(0,math.rad(5),0),.25)
						else
							Anim("RootJoint",CFrame.new(0,-(XZ*.1)*math.sin(WalkSine/4.5),0)*CFrame.Angles(math.rad(-math.clamp(ZNum*15,-5,math.huge)),math.rad((ZNum*10)*math.cos(WalkSine/9)),math.rad(-XNum*15-(XNum*.5)*math.cos(WalkSine/4.5))),.25)
							Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.clamp(ZNum*15,-5,0)+(ZNum*1)*math.sin(WalkSine/4.5)-(XNum*7)*math.cos(WalkSine/9)),math.rad(-(ZNum*10)*math.cos(WalkSine/9)+math.clamp(-XNum*67,-45,45)+(ZNum*2)*math.cos(WalkSine/9)+(ZNum*2)*math.sin(WalkSine/9)),0),.25)
							Anim("RightShoulder",CFrame.new(0,0,-(math.clamp(ZNum,0,math.huge)*.15)*math.cos(WalkSine/9)-(math.clamp(ZNum,0,math.huge)*.15)*math.sin(WalkSine/9))*CFrame.Angles(math.rad(math.clamp(ZNum*25,0,math.huge)*math.cos((WalkSine-2)/9)+math.clamp(ZNum*25,0,math.huge)*math.sin((WalkSine-2)/9)),math.rad((math.clamp(ZNum,0,math.huge)*10)*math.cos((WalkSine-4)/9)+(math.clamp(ZNum,0,math.huge)*10)*math.sin((WalkSine-4)/9)),math.rad(math.clamp(XNum*15,0,math.huge))),.25)
							Anim("LeftShoulder",CFrame.new(0,0,(math.clamp(ZNum,0,math.huge)*.15)*math.cos(WalkSine/9)+(math.clamp(ZNum,0,math.huge)*.15)*math.sin(WalkSine/9))*CFrame.Angles(math.rad(-math.clamp(ZNum*25,0,math.huge)*math.cos((WalkSine-2)/9)-math.clamp(ZNum*25,0,math.huge)*math.sin((WalkSine-2)/9)),math.rad((math.clamp(ZNum,0,math.huge)*10)*math.cos((WalkSine-4)/9)+(math.clamp(ZNum,0,math.huge)*10)*math.sin((WalkSine-4)/9)),math.rad(math.clamp(XNum*15,-math.huge,0))),.25)
							Anim("RightHip",((CFrame.new(0,-1,0))*(CFrame.Angles(0,math.rad((ZNum*10)*math.cos(WalkSine/9)),math.rad(-XNum*15-(XNum*.5)*math.cos(WalkSine/4.5)))):Inverse()*(CFrame.new(0,1,0)))*LimbRotAngle*(CFrame.new(0,(XZ*.05)-((((XZ*.25))/2)*math.cos((WalkSine)/9)-(((XZ*.25))/2)*math.sin((WalkSine-2)/9)),0)*CFrame.new(0,math.clamp((((XZ*.8))/2)*math.sin((WalkSine-6)/9),0,math.huge),-(ZNum*.25)+(((XZ*.5)+(RevZNum*1))/4)*math.cos(WalkSine/9))*CFrame.new(0,-(XZ*.1)-((XZ*.1)*math.cos((WalkSine)/9)+(XZ*.1)*math.sin((WalkSine)/9)),0)*CFrame.Angles(math.rad(-(XZ*25)*math.cos((WalkSine-2)/9)-(XZ*25)*math.sin((WalkSine-2)/9)),0,0)*CFrame.Angles(0,math.rad(-(XZ*5)-(XZ*10)*math.cos(WalkSine/9)),0))*LimbRotAngle:Inverse(),.25)
							Anim("LeftHip",((CFrame.new(0,-1,0))*(CFrame.Angles(0,math.rad((ZNum*10)*math.cos(WalkSine/9)),math.rad(-XNum*15-(XNum*.5)*math.cos(WalkSine/4.5)))):Inverse()*(CFrame.new(0,1,0)))*LimbRotAngle*(CFrame.new(0,(XZ*.05)+((((XZ*.25))/2)*math.cos((WalkSine)/9)-(((XZ*.25))/2)*math.sin((WalkSine-2)/9)),0)*CFrame.new(0,math.clamp(-(((XZ*.8))/2)*math.sin((WalkSine-6)/9),0,math.huge),-(ZNum*.25)-(((XZ*.5)+(RevZNum))/4)*math.cos(WalkSine/9))*CFrame.new(0,-(XZ*.1)+((XZ*.1)*math.cos((WalkSine)/9)+(XZ*.1)*math.sin((WalkSine)/9)),0)*CFrame.Angles(math.rad((XZ*25)*math.cos((WalkSine-2)/9)+(XZ*25)*math.sin((WalkSine-2)/9)),0,0)*CFrame.Angles(0,math.rad((XZ*5)-(XZ*10)*math.cos(WalkSine/9)),0))*LimbRotAngle:Inverse(),.25)
						end
					else
						Anim("RootJoint",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(math.rad(7),0,0),.25)
						Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(ZNum*7),math.rad(-XNum*25),0)*CFrame.Angles(math.rad(25),0,0),.25)
						Anim("RightShoulder",CFrame.new(0,.5,0)*CFrame.Angles(math.rad(170),0,0),.25)
						Anim("LeftShoulder",CFrame.new(0,.5,0)*CFrame.Angles(math.rad(170),0,0),.25)
						Anim("RightHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(-25),0,0),.25)
						Anim("LeftHip",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5),0,0),.25)
					end
				else
					Anim("RootJoint",CFrame.new(.1*math.cos(Sine/25),.1*math.sin(Sine/22.124),.1*math.sin(Sine/27.512))*CFrame.Angles(math.rad(-ZNum*25),0,math.rad(-XNum*25))*CFrame.Angles(math.rad(-5),0,0),.25)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(ZNum*7),math.rad(-XNum*25),0)*CFrame.Angles(math.rad(-25+2*math.cos(Sine/15)),0,0),.25)
					Anim("RightShoulder",CFrame.new(0,0,0)*CFrame.Angles(math.rad(10+2*math.cos(Sine/15)),0,math.rad(25+2*math.cos(Sine/15))),.25)
					Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(math.rad(10+2*math.cos(Sine/15)),0,math.rad(-25-2*math.cos(Sine/15))),.25)
					Anim("RightHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(15+2*math.sin(Sine/15)),math.rad(-15),0),.25)
					Anim("LeftHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(7+2*math.sin(Sine/15)),math.rad(15),0),.25)
				end
			else
				if not Walking then
					Anim("RootJoint",CFrame.new(0,-.1+.1*math.sin(Sine/50),0)*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(5*math.cos(Sine/50)),0,0)*CFrame.new(0,1,0)*CFrame.Angles(0,math.rad(-7),0),.25)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-15+5*math.cos(Sine/50)),math.rad(7+15*math.cos(Sine/170)),0),.25)
					Anim("RightShoulder",CFrame.new(-1.5,0,.5)*(CFrame.new(0,-1.5-.1*math.sin(Sine/50),0)*CFrame.Angles(math.rad(-5+5*math.cos(Sine/50)),0,0)*CFrame.new(0,1.5,0))*CFrame.new(1.5,0,0)*CFrame.Angles(0,math.rad(-15),math.rad(5)),.25)
					Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(math.rad(5*math.cos(Sine/50)),0,math.rad(-5)),.25)
					Anim("RightHip",CFrame.Angles(0,math.rad(7),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/50)),0,0)*CFrame.Angles(0,math.rad(-7),0)*CFrame.new(0,.1-.1*math.sin(Sine/50),0)*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(-2+2*math.cos(Sine/50)),math.rad(-10),0)*CFrame.new(0,2,0),.25)
					Anim("LeftHip",CFrame.Angles(0,math.rad(7),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/50)),0,0)*CFrame.Angles(0,math.rad(-7),0)*CFrame.new(0,.1-.1*math.sin(Sine/50),0)*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(-2+2*math.cos(Sine/50)),math.rad(5),0)*CFrame.new(0,2,0),.25)
					Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90-10*math.cos(Sine/50)),math.rad(-5*math.cos(Sine/50)),math.rad(2.5*math.cos(Sine/50))),.25)
				else
					Anim("RootJoint",CFrame.new(0,-(XZ*.1)*math.sin(WalkSine/4.5),0)*CFrame.Angles(math.rad(-math.clamp(ZNum*15,-5,math.huge)),math.rad((ZNum*10)*math.cos(WalkSine/9)),math.rad(-XNum*15-(XNum*.5)*math.cos(WalkSine/4.5))),.25)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.clamp(ZNum*15,-5,0)+(ZNum*1)*math.sin(WalkSine/4.5)-(XNum*7)*math.cos(WalkSine/9)),math.rad(-(ZNum*10)*math.cos(WalkSine/9)+math.clamp(-XNum*67,-45,45)+(ZNum*2)*math.cos(WalkSine/9)+(ZNum*2)*math.sin(WalkSine/9)),0),.25)
					Anim("RightShoulder",CFrame.Angles(0,math.rad(-25),0)*CFrame.new(-1.5,0,.5)*(CFrame.new(0,-1.5-.1*math.sin(Sine/50),0)*CFrame.Angles(math.rad(-5+5*math.cos(Sine/50)),0,0)*CFrame.new(0,1.5,0))*CFrame.new(1.5,0,0)*CFrame.Angles(math.rad(-25),math.rad(-15),math.rad(5)),.25)
					Anim("LeftShoulder",CFrame.new(0,0,(math.clamp(ZNum,0,math.huge)*.15)*math.cos(WalkSine/9)+(math.clamp(ZNum,0,math.huge)*.15)*math.sin(WalkSine/9))*CFrame.Angles(math.rad(-math.clamp(ZNum*25,0,math.huge)*math.cos((WalkSine-2)/9)-math.clamp(ZNum*25,0,math.huge)*math.sin((WalkSine-2)/9)),math.rad((math.clamp(ZNum,0,math.huge)*10)*math.cos((WalkSine-4)/9)+(math.clamp(ZNum,0,math.huge)*10)*math.sin((WalkSine-4)/9)),math.rad(math.clamp(XNum*15,-math.huge,0))),.25)
					Anim("RightHip",((CFrame.new(0,-1,0))*(CFrame.Angles(0,math.rad((ZNum*10)*math.cos(WalkSine/9)),math.rad(-XNum*15-(XNum*.5)*math.cos(WalkSine/4.5)))):Inverse()*(CFrame.new(0,1,0)))*LimbRotAngle*(CFrame.new(0,(XZ*.05)-((((XZ*.25))/2)*math.cos((WalkSine)/9)-(((XZ*.25))/2)*math.sin((WalkSine-2)/9)),0)*CFrame.new(0,math.clamp((((XZ*.8))/2)*math.sin((WalkSine-6)/9),0,math.huge),-(ZNum*.25)+(((XZ*.5)+(RevZNum*1))/4)*math.cos(WalkSine/9))*CFrame.new(0,-(XZ*.1)-((XZ*.1)*math.cos((WalkSine)/9)+(XZ*.1)*math.sin((WalkSine)/9)),0)*CFrame.Angles(math.rad(-(XZ*25)*math.cos((WalkSine-2)/9)-(XZ*25)*math.sin((WalkSine-2)/9)),0,0)*CFrame.Angles(0,math.rad(-(XZ*5)-(XZ*10)*math.cos(WalkSine/9)),0))*LimbRotAngle:Inverse(),.25)
					Anim("LeftHip",((CFrame.new(0,-1,0))*(CFrame.Angles(0,math.rad((ZNum*10)*math.cos(WalkSine/9)),math.rad(-XNum*15-(XNum*.5)*math.cos(WalkSine/4.5)))):Inverse()*(CFrame.new(0,1,0)))*LimbRotAngle*(CFrame.new(0,(XZ*.05)+((((XZ*.25))/2)*math.cos((WalkSine)/9)-(((XZ*.25))/2)*math.sin((WalkSine-2)/9)),0)*CFrame.new(0,math.clamp(-(((XZ*.8))/2)*math.sin((WalkSine-6)/9),0,math.huge),-(ZNum*.25)-(((XZ*.5)+(RevZNum))/4)*math.cos(WalkSine/9))*CFrame.new(0,-(XZ*.1)+((XZ*.1)*math.cos((WalkSine)/9)+(XZ*.1)*math.sin((WalkSine)/9)),0)*CFrame.Angles(math.rad((XZ*25)*math.cos((WalkSine-2)/9)+(XZ*25)*math.sin((WalkSine-2)/9)),0,0)*CFrame.Angles(0,math.rad((XZ*5)-(XZ*10)*math.cos(WalkSine/9)),0))*LimbRotAngle:Inverse(),.25)
					Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90-10*math.cos(Sine/50)),math.rad(-XNum*15+5*math.cos(Sine/50)),math.rad(-(ZNum*5)*math.cos(WalkSine/9)-45-2.5*math.cos(Sine/50))),.25)
				end
			end
		else
			Hum.WalkSpeed = 50
			if not HoldingGun then
				if not Walking then
					Anim("RootJoint",CFrame.new(0,.5*math.cos(Sine/25),0)*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(5*math.cos(Sine/40)),math.rad(-15),math.rad(5*math.cos(Sine/80)))*CFrame.new(0,1,0),.17)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5-5*math.cos(Sine/40)),math.rad(15),0),.17)
					Anim("RightShoulder",CFrame.new(0,-.1,0)*CFrame.Angles(math.rad(-2),0,math.rad(15)),.17)
					Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-15)),.17)
					Anim("RightHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(-25+5*math.cos(Sine/40)),math.rad(-5),0),.17)
					Anim("LeftHip",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5+5*math.cos(Sine/40)),math.rad(15),0),.17)
					Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90+2*math.cos(Sine/80)),0,0),.17)
				else
					Anim("RootJoint",CFrame.new(0,.5*math.cos(Sine/25),0)*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-ZNum*45+5*math.cos(Sine/40)),math.rad(-15),math.rad(-XNum*45+5*math.cos(Sine/80)))*CFrame.new(0,1,0),.17)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(ZNum*35-15-5*math.cos(Sine/40)),math.rad(-XNum*45+15),0),.17)
					Anim("RightShoulder",CFrame.new(-.2,0,.2)*CFrame.Angles(math.rad(-25+5*math.cos(Sine/40)),math.rad(-25+5*math.cos(Sine/40)),0),.17)
					Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-ZNum*15),0,math.rad(-15)),.17)
					Anim("RightHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(-ZNum*15-25+5*math.cos(Sine/40)),math.rad(-5),math.rad(-XNum*15)),.17)
					Anim("LeftHip",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-ZNum*15-5+5*math.cos(Sine/40)),math.rad(15),math.rad(-XNum*15)),.17)
					Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90+2*math.cos(Sine/80)),0,0),.17)
				end
			else
				if not Walking then
					Anim("RootJoint",CFrame.new(0,.5*math.cos(Sine/25),0)*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(5*math.cos(Sine/40)),math.rad(-15),math.rad(5*math.cos(Sine/80)))*CFrame.new(0,1,0),.17)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5-5*math.cos(Sine/40)),math.rad(15),0),.17)
					Anim("RightShoulder",CFrame.new(-.2,0,.2)*CFrame.Angles(math.rad(-25+5*math.cos(Sine/40)),math.rad(-25+5*math.cos(Sine/40)),0),.17)
					Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-15)),.17)
					Anim("RightHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(-25+5*math.cos(Sine/40)),math.rad(-5),0),.17)
					Anim("LeftHip",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-5+5*math.cos(Sine/40)),math.rad(15),0),.17)
					Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90+2*math.cos(Sine/80)),0,0),.17)
				else
					Anim("RootJoint",CFrame.new(0,.5*math.cos(Sine/25),0)*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-ZNum*45+5*math.cos(Sine/40)),math.rad(-15),math.rad(-XNum*45+5*math.cos(Sine/80)))*CFrame.new(0,1,0),.17)
					Anim("Neck",CFrame.new(0,0,0)*CFrame.Angles(math.rad(ZNum*35-15-5*math.cos(Sine/40)),math.rad(-XNum*45+15),0),.17)
					Anim("RightShoulder",CFrame.new(-.2,0,.2)*CFrame.Angles(math.rad(-25+5*math.cos(Sine/40)),math.rad(-25+5*math.cos(Sine/40)),0),.17)
					Anim("LeftShoulder",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-ZNum*15),0,math.rad(-15)),.17)
					Anim("RightHip",CFrame.new(0,.5,-.5)*CFrame.Angles(math.rad(-ZNum*15-25+5*math.cos(Sine/40)),math.rad(-5),math.rad(-XNum*15)),.17)
					Anim("LeftHip",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-ZNum*15-5+5*math.cos(Sine/40)),math.rad(15),math.rad(-XNum*15)),.17)
					Anim("Gun",CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90+2*math.cos(Sine/80)),0,0),.17)
				end
			end
		end
	end
	if not HoldingGun then
		LC.Handle.CFrame = Torso.CFrame * CFrame.new(0,0,1)
	else
		LC.Handle.CFrame = UpdateWeld(GunAngle, RArm.CFrame)
	end
	Orb.Handle.CanCollide = true
	SoulPos = SoulPos:Lerp(CFrame.lookAt(Torso.Position+Vector3.new(5*math.cos(Sine/33.341),2+2*math.cos(Sine/45.412),5*math.sin(Sine/33.341)),Torso.Position),.1)
	if FlingTarget then
		if FlingStage == 6 then
			FlingStage = 0
		end
		FlingStage += 1
		Angle = Angle + 100
		local THum = FlingTarget.Parent:FindFirstChildOfClass("Humanoid")
		Orb.Handle.RotVelocity = Vector3.new(10, 10, 10)
		Orb.Handle.Velocity = Vector3.new(10, 10, 10)
		Orb.Handle.CFrame = CFrame.new(FlingTarget.Position) * CFrame.Angles(RandomAngle(), RandomAngle(), RandomAngle())
	else
		FlingStage = 0
		Orb.Handle.RotVelocity = Vector3.new(0, 0, 0)
		Orb.Handle.Velocity = Vector3.new(0, 0, 0)
		Orb.Handle.CFrame = SoulPos
	end
end)
game:GetService("TextChatService"):WaitForChild("TextChannels"):WaitForChild("RBXGeneral"):SendAsync("[untitled reanim] loaded")
