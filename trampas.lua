reader = peripheral.wrap("front")
writer = peripheral.find("nbtStorage")

state = reader.getBlockData()
io.write(state.mana)
state.mana = 5000
json = textutils.serialiseJSON(state)
writer.writeJson(json)
