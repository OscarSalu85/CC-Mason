reader = peripheral.wrap("front")
writer = peripheral.find("nbtStorage")

state = reader.getBlockData()
state.mana = 5000
io.write(textutils.serialise(state))
json = textutils.serialiseJSON(state)
writer.writeJson(json)
