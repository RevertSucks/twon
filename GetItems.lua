local plr = game.Players.LocalPlayer
local guis = plr.PlayerGui
--MUST RUN CMDS COMMAND OR ELSE THIS WONT WORK!
repeat wait() until guis:FindFirstChild("CmdLister")
local cmdlister = guis["CmdLister"]

local toolfolder = cmdlister["ToolFolder"]
local armorfolder = cmdlister["ArmorFolder"]

_G.guns = {}
_G.attachments = {}
_G.ammo = {}
_G.other = {}
_G.gp_tool = {}

_G.armor = {}
_G.gp_armor = {}

 for i,v in pairs(toolfolder:GetDescendants()) do
    if not v:IsA("Folder") then
        
        if v.Parent.Name == "Guns" then
            table.insert(_G.guns,v.Name)
        end

        if v.Parent.Name == "Attachments" then
            table.insert(_G.attachments,v.Name)
        end

        if v.Parent.Name == "Ammo" then
            table.insert(_G.ammo,v.Name)
        end

        if v.Parent.Name == "Other" then
            table.insert(_G.other,v.Name)
        end

        if v.Parent.Name == "Gamepass" then
            table.insert(_G.gp_tool,v.Name)
        end

    end
 end

 for i,v in pairs(armorfolder:GetDescendants()) do
    if not v:IsA("Folder") then
        
        if v.Parent.Name == "Armor" then
            table.insert(_G.armor,v.Name)
        end

        if v.Parent.Name == "Gamepass" then
            table.insert(_G.gp_armor,v.Name)
        end

    end
 end

 cmdlister:Destroy() --cleanup after yourself!
