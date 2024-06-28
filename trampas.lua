reader = peripheral.wrap("front")
writer = peripheral.find("nbtStorage")

state = reader.getBlockData()
io.write(state.mana)
state.mana = 5000
storage.writeTable(textutils.serialise(state))

state2 = reader.getBlockData()
io.write(textutils.serialise(state2))