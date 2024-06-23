content = f.open("saludoRoig.json","r").readAll()
json = textutils.unserialiseJSON(content)

head = json.animations.animations.template.bones.head
body = json.animations.animations.template.bones.body
rightarm = json.animations.animations.template.bones.rightarm
leftarm = json.animations.animations.template.bones.leftarm

print(head.rotation[1][1])