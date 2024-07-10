chat = peripheral.find("chatBox")
while true do
    local event, username, message = os.pullEvent("chat")
    inicio = string.sub(message,1,6)
    final = string.sub(message,7)
    if inicio == "permit" then
        if final == " help" then
            chat.sendMessageToPlayer("Toma ayuda bobo",username, "Server")
        elseif final == " bobo" then
            io.write("Bobo --> " .. username)
            commands.exec("team add " .. username)
            commands.exec("team modify " .. username ..' prefix {"text":"[","color":"red","extra":[{"text":"BOBO","color":"white"},{"text":"] ","color":"red"}] }')
            commands.exec("team join " .. username .. " " .. username)

        else
            chat.sendMessageToPlayer("Pero pon algo bobo",username, "Server")
        end
    end
end