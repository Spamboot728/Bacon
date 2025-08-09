local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeianRussell/Kavo-UI-Library/main/Movable.source.lua"))()
local Window = Library.CreateLib("retro_destruct", "Ocean")

--main

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
local Section = Tab:NewSection("tool giver model (only works in 2014+ games)")

Section:NewButton("give tool", "ButtonInfo", function()
    local plr = game.Players.LocalPlayer
for _, v in pairs(workspace:GetDescendants()) do
  if v.Name == "PUT THE WEAPON IN THIS BRICK" then
    firetouchinterest(plr.Character.HumanoidRootPart, v, 0)
    firetouchinterest(plr.Character.HumanoidRootPart, v, 1)
      end
    end
  end)

local Section = Tab:NewSection("Btools")
local Section = Tab:NewSection("PaintBucket")

Section:NewTextBox("mass paint", "TextboxInfo", function(txt)
  local plr = game.Players.LocalPlayer
  local tool = plr.Backpack:FindFirstChild("PaintBucket")
  for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") or v:IsA("Part") then
      local ohInstance1 = v
      local ohBrickColor2 = BrickColor.new(txt)
      if tool and tool:FindFirstChild("Paint") then
        tool.Paint:FireServer(ohInstance1, ohBrickColor2)
          end
        end
      end
end)

Section:NewButton("static mass paint", "ButtonInfo", function()
  local plr = game.Players.LocalPlayer
local tool = plr.Backpack:FindFirstChild("PaintBucket")
for _, v in pairs(workspace:GetDescendants()) do
if v:IsA("BasePart") or v:IsA("Part") then
  local ohInstance1 = v
  local ohBrickColor2 = BrickColor.random()
  if tool and tool:FindFirstChild("Paint") then
    tool.Paint:FireServer(ohInstance1, ohBrickColor2)
      end
    end
  end
end)

local Section = Tab:NewSection("Hammer")

Section:NewButton("clear unlocked parts", "ButtonInfo", function()
    for _, v in pairs(workspace:GetDescendants()) do
if v:IsA("BasePart") or v:IsA("Part") then
local args = {
	v
}
game:GetService("Players").LocalPlayer.Character:WaitForChild("Hammer"):WaitForChild("MouseDown"):FireServer(unpack(args))
      end
    end
  end)

--watch a tv

local Tab = Window:NewTab("Watch a TV!")
local Section = Tab:NewSection("ClickDetector")

Section:NewButton("duck", "ButtonInfo", function()
    fireclickdetector(workspace["Click to play sound"].ClickDetector)
end)

Section:NewButton("nuke", "ButtonInfo", function()
  fireclickdetector(workspace.nuke.button.ClickDetector)
end)

Section:NewButton("loop nuke", "ButtonInfo", function()
    while task.wait(0.1) do
      fireclickdetector(workspace.nuke.button.ClickDetector)
    end
  end)

Section:NewButton("nuke lag", "ButtonInfo", function()
    workspace.nuke.explosions:Destroy()
    for _ = 1, 500 do
      while task.wait() do
        fireclickdetector(workspace.nuke.button.ClickDetector)
        end
      end
    end)

--prison life

local Tab = Window:NewTab("Prison Life")
local Section = Tab:NewSection("RemoteEvent")

Section:NewLabel("keep your M9/taser unequipped before using buttons!")

Section:NewTextBox("kill player", "TextboxInfo", function(txt)
local players = game:GetService("Players")
  players:FindFirstChild(txt) do
  local args = {
    {
      Instance.new("Part", nil),
      vector.create(-11.409749984741211, 104.1942367553711, -2.1774664560325618e-07),
      vector.create(396.7373046875, 202.47799682617188, 378.2291259765625),
      vector.create(0.10000000149011612, 0.10000000149011612, 3.4036521911621094),
      game:GetService("Players"):WaitForChild(string.lower(txt)).Character:WaitForChild("HumanoidRootPart"),
      9e9,
      2.5060000000000002,
      3.4036521911621094
    }
  }
  game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):WaitForChild("M9"):WaitForChild("Fire"):FireServer(unpack(args))
  end
end)

Section:NewTextBox("stun player", "TextboxInfo", function(txt)
local players = game:GetService("Players")

for _, plrs in pairs(players:GetChildren()) do
local args = {
{
  Instance.new("Part", nil),
  vector.create(-11.409749984741211, 104.1942367553711, -2.1774664560325618e-07),
  vector.create(396.7373046875, 202.47799682617188, 378.2291259765625),
  vector.create(0.10000000149011612, 0.10000000149011612, 3.4036521911621094),

game:GetService("Players"):WaitForChild(string.lower(txt)).Character:WaitForChild("HumanoidRootPart"),
  0,
  2.5060000000000002,
  3.4036521911621094
}
}
game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):WaitForChild("Taser"):WaitForChild("Fire"):FireServer(unpack(args))
    end
  end)

