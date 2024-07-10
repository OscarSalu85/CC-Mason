chat = peripheral.wrap("up")
while true do
    local event, username, message = os.pullEvent("chat")
    inicio = string.sub(message,1,7)
    final = string.sub(message,7)
    if inicio == "$permit" then
        if final == " help" then
            io.write("Toma ayuda bobo")
        else
            io.write("Pero pon algo bobo")
        end
    end
end