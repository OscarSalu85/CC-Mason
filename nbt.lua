reader = peripheral.wrap("bottom")

state = reader.getBlockData()
io.write(textutils.serialise(state))