reader = peripheral.wrap("bottom")

state = reader.getBlockStates()
io.write(textutils.serialise(state))