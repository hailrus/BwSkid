loadstring(game:HttpGet(('https://raw.githubusercontent.com/XeneonPlays/Nexo/main/NexoPD'),true))()
loadstring(game:HttpGet(('https://gist.githubusercontent.com/hailrus/21a5fdf5dfae9058da700f98b49fcabc/raw/50f0318c647a95bb051110076bbbff3b677439e1/gistfile1.txt'),true))()

wait(1/60)

local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {tRGB= function(c3) return c3.r*255,c3.g*255,c3.b*255 end,N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

Player = game.Players.LocalPlayer
Character = Player.Character.CWExtra.NexoPD
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character.CWExtra.NexoPD
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local TIME = 0
local sick = Instance.new("Sound",Torso)
local kan = sick

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
local FORCERESET = false
Frame_Speed = 1 / 60
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = true
local COMBO = 3
local Rooted = false
local SINE = 5
Player_Size = 1
SIZE = 1
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
--ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "BanishV4Gui"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")
local UNANCHOR = true
local TOBANISH = {}
local TAIL = {}
local Func = Instance.new("RemoteFunction")
local MODE = "BloodWater"

sick = Instance.new("Sound", Character)
sick.Volume = 10
sick.TimePosition = 0
sick.PlaybackSpeed = 0.75
sick.Pitch = 0.95
sick.SoundId = "rbxassetid://2256171111"
sick.Name = "wrecked"
sick.Looped = true
sick:Play()

local NAMEBILL = Instance.new("BillboardGui",Character)
NAMEBILL.AlwaysOnTop = true
NAMEBILL.Size = UDim2.new(7,35,3,15)
NAMEBILL.StudsOffset = Vector3.new(0,2,0)
NAMEBILL.MaxDistance = 10000
NAMEBILL.Adornee = Head
NAMEBILL.Name = "NameBillboard"
local NAMEMODE = Instance.new("TextLabel",NAMEBILL)
NAMEMODE.BackgroundTransparency = 1
NAMEMODE.TextScaled = false
NAMEMODE.BorderSizePixel = 0
NAMEMODE.Text = "B L O O D W A T E R"
NAMEMODE.Font = "Antique"
NAMEMODE.TextSize = 30
NAMEMODE.TextStrokeTransparency = 0
NAMEMODE.Size = UDim2.new(1,0,0.5,0)
NAMEMODE.Parent = NAMEBILL
NAMEMODE.TextColor3 = Color3.fromRGB(0,0,0)
NAMEMODE.TextStrokeColor3 = Color3.new(0,0,0)

--//=================================\\
--\\=================================//

--//=================================\\
--||          COMPATIBILTY
--\\=================================//

cf = CF
angles = ANGLES
sine = SINE
mouse = Mouse
RH = RightHip
LH = LeftHip
RW = RightShoulder
LW = LeftShoulder
clerp = Clerp
necko = NECKC0
RootCF = ROOTC0

--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)


--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

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

FXFolder = nil


function CamShake(who,times,intense,origin) 
	coroutine.wrap(function()
		if(FXFolder:FindFirstChild'CamShake')then
			local cam = FXFolder.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = intense
			cam:WaitForChild'times'.Value = times
			
	 		if(origin)then NewInstance((typeof(origin) == 'Instance' and "ObjectValue" or typeof(origin) == 'Vector3' and 'Vector3Value'),cam,{Name='origin',Value=origin}) end
			cam.Parent = who
			wait()
			cam.Disabled = false
		end
	end)()
end

function CamShakeAll(times,intense,origin)

end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end


MAINRUINCOLOR = BrickColor.new("Really red")
MAINRUINCOLOR2 = BrickColor.new("Really black")
function newbosschatfunc(text,delay)
	
end
function bosschatfunc(text,color,watval)

end

Player.Chatted:connect(function(message)

end)



