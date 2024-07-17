reader = peripheral.wrap("bottom")
redstone.setOutput("front",true)
while true do
    state = reader.getBlockData()
    mana = textutils.serialise(state.mana)
    if mana == 0 then
        sleep(1)
        turtle.place()
    end
end