chat = peripheral.find("chatBox")
while true do
    local event, username, message = os.pullEvent("chat")
    inicio = string.sub(message,1,6)
    command = string.sub(message,8,11)
    if inicio == "permit" then
        if command == "help" then
            chat.sendMessageToPlayer("Comandos disponibles:",username, "Server")
            sleep(1)
            chat.sendMessageToPlayer("- 'permit help' -> Ver todos los comandos disponibles",username, "Server")
            sleep(1)
            chat.sendMessageToPlayer("- 'permit edit <Modificar Casa> <Matar> <Robar>' -> Editar permisos de cara a otros jugadores, rellenar con S/N (Si o No)",username, "Server")
        elseif command == "edit" then
            error = false
            modif = string.sub(message,13,13)
            matar = string.sub(message,15,15)
            robar = string.sub(message,17,17)
            if not (modif == "S" or modif == "N") then
                error = true
            end
            if not (matar == "S" or matar == "N") then
                error = true
            end
            if not (robar == "S" or robar == "N") then
                error = true
            end
            if error then
                chat.sendMessageToPlayer("Formato incorrecto, usa 'permit help para ver el formato",username, "Server")
            else
                if matar == "S" then
                    matar = '{"text":"M ","color":"green"},'
                else
                    matar = '{"text":"M ","color":"red"},'
                end
                if modif == "S" then
                    modif = '{"text":"MC ","color":"green"},'
                else
                    modif = '{"text":"MC ","color":"red"},'
                end
                if robar == "S" then
                    robar = '{"text":"R","color":"green"},'
                else
                    robar = '{"text":"R","color":"red"},'
                end
                commands.exec("team add " .. username)
                commands.exec("team modify " .. username ..' prefix {"text":"[","color":"white","extra":[' .. modif .. " " .. matar .. " " .. robar .. '{"text":"] ","color":"white"}] }')
                commands.exec("team join " .. username .. " " .. username)
            end
            
        else
            chat.sendMessageToPlayer("Usa 'permit help' para ver los comandos disponibles",username, "Server")
        end
    end
end