function CreatePart2(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function CreateWeldOrSnapOrMotor2(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local LASTPART = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart2(3, Character, "SmoothPlastic", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/.5,0,.5)
	else
		local Horn = CreatePart2(3, Character, "SmoothPlastic", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/.5,0,.5)
	end
end
local LASTPART = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart2(3, Character, "SmoothPlastic", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/.5,0,.5)	
	else
		local Horn = CreatePart2(3, Character, "SmoothPlastic", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/.5,0,.5)
	end
end

function ChangeName(Text)
	NAMEMODE.Text = Text
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
	local weld = Instance.new("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
	weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
	return weld
end

-- 1x_0c Weld Weapons, bruh.

local AKWeld = nil

local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = AKWeld
SRightAWeld.Name = "AK47"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local BanishGun = nil
local Hole = nil


local RobotarmWeld = nil

local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = RobotarmWeld
KATSRightAWeld.Name = "Bot"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Robotarm = nil
local RoboHole = nil



local ULTRAWeld = nil

local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = ULTRAWeld
KATSRightAWeld.Name = "UltraGun"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local UltraGun = nil
local UltraHole = nil
local UltraHole2 = nil


local BOSSWeld = nil

local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = BOSSWeld
KATSRightAWeld.Name = "O_O"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local BOSSGUN = nil
local BOSSHole1 = nil
local BOSSHole2 = nil
local BOSSHole3 = nil


local GunWeld = nil

local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = GunWeld
KATSRightAWeld.Name = "GUN"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Gun = nil
local GunHole = nil

local RainAkWeld = nil

local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = RainAkWeld
KATSRightAWeld.Name = "rain"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local RAIN = nil
local RAINHole = nil


local PistolWeld = nil

local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = PistolWeld
SRightAWeld.Name = "Pistol"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local PistolGun = nil
local PistolHole = nil


local SniperWeld = nil
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = SniperWeld
SRightAWeld.Name = "Sniper"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local SniperGun = nil
local SniperHole = nil


local KatanaWeld = nil

local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = KatanaWeld
KATSRightAWeld.Name = "Katana"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Katana = nil
local KatanaHit = nil


function secret()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Secret"
	ChangeName("Secret")
	sick.SoundId = "rbxassetid://460439241"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end

function BOSS()
	ATTACK = true
	Rooted = true
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0))).lookVector, 25*SIZE, Character)
	WACKYEFFECT({Time = 60, EffectType = "Wave", Size = Vector3.new(12,0.55,12)*SIZE, Size2 = Vector3.new(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
	Swait(10)
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.5,0.55,0.5), Size2 = Vector3.new(0.5,4,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 1.15, SoundVolume = 6})
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.55,0.5,0.5), Size2 = Vector3.new(4,0.5,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	Swait(57)
	WACKYEFFECT({Time = 150, EffectType = "Wave", Size = Vector3.new(62,35,62)*SIZE, Size2 = Vector3.new(62,35,62), Transparency = 1, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 1259054947, SoundPitch = 1, SoundVolume = 6})
	Swait(6.5)
	WACKYEFFECT({Time = 180, EffectType = "Block", Size = Vector3.new(24,24,24)*1.5, Size2 = Vector3.new(0,8,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.new"Really black".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    MODE = "BOSS"
	ChangeName("THE ULTIMATE BANISHER")
	bosschatfunc("HERE I COME",MAINRUINCOLOR,1)
	sick.SoundId = "rbxassetid://612924543"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end


function ULTRA_MODE()
	ATTACK = true
	Rooted = true
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0))).lookVector, 25*SIZE, Character)
	WACKYEFFECT({Time = 60, EffectType = "Wave", Size = Vector3.new(12,0.55,12)*SIZE, Size2 = Vector3.new(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
	Swait(10)
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.5,0.55,0.5), Size2 = Vector3.new(0.5,4,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 1.15, SoundVolume = 6})
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.55,0.5,0.5), Size2 = Vector3.new(4,0.5,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	Swait(57)
	WACKYEFFECT({Time = 150, EffectType = "Wave", Size = Vector3.new(62,35,62)*SIZE, Size2 = Vector3.new(62,35,62), Transparency = 1, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 1259054947, SoundPitch = 1, SoundVolume = 6})
	Swait(6.5)
	WACKYEFFECT({Time = 180, EffectType = "Block", Size = Vector3.new(24,24,24)*1.5, Size2 = Vector3.new(0,8,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.new"Really black".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	MODE = "CAN"
	ChangeName("CANNON")
	sick.SoundId = "rbxassetid://1416035124"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.90
	ATTACK = false
	Rooted = false
end


function katana()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Katana"
	ChangeName("A D D I C T")
	sick.SoundId = "rbxassetid://5368276808"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.87
	--sick:Play()
	ATTACK = false
	Rooted = false
end

function ROBO()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Robot"
	ChangeName("ROBOT")
	sick.SoundId = "rbxassetid://286050652"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.87
	--sick:Play()
	ATTACK = false
	Rooted = false
end


function BloodWater()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "BloodWater"
	ChangeName("B L O O D W A T E R")
	sick.SoundId = "rbxassetid://2256171111"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	ATTACK = false
	Rooted = false
end

function MASKED()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Masked"
	ChangeName("Snake God")
	sick.SoundId = "rbxassetid://6992265966"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end

function revenge()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Rev"
	ChangeName("K A S A N O V A")
	sick.TimePosition = 0
	sick.SoundId = "rbxassetid://6755404808"
	sick.Volume = 5
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end

function Reaper()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Reaped"
	ChangeName("???")
	sick.SoundId = 'rbxassetid://1269357712'
	sick.Volume = 100
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end
------MODES

function IAMSPEED()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "speed"
	ChangeName("comfort")
	sick.SoundId = "rbxassetid://7268294510"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end




function Dream()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = nil, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Oh"
	ChangeName("ランコ")
	sick.SoundId = "rbxassetid://7228128444"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end



function burn()
	ATTACK = false
	Rooted = false
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Burn"
	ChangeName("Hell")
	sick.SoundId = "rbxassetid://3471734768"
	sick.Volume = 5
	sick.Pitch = 1
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
end


function BANISH_MODE()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,1), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,1), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,1), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "THE REAL"
	ChangeName("CHAOS BANISHER")
	sick.SoundId = "rbxassetid://343860759"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	ATTACK = false
	Rooted = false
end

function DETERMINATED()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "burning"
	ChangeName("DETERMINED SANS")
	sick.SoundId = "rbxassetid://4464602298"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	ATTACK = false
	Rooted = false
end

function rainbow()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Demons"
	ChangeName("D e m o n s")
	sick.SoundId = 'rbxassetid://2683294752'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.85
	ATTACK = false
	Rooted = false
end

function BAN()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "BAN"
	ChangeName("KILLER")
	sick.SoundId = 'rbxassetid://1539245059'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.85
	ATTACK = false
	Rooted = false
end


function help()
	ATTACK = true
	Rooted = true
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Devil"
	ChangeName("Devil")
	sick.SoundId = 'rbxassetid://930541401'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.85
	ATTACK = false
	Rooted = false
end

local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"
Particle.Color = ColorSequence.new(C3(0,0,0),C3(1,0,0))
--ParticleEmitter({Speed = 5, Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

local LASTPART = Head
for i = 1, 20 do
	local MATH = 1 - i / 30
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Dirt brown", "Detail", VT(0.25 * MATH, 0.25, 0.25 * MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*11-3)/255,0,0)
		Horn.Material = Enum.Material.Neon
	else
		local Horn = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Dirt brown", "Detail", VT(0.25 * MATH, 0.25, 0.25 * MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*11-3)/255,0,0)
		Horn.Material = Enum.Material.Neon
	end
end

local LASTPART = Head
for i = 1, 20 do
	local MATH = 1 - i / 30
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Dirt brown", "Detail", VT(0.25 * MATH, 0.25, 0.25 * MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*11-3)/255,0,0)
		Horn.Material = Enum.Material.Neon
	else
		local Horn = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Dirt brown", "Detail", VT(0.25 * MATH, 0.25, 0.25 * MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*11-3)/255,0,0)
		Horn.Material = Enum.Material.Neon
	end
end





local LASTPART = Torso
for i = 1, 45 do
	local MATH = 1 - i / 60
	if LASTPART == Torso then
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "Black", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, -0.75, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail	
		Tail.Color = C3((i*5-3)/255,0,0)
		Tail.Material = Enum.Material.Neon
		table.insert(TAIL, WLD)
	else
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "Black", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, Tail.Size.Y / 2, 0) * ANGLES(RAD(-1.2), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		Tail.Color = C3((i*5-3)/255,0,0)
		Tail.Material = Enum.Material.Neon
		table.insert(TAIL, WLD)
	end
end

for i = 1, 16 do
	local FACE = CreatePart(3, Character, "Fabric", 0, 0+(i-1)/16.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
	FACE.Color = C3(0,0,0)
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.45-(i-1)/25,0), CF(0, 0, 0))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function SpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end

function THESpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really blue", "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end

function RAINSpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, BrickColor.Random().Color, "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end


Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)--You can change the rot
Particle.RotSpeed = NumberRange.new(-180, 180)---You can change the rotspeed
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"--You can change the texture
Particle.Color = ColorSequence.new(C3(1,0,0),C3(0.4,0,0))--You can change the color

--ParticleEmitter({Speed = 5, Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

Weapon.Parent = Character


local SKILLTEXTCOLOR = C3(1,0,0)---change the color of this if u want
local SKILLFONT = "Antique"--You can change the font
local SKILLTEXTSIZE = 7--change the textsize if you want

Humanoid.Died:connect(function()
	ATTACK = true
end)

--local SKILL1FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.1, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
--[[local SKILL2FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.63, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.215, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.525, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.365, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")
]]
--local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Banisher Bullet", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 1")
--[[local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Ability 2", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Ability 3", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Ability 4", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] Mercy", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 5")
]]

function printbye(Name)
	local MESSAGES = {"You cannot struggle, ","Your existance is an insult, ","Fade, ","Your existance is not desired, ","You are not permitted here, ","You are not to decide your fate, ","Be gone, ","You are already dead, ","Your live is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","Your fate was already decided, ","Goodbye, ","You cannot ignore my command, ","You cannot resist my command, ","You already died, "}
	bosschatfunc(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".",MAINRUINCOLOR,1)	
end

workspace.ChildAdded:connect(function(instance)
    for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					printbye(instance.Name)
					instance:ClearAllChildren()
					Debris:AddItem(instance,0.0005)
				end))
			end
		end
	end
end)

