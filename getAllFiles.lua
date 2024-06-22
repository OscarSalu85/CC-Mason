content = http.get("https://api.github.com/repos/OscarSalu85/CC-Mason/git/trees/main?recursive=1").readAll()
if content then
    r = textutils.unserialiseJSON(content)
    for i = 1, #r.tree do
        name = r.tree[i].path
        print(name)
        url = "https://raw.githubusercontent.com/OscarSalu85/CC-Mason/main/" .. name .. ".lua"
        file = http.get(url)
        if file then
            f = fs.open(name,"w")
            f.write(file.readAll())
        end
    end
end
