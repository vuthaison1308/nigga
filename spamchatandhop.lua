repeat wait() until game:IsLoaded()

local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
spawn(function()
    while getgenv().AutoText do
        local args = {[1] = getgenv().message,[2] = "All"}
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        wait(getgenv().delaymessage)
    end
end)
spawn(function()
    wait(getgenv().HopDelay)
    if getgenv().Hop then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vuthaison1308/nigga/refs/heads/main/bfhop.lua"))()
    end
end)
spawn(function()
    wait(1)
    local R = game:GetService("ReplicatedStorage");
    local CommF = R.Remotes.CommF_;
    CommF:InvokeServer("SetTeam", "Pirates");
end)
