chat = peripheral.find("chatBox")
io.write("Bot activado")
while true do
    local event, username, message = os.pullEvent("chat")
    inicio = string.sub(message,1,6)
    command = string.sub(message,8,11)
    if inicio == "permit" then
        if command == "help" then

            pcom = {
                {text = "Comandos disponibles:" , color = "dark_purple"}
            }
            json = textutils.serialiseJSON(pcom)
            chat.sendFormattedMessageToPlayer(json,username, "Server")

            sleep(1)

            phelp = {
                {text = "- "},
                {text = "'permit help'" , color = "gold"},
                {text = " -> "},
                {text = "Ver todos los comandos disponibles" , color = "aqua"}
            }
            json = textutils.serialiseJSON(phelp)
            chat.sendFormattedMessageToPlayer(json,username, "Server")

            sleep(1)

            pedit = {
                {text = "- "},
                {text = "'permit edit <Modificar Casa> <Matar> <Robar>'" , color = "gold"},
                {text = " -> "},
                {text = "Editar permisos de cara a otros jugadores, rellenar con S/N (Si o No)" , color = "aqua"}
            }
            json = textutils.serialiseJSON(pedit)
            chat.sendFormattedMessageToPlayer(json,username, "Server")

            sleep(1)

            plist = {
                {text = "- "},
                {text = "'permit list'" , color = "gold"},
                {text = " -> "},
                {text = "Ver lista de todos los jugadores con permisos" , color = "aqua"}
            }
            json = textutils.serialiseJSON(plist)
            chat.sendFormattedMessageToPlayer(json,username, "Server")

            sleep(1)

            prest = {
                {text = "- "},
                {text = "'permit rest'" , color = "gold"},
                {text = " -> "},
                {text = "Reiniciar bot de permisos" , color = "aqua"}
            }
            json = textutils.serialiseJSON(prest)
            chat.sendFormattedMessageToPlayer(json,username, "Server")

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
                pform = {
                    {text = "Formato incorrecto,", color = "red"},
                    {text = " usa ", color = "white"},
                    {text = "'permit help'" , color = "gold"},
                    {text = " para ver el formato", color = "white"}
                }
                json = textutils.serialiseJSON(pform)
                chat.sendFormattedMessageToPlayer(json,username, "Server")
            else
                if matar == "S" then
                    matarS = '{"text":"M ","color":"green"},'
                    matar = "green"
                else
                    matarS = '{"text":"M ","color":"red"},'
                    matar = "red"
                end
                if modif == "S" then
                    modifS = '{"text":"MC ","color":"green"},'
                    modif = "green"
                else
                    modifS = '{"text":"MC ","color":"red"},'
                    modif = "red"
                end
                if robar == "S" then
                    robarS = '{"text":"R","color":"green"},'
                    robar = "green"
                else
                    robarS = '{"text":"R","color":"red"},'
                    robar = "red"
                end
                commands.exec("team add " .. username)
                commands.exec("team modify " .. username ..' prefix {"text":"[","color":"white","extra":[' .. modifS .. " " .. matarS .. " " .. robarS .. '{"text":"] ","color":"white"}] }')
                commands.exec("team join " .. username .. " " .. username)

                content = fs.open("permit.json","r").readAll()
                json = textutils.unserialiseJSON(content)
                for index, value in ipairs(json) do
                    for name, val in ipairs(value) do
                        io.write(name)
                        if name == username then
                            table.remove(json,json[index])
                        end
                    end
                end
                --json[username] = "MC-" .. modif .. " M-" .. matar .. " R-" .. robar
                tabla = {[username] = {{text = username.. ": "},{text ="MC ", color = modif},{text ="M ", color = matar},{text ="R", color = robar}}}
                table.insert(json,tabla)
                json = textutils.serialiseJSON(json)
                file = fs.open("permit.json","w")
                file.write(json)
            end
            
        elseif command == "list" then
            content = fs.open("permit.json","r").readAll()
            json = textutils.unserialiseJSON(content)
            if json[1] ~= nil then
                for i, value in pairs(json) do
                    sleep(1)
                    for x, val in pairs(json[i]) do
                        sleep(1) 
                        a = textutils.serialiseJSON(val)
                        chat.sendFormattedMessageToPlayer(a,username, "Server")
                    end
                end
            end
            
        elseif command == "rest" then
            prest = {
                {text = "Reiniciando bot..." , color = "dark_purple"}
            }
            json = textutils.serialiseJSON(prest)
            chat.sendFormattedMessageToPlayer(json,username, "Server")
            os.reboot()
        else
            phelp = {
                {text = "Usa "},
                {text = "'permit help'" , color = "gold"},
                {text = " para ver los comandos disponibles"}
            }
            json = textutils.serialiseJSON(phelp)
            chat.sendFormattedMessageToPlayer(json,username, "Server")
        end
    end
end