local files = fs.list("/rom/")
for i = 1, #files do
    print(files[i])
    content = http.get("https://raw.githubusercontent.com/OscarSalu85/CC-Mason/main/" .. files[i] .. ".lua").readAll()
    if content then
        f = fs.open(files[i], "w")
        f.write(content)
    end    
end
