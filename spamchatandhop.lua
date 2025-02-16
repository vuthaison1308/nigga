repeat wait() until game:IsLoaded()

spawn(function()
    function getMessage()
        return getgenv().message[math.random(1, #getgenv().message)]
    end
    while getgenv().AutoText do
        local args = {[1] = getMessage(),[2] = "All"}
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        wait(getgenv().delaymessage)
    end
end)

spawn(function()
    wait(getgenv().HopDelay)
    if getgenv().Hop then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vuthaison1308/yHWqtSfEA2-contest-433147/refs/heads/main/hophighplaying.lua"))()
    end
end)
spawn(function()
    wait(1)
    local R = game:GetService("ReplicatedStorage");
    local CommF = R.Remotes.CommF_;
    CommF:InvokeServer("SetTeam", "Pirates");
end)
