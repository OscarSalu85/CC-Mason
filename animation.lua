content = f.open("saludoRoig.json","r").readAll()
json = textutils.unserialiseJSON(content)

head = json.animations.animations_template.bones.head
body = json.animations.animations_template.bones.body
rightarm = json.animations.animations_template.bones.rightarm
leftarm = json.animations.animations_template.bones.leftarm

print(head.rotation[1][1])