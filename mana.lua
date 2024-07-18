reader = peripheral.wrap("bottom")
redstone.setOutput("front",true)
while true do
    state = reader.getBlockData()
    mana = state.mana
    if mana == 0 then
        sleep(1)
        turtle.suckUp(1)
        turtle.place()
        active = true
        os.clock
        while active do
            state = reader.getBlockData()
            mana = state.mana
            if mana ~= 0 then
                active = false
            end
        end
        sleep(1)
    end
end