function sit()
	ATTACK = true
	Rooted = true
	local LOOP = true
	KEY = Mouse.KeyDown:connect(function(NEWKEY)
		if NEWKEY == "t" then
			KEY:Disconnect()
			LOOP = false
		end
	end)
	repeat
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.70) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until LOOP == false
	ATTACK = false
	Rooted = false
	if MODE == "BloodWater" or MODE == "burning" or MODE == "Demons" then

	elseif MODE == "Secret" then

	elseif MODE == "Katana" then

	elseif MODE == "Devil" then

	end
end



--//=================================\\
--||			DAMAGING
--\\=================================//

function Banish(Foe)

end

function ApplyAoE(POSITION,RANGE,ISBANISH)

end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "Sphere"
    mesh.Scale = SIZE
    mesh.Offset = VT(0,0,0)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function BANNEAREST(POS,RANGE)
	
end

function Slice(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale * GROW
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//


function Shot()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -1.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end   
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5, 0.5, 2) * ANGLES(RAD(110), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function SpawnTrail2(FROM,TO,BIG)
	local TRAIL = CreatePart2(3, Effects, "Neon", 0, 0, BrickColor.Random(), "Trail", VT(45,45,45))           
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end

function SpawnTrail3(FROM,TO,BIG)
	local TRAIL = CreatePart2(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
			TRAIL.Color = BrickColor.Random().Color
		end
		TRAIL:remove()
	end))
