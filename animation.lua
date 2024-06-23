content = fs.open("saludoRoig.json","r").readAll()
json = textutils.unserialiseJSON(content)

head = json.animations.animation_template.bones.head
body = json.animations.animation_template.bones.body
rightarm = json.animations.animation_template.bones.rightarm
leftarm = json.animations.animation_template.bones.leftarm

for k ,v in pairs(head) do
    print(v[1][1])
end