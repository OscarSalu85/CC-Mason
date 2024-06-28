monitor = peripheral.wrap("left")

suc, data = turtle.inspectDown()
active = true
pointer = 1
linea = 1
while active do
    text = textutils.serialise(data):sub(pointer, pointer + 25)
    if text == nil then
        active = false
    else
        monitor.setCursorPos(1, linea)
        monitor.write(text)
        linea = linea + 1
        pointer = pointer + 25
    end
    
end