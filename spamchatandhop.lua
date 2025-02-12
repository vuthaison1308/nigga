repeat wait() until game:IsLoaded()
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
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/vuthaison1308/vuthaison1308/main/hopserver.lua")()
        module:Teleport(game.PlaceId)
    end
end)
