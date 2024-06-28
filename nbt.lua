reader = peripheral.wrap("bottom")

state = reader.getBlockData()
io.write(state.mana)
io.write(textutils.serialise(state))
