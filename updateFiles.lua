-- Updates all files with github repository
local files = fs.list("")
for i = 1, #files do
    if files[i] ~= "rom" then
        print(files[i])
        if files[i] ~= "startup.lua" then
            content = http.get("https://raw.githubusercontent.com/OscarSalu85/CC-Mason/main/" .. files[i] .. ".lua")
            if content then
                content = content.readAll()
                f = fs.open(files[i], "w")
                f.write(content)
            end
        end
    end    
end
