content = http.get("https://api.github.com/repos/OscarSalu85/CC-Mason/git/trees/main?recursive=1").readAll()
if content then
    r = textutils.unserialiseJSON(content)
    for i = 1, #r.tree do
        name = r.tree[i].path
        name = string.sub(name, (#text - 4))
        print(name)
        url = "https://raw.githubusercontent.com/OscarSalu85/CC-Mason/main/" .. name .. ".lua"
        file = http.get(url).readAll()
        if file then
            f = fs.open(name,"w")
            f.write(file)
        end
    end
end
