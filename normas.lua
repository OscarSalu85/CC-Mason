chat = peripheral.find("chatBox")
while true do
    local event, username, message = os.pullEvent("chat")
    inicio = string.sub(message,1,7)
    final = string.sub(message,7)
    if inicio == "~permit" then
        if final == " help" then
            chat.sendMessage("Toma ayuda bobo", "El computer")
        else
            chat.sendMessage("Pero pon algo bobo", "El computer")
        end
    end
end