Section:NewButton("kill hostile", "ButtonInfo", function()
    local players = game:GetService("Players")

    for _, plrs in pairs(players:GetChildren()) do
    local args = {
      {
        Instance.new("Part", nil),
        vector.create(-11.409749984741211, 104.1942367553711, -2.1774664560325618e-07),
        vector.create(396.7373046875, 202.47799682617188, 378.2291259765625),
        vector.create(0.10000000149011612, 0.10000000149011612, 3.4036521911621094),
        game:GetService("Players"):WaitForChild(plrs.Name).Character:WaitForChild("HumanoidRootPart"),
        9e9,
        2.5060000000000002,
        3.4036521911621094
      }
    }
    game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):WaitForChild("M9"):WaitForChild("Fire"):FireServer(unpack(args))
    end
  end)

Section:NewButton("stun hostile", "ButtonInfo", function()
    local players = game:GetService("Players")

    for _, plrs in pairs(players:GetChildren()) do
    local args = {
      {
        Instance.new("Part", nil),
        vector.create(-11.409749984741211, 104.1942367553711, -2.1774664560325618e-07),
        vector.create(396.7373046875, 202.47799682617188, 378.2291259765625),
        vector.create(0.10000000149011612, 0.10000000149011612, 3.4036521911621094),
        game:GetService("Players"):WaitForChild(plrs.Name).Character:WaitForChild("HumanoidRootPart"),
        0,
        2.5060000000000002,
        3.4036521911621094
      }
    }
  game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):WaitForChild("Taser"):WaitForChild("Fire"):FireServer(unpack(args))
    end
  end)

Section:NewButton("get tools", "ButtonInfo", function()
  local weapons = workspace.Prison["Weapon Givers"].General
  for _, v in pairs(weapons:GetDescendants()) do
      if v:IsA("ClickDetector") then
        fireclickdetector(v)
      end
    end
  end)

Section:NewButton("destroy hostile zone's", "ButtonInfo", function()

local ExtraProps = workspace.Prison.ExtraProps

    for _, v in pairs(ExtraProps:GetDescendants()) do
    if v:IsA("Folder") then
        v:Destroy()
      end
    end
  end)

--goodluck a plates game

local Tab = Window:NewTab("goodluck")
local Section = Tab:NewSection("PlayerGui")

Section:NewButton("admin shop", "ButtonInfo", function()
    game.Players.LocalPlayer.PlayerGui.AdminGui.Enabled = true
end)

Section:NewButton("announcement", "ButtonInfo", function()
    game.Players.LocalPlayer.PlayerGui.ScreenGui.Enabled = true
end)

--khol's admin

local Tab = Window:NewTab("khol's admin")
local Section = Tab:NewSection("RemoteEvent")

Section:NewTextBox("cmdbar", "TextboxInfo", function(txt)
    
local ohString1 = string.lower(txt)

workspace["Kohl's Admin Commands V2"].CMDBARREMOTE:FireServer(ohString1)
end)

Section:NewButton("dog lag", "ButtonInfo", function()
    local cmds = {":music 4601957187", ":dog all", ":clone all", ":name all !!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!BARK!!"}
    while task.wait() do
      for _, v in pairs(cmds) do
      workspace["Kohl's Admin Commands V2"].CMDBARREMOTE:FireServer(v)
      end
    end
  end)

Section:NewButton("btools crash", "ButtonInfo", function()
    while task.wait() do
      for _ = 1, 100 do
        local args = {
          ":btools others"
        }
        workspace:WaitForChild("Kohl's Admin Commands V2"):WaitForChild("CMDBARREMOTE"):FireServer(unpack(args))
      end
    end
  end)

local Section = Tab:NewSection("Lighting")

Section:NewButton("disco fog", "ButtonInfo", function()
    while task.wait(0.5) do
      local cmds = {":fogend 100", ":fogcolor " .. math.random() .. " " .. math.random() .. " " .. math.random(), ":ambient " .. math.random() .. " " .. math.random() .. " " .. math.random()}
      for _, v in pairs(cmds) do
        workspace["Kohl's Admin Commands V2"].CMDBARREMOTE:FireServer(v)
      end
    end
  end)

Section:NewButton("brightness", "ButtonInfo", function()
    local cmds = {":brightness 99999"}
      for _, v in pairs(cmds) do
      workspace["Kohl's Admin Commands V2"].CMDBARREMOTE:FireServer(v)
    end
  end)

local Section = Tab:NewSection("audio")

Section:NewButton("Exploited Server Alarm[100+ Sales!]", "ButtonInfo", function()
    local cmds = {":music 259174997"}
      for _, v in pairs(cmds) do
      workspace["Kohl's Admin Commands V2"].CMDBARREMOTE:FireServer(v)
    end
  end)

local Section = Tab:NewSection("gear glitches")

Section:NewButton("velocity break", "ButtonInfo", function()
    local cmds = {":gear me 119917513", ":gear me 110789105"}
    for _, v in pairs(cmds) do
      workspace["Kohl's Admin Commands V2"].CMDBARREMOTE:FireServer(v)
    end
  end)

local Section = Tab:NewSection("anti's")

Section:NewButton("anti MessageGUI", "ButtonInfo", function()
while task.wait() do
  for _, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
    if v.Name == "MessageGUI" then
      v:Destroy()
    end
  end
end
  end)

local Tab = Window:NewTab("Extra")
local Section = Tab:NewSection("Extra (the scripts in this section aren't made by me")

Section:NewButton("Inf yield", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
