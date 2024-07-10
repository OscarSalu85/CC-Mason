chat = peripheral.find("chatBox")
while true do
    local event, username, message = os.pullEvent("chat")
    inicio = string.sub(message,1,6)
    command = string.sub(message,7,12)
    if inicio == "permit" then
        if command == " help" then
            chat.sendMessageToPlayer("Comandos disponibles:",username, "Server")
            chat.sendMessageToPlayer("- 'permit help' -> Ver todos los comandos disponibles",username, "Server")
            chat.sendMessageToPlayer("- 'permit edit <Modificar Casa> <Matar> <Robar>' -> Editar permisos para otros jugadores, rellenar con S/N (Si o No)",username, "Server")
        elseif command == " bobo" then
            io.write("Bobo --> " .. username)
            commands.exec("team add " .. username)
            commands.exec("team modify " .. username ..' prefix {"text":"[","color":"red","extra":[{"text":"BOBO","color":"white"},{"text":"] ","color":"red"}] }')
            commands.exec("team join " .. username .. " " .. username)
        elseif command == " edit" then
            error = false
            modif = string.sub(message,14,15)
            matar = string.sub(message,17,18)
            robar = string.sub(message,20,21)
            if not (modif == "Y" or modif == "N") then
                error = true
            end
            if not (matar == "Y" or matar == "N") then
                error = true
            end
            if not (robar == "Y" or robar == "N") then
                error = true
            end
            if error then
                chat.sendMessageToPlayer("Formato incorrecto, usa 'permit help para ver el formato",username, "Server")
            else
                if matar == "Y" then
                    matar = '{"text":"M","color":"green"},'
                else
                    matar = '{"text":"M","color":"red"},'
                end
                if modif == "Y" then
                    modif = '{"text":"MC","color":"green"},'
                else
                    modif = '{"text":"MC","color":"red"},'
                end
                if robar == "Y" then
                    robar = '{"text":"R","color":"green"},'
                else
                    robar = '{"text":"R","color":"red"},'
                end
                commands.exec("team add " .. username)
                commands.exec("team modify " .. username ..' prefix {"text":"[","color":"white","extra":[' .. modif .. matar .. robar .. '{"text":"] ","color":"white"}] }')
                commands.exec("team join " .. username .. " " .. username)
            end
            
        else
            chat.sendMessageToPlayer("Usa 'permit help' para ver los comandos disponibles",username, "Server")
        end
    end
end