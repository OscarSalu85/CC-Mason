Animatronic = peripheral.wrap("top")

content = fs.open("saludoRoig.json","r").readAll()
json = textutils.unserialiseJSON(content)

head = json.animations.animation_template.bones.head.rotation
body = json.animations.animation_template.bones.body.rotation
rightarm = json.animations.animation_template.bones.rightarm.rotation
leftarm = json.animations.animation_template.bones.leftarm.rotation

while true do
    for i=1, #head do
        Animatronic.setBodyRot(body[i][1],body[i][2],body[i][3])
        Animatronic.setHeadRot(head[i][1],head[i][2],head[i][3])
        Animatronic.setLeftArmRot(leftarm[i][1],leftarm[i][2],leftarm[i][3])
        Animatronic.setRightArmRot(rightarm[i][1],rightarm[i][2],rightarm[i][3])
        Animatronic.push()
        sleep(0.5)
    end
    sleep(5)
    Animatronic.setBodyRot(0,0,0)
    Animatronic.setHeadRot(0,0,0)
    Animatronic.setLeftArmRot(0,0,0)
    Animatronic.setRightArmRot(0,0,0)
    Animatronic.push()
end
