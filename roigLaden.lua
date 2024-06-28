monitor = peripheral.wrap("left")

suc, data = turtle.inspectDown()
active = true
pointer = 1
while active do
    text = textutils.serialise(data):sub(pointer, pointer + 25)
    if text == nil then
        active = false
    else
        monitor.write(text)
        pointer = pointer + 25
    end
    
end