end


function CANNON_SHOT()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -1.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end   
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5, 0.5, 2) * ANGLES(RAD(110), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function UltraShot()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -1.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end   
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5, 0.5, 2) * ANGLES(RAD(110), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function CreamShot()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -1.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end   
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5, 0.5, 2) * ANGLES(RAD(110), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function RAINShot()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -1.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end   
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5, 0.5, 2) * ANGLES(RAD(110), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function PistolShot()

	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Slash()
	ATTACK = true
	Rooted = true
	local STOPPP = false
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	coroutine.wrap(function()
		while true do
			Swait()
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			if STOPPP == true then
				break
			end
		end
	end)()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Really black",VT(1,1,0))
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, -0.5*SIZE) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE, -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0,0.1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", Torso, 10, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	CreateSound(62339698, Torso, 10, 0.4)
	BANNEAREST(RootPart.Position, 55)
	WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(100,100,100)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	STOPPP = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		Humanoid.CameraOffset = VT(MRANDOM(-500,500)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-500,500)/2.5)/30
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	Humanoid.CameraOffset = VT(0,0,0)
	ATTACK = false
	Rooted = false
end

function AttackTemplate()
	ATTACK = true
	Rooted = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	
	if Key == "z" and ATTACK == false and MODE ~= "burning" then
		Shot()
	end
	
	if Key == "z" and ATTACK == false then
		CreamShot()
	end
	
	if Key == "z" and ATTACK == false then
		UltraShot()
	end
	
	if Key == "z" and ATTACK == false and MODE == "burning" then
		RAINShot()
	end
	
	if Key == "z" and ATTACK == false then
		CANNON_SHOT()
	end
	
	if Key == "x" and ATTACK == false then
		PistolShot()
	end
	
	if Key == "c" and ATTACK == false then
		Slash()
	end
	
	if Key == "1" and ATTACK == false and MODE ~= "BloodWater" then
		BloodWater()
	end

	if Key == "2" and ATTACK == false and MODE ~= "burning" then
		DETERMINATED()
	end
	
	if Key == "3" and ATTACK == false and MODE ~= "Demons" then
		rainbow()
	end
	
	if Key == "4" and ATTACK == false and MODE ~= "Devil" then
		help()
	end
	
	if Key == "5" and ATTACK == false and MODE ~= "BAN" then
		BAN()
	end
	
	if Key == "7" and ATTACK == false and MODE ~= "Robot" then
		ROBO()
	end
	
	if Key == "8" and ATTACK == false and MODE ~= "THE REAL" then
		BANISH_MODE()
	end
	
	if Key == "9" and ATTACK == false and MODE ~= "BOSS" then
		BOSS()
	end
	
	if Key == "0" and ATTACK == false and MODE ~= "CAN" then
		ULTRA_MODE()
	end

	if Key == "e" and  ATTACK == false and MODE ~= "Burn" then
		burn()
	end

    if Key == "r" and ATTACK == false and MODE ~= "Rev" then
		revenge()
	end

    if Key == "t" and ATTACK == false and MODE ~= "Masked" then
		 MASKED()
	end
  
    if Key == "f" and ATTACK == false and MODE ~= "Oh" then
		 Dream()
	end

    if Key == "u" and ATTACK == false and MODE ~= "Reaped" then
		 Reaper()
	end
 
    if Key == "g" and ATTACK == false and MODE ~= "speed" then
		 IAMSPEED()
	end

	if Key == "6" and ATTACK == false and MODE ~= "Katana" then
		katana()
	end
	
	if Key == "y" and ATTACK == false then
		sit()
	end
	
