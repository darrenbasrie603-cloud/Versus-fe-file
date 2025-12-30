-- =================================================
-- HOLOX ROBLOX VERSUS SCRIPT v3.5
-- =================================================
-- Pure Skill Combat | No Items | R6/R15 Support
-- Delta Mobile Executor Support + GUI Buttons
-- FE Compatible | Anti-Ban | Anti-Cheat | Anti-Report
-- By: Diki | Project Holox | Build: 2024.12.25
-- =================================================

-- Core Configuration
local Holox = {
    Name = "Versus Combat System",
    Version = "3.5.0",
    Build = "Delta-Mobile-FE",
    Creator = "Diki",
    Contact = "0895329700376",
    
    -- Combat Settings
    MaxPlayers = 20,
    BaseDamage = 15,
    SkillCooldown = 2,
    ComboWindow = 1.5,
    MobileFriendly = true,
    
    -- UI Settings
    ButtonSize = UDim2.new(0, 70, 0, 70),
    ButtonSpacing = 10,
    MobileScale = 1.2
}

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ContextActionService = game:GetService("ContextActionService")

-- ==================== SECURITY LAYER ====================
local Security = {
    DetectedHooks = {},
    OriginalFunctions = {},
    AntiTamperEnabled = true
}

-- Memory Obfuscation
local function SecureCall(func, ...)
    local args = {...}
    local success, result = pcall(function()
