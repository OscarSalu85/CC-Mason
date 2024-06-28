monitor = peripheral.wrap("left")

suc, data = turtle.inspectDown()
monitor.write(textutils.serialise(data))