end
function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

function CreateMesh2(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function WACKYEFFECT5(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or BrickColor.Random().Color)
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart2(3, Effects, "Neon", 0, 0, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		EFFECT.Color = BrickColor.Random().Color
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

local CONNECT = nil

while true do
	Swait()
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	if Character:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",Character)
	end
	for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(3.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		end
	end
	local HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
				RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(25 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(25 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
	    end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		DOUBLED = false
		READYTODOUBLE = false
		if MODE == "BloodWater" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160 + 4 * COS(SINE / 62)), RAD(0), RAD(15 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-15 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-17 + 9.4 * COS(SINE / 26)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5, -0.5) * ANGLES(RAD(-22 + 10.8 * COS(SINE / 32)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		if MODE == "THE REAL" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 20) + 0.05 * SIN(SINE / 20), 0, 0+sick.PlaybackLoudness/1800) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(0 - 10 * COS(SINE / 20) + MRANDOM(-6,6))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.55, 0) * ANGLES(RAD(180 - 5 * COS(SINE / 15)), RAD(0 - 5*SIN(sick.PlaybackLoudness/500)), RAD(-5 + sick.PlaybackLoudness/545)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, 0.5, 0) * ANGLES(RAD(5 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(-15 + MRANDOM(-6,6))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 - 0.05 * COS(SINE / 20) + 0.05 * SIN(SINE / 20), -1-sick.PlaybackLoudness/1800, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 - 0.05 * COS(SINE / 20) + 0.05 * SIN(SINE / 20), -1-sick.PlaybackLoudness/1800, -0.03) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		---NEW MODE NIGGA
        if MODE == "speed" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.5*math.sin(sine/25)) * CFrame.Angles(math.rad(-90+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(25+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.75,.1) * CFrame.Angles(math.rad(-165.1-5*math.cos(sine/25)),math.rad(0),math.rad(-40)) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165-5*math.cos(sine/25)),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(0+10*math.cos(sine/25)),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(25+10*math.cos(sine/25)),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
		end
        if MODE == "Oh" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(30 *COS(SINE/12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(10-10*math.sin(sine/50))) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
        if MODE == "Reaped" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0.2 , -0.05 +0.2*COS(SINE/35)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-5,5)), RAD(0+MRANDOM(-5,5)), RAD(0+MRANDOM(-5,5))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5+math.random(-5,5)/100, 0.5+0.1*SIN(SINE/35)+math.random(-5,5)/100, -0.5+math.random(-5,5)/100) * ANGLES(RAD(140), RAD(0), RAD(-20))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.5+math.random(-5,5)/100, 0.5+0.1*SIN(SINE/35)+math.random(-5,5)/100, -0.5+math.random(-5,5)/100) * ANGLES(RAD(140), RAD(0), RAD(20)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-0.2*COS(SINE/35), 0) * ANGLES(RAD(20+2*COS(SINE/35)), RAD(-1), RAD(1)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-0.2*COS(SINE/35) , 0) * ANGLES(RAD(20+2*COS(SINE/35)), RAD(1), RAD(-1)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
		end
        if MODE == "Burn" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / 5)
		end
		if MODE == "Masked" and ATTACK == false then

			local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
			FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
			FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
			FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
			FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
			FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
			Animation_Speed = 2
			SIZE = 1
			if VALUE1 == false and math.random(1,55) == 1 then
				coroutine.resume(coroutine.create(function()
					VALUE1 = true
					wait(2)
					CreateSound(749189256,RootPart,2,math.random(5, 15) / 10,false)
					for i=1,25 do
						Swait()
						FT.Parent = Torso
						FRA.Parent = RightArm
						FLA.Parent = LeftArm
						FRL.Parent = RightLeg
						FLL.Parent = LeftLeg
						for _,v in next, Character:GetDescendants() do
							if(v:IsA'DataModelMesh')then
								v.Offset = Vector3.new(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
							end
						end		
					end
					VALUE1 = false
					FT.Parent = nil
					FRA.Parent = nil
					FLA.Parent = nil
					FRL.Parent = nil
					FLL.Parent = nil
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(0,0,0)
						end
					end	
				end))
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			snap = math.random(1,72)
			if snap == 1 then	
				CreateSound(363808674,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
		end
		if MODE == "burning" and ATTACK == false then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE /12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		end


		
		if MODE == "BAN" and ATTACK == false then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		if MODE == "CAN" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(5 - 4 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35*SIZE, 0.65*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.5*SIZE) * ANGLES(RAD(-35), RAD(25 - 2.5 * SIN(SINE / 12)), RAD(55 - 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		if MODE == "BOSS" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		if MODE == "Rev" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.1)
			Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1* Player_Size) - 1)) * ANGLES(RAD(15 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.05)
			RightHip.C0 = Clerp(RightHip.C0, CF(1* Player_Size, -1 - 0.15 * COS(SINE / 20)* Player_Size, -0.1* Player_Size) * ANGLES(RAD(0), RAD(76), RAD(0)) * ANGLES(RAD(-8.5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.1)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * COS(SINE / 20)* Player_Size, -0.3* Player_Size) * ANGLES(RAD(0), RAD(-76), RAD(0)) * ANGLES(RAD(-8.5 - 6.5 * SIN(SINE / 12)), RAD(15), RAD(25)), 0.1)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.4* Player_Size, 0.4 + 0.08 * SIN(SINE / 12)* Player_Size, 0* Player_Size) * ANGLES(RAD(25 - 6.5 * COS(SINE / 12)), RAD(-.6), RAD(13 + 6.5 * SIN(SINE / 12))), 0.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4* Player_Size, 0.4 + 0.08 * SIN(SINE / 12)* Player_Size, 0* Player_Size) * ANGLES(RAD(25 - 6.5 * COS(SINE / 12)), RAD(-.6), RAD(-13 - 6.5 * SIN(SINE / 12))), 0.1)
			end
		if MODE == "Robot" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 - 0.3 * COS(SINE / 2)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-20), RAD(-.6), RAD(-43)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(-20), RAD(-.6), RAD(43)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.3 * COS(SINE / 2),-0.01) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.3 * COS(SINE / 2),-0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		if MODE == "Demons" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,0+.1*COS(SINE / 18))*ANGLES(RAD(0+1*COS(SINE / 18)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/7.5), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.1*COS(SINE / 18), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.-sick.PlaybackLoudness/1000, -0.6) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		if MODE == "Secret" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 - 0.1 * SIN(SINE / 25)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(8 * SIN(SINE / 26)), RAD(-25 - 8.5 * SIN(SINE / 25))), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(8 * SIN(SINE / 50)), RAD(60), RAD(50 + 8.5 * SIN(SINE / 25))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.8, 0.4, -0.7) * ANGLES(RAD(90), RAD(0), RAD(86)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.1 * SIN(SINE / 25), -0.01) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.1 * SIN(SINE / 25), -0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		if MODE == "Devil" and ATTACK == false then	
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.3 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(0 - 4 * SIN(SINE / 24)), RAD(0 + 1 * COS(SINE / 24)), RAD(-10)), 0.1 / Animation_Speed)            
			Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(7 - 2 * SIN(SINE / 20)), RAD(-20), RAD(0)), 0.1 / Animation_Speed)              
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.1 - 0.1 * COS(SINE / 24) - RAD(0 + 1 * COS(SINE / 24)), -0.3) * ANGLES(RAD(13 - 6 * SIN(SINE / 24)), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.3 - 0.1 * COS(SINE / 24) + RAD(0 + 1 * COS(SINE / 24)), -0.15) * ANGLES(RAD(-90 - 6 * SIN(SINE / 24)), RAD(-90), RAD(0)), 0.1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.4 + 0.1 * SIN(SINE / 35), 0.5) * ANGLES(RAD(90), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.3, 0.7 + 0.1 * SIN(SINE / 35), -1.5) * ANGLES(RAD(80), RAD(0 + 4 * SIN(SINE / 35)), RAD(50 + 3 * SIN(SINE / 35))), 0.1 / Animation_Speed)
		end
		if MODE == "Katana" and ATTACK == false then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(2 + 6.0 * SIN(SINE / 15)), RAD(0), RAD(-25)), 3 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0- 0.1 * COS(SINE / 30), 0 + 0.1 * COS(SINE / 15)) * ANGLES(RAD(0+ 5 * COS(SINE / 30)), RAD(0), RAD(25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(12))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-6-2.5 * COS(SINE / 30)), RAD(0), RAD(0+ 5 * COS(SINE / 30))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-6+2.5 * COS(SINE / 30)), RAD(0), RAD(0- 5 * COS(SINE / 30))), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			if MODE == "BloodWater" then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			elseif MODE == "Secret" or MODE == "Katana" or MODE == "BAN" then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			elseif MODE == "burning" then
				DOUBLED = false
				READYTODOUBLE = false
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)
				if   false and MRANDOM(1,7) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
				elseif   true and MRANDOM(1,5) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)	
				end	
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				if   false then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(70) * COS(SINE / 7) , RAD(90), RAD(5)), 0.1)
				else
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / 5)
				end
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(-70) * COS(SINE / 7) , RAD(-90),	RAD(-5)), 0.1)
			elseif MODE == "Masked" then
				local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(1, 2) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(1, 2)), RAD(MRANDOM(1, 2))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 + 45 * math.cos(sine / 12)), math.rad(0 - 10 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp, 1 / 3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			
			
			elseif MODE == "speed" then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(70) * COS(SINE / 7) , RAD(90), RAD(5)), 0.1)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(-70) * COS(SINE / 7) , RAD(-90),	RAD(-5)), 0.1)
			elseif MODE == "Robot" then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			else
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			end	
		end
	end
	unanchor()
	Humanoid.MaxHealth = math.huge
	Humanoid.Health = math.huge
	NAMEMODE.Rotation = 0+5*M.C(SINE/32)
	NAMEMODE.TextColor3 = Color3.new(sick.PlaybackLoudness/500,0,0)
	if MODE == "Katana" or MODE == "Demons" then
		CamShakeAll(sick.PlaybackLoudness/75,sick.PlaybackLoudness/75)
	end
	RightArm.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	LeftArm.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	Torso.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	Head.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	LeftLeg.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	RightLeg.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end

end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--