mineroChest = peripheral.wrap("left")
piedraChest = peripheral.wrap("right")
turtleName = modem.getNameLocal()


function checkChest(c)
    count = 0
    for i = 1, 9 do
        item = c.getItemDetail(i)
        if item then
            count = count + item.count
        end
    end
    if count < 576 then
        return true
    end
    return false
end

function putStone(side)
    for i = 1, 9 do
        item = piedraChest.getItemDetail(i)
        if item and item.name == "minecraft:stone" then
            turtle.select(9)
            piedraChest.pullItems(turtleName,i,1,1)
            if side == "f" then
                turtle.place()
            elseif side == "u" then
                turtle.placeUp()
            elseif side == "d" then
                turtle.placeDown()
            end
            return
        end
    end
end

while true do
    if checkChest(mineroChest) then
        side = "f"
        if turtle.detect() then
            
        else
            io.write("Putting stone at front\n")
            putStone(side)
        end

        side = "u"
        if turtle.detectUp() then
            
        else
            io.write("Putting stone at front\n")
            putStone(side)
        end

        side = "d"
        if turtle.detectDown() then
            
        else
            io.write("Putting stone at front\n")
            putStone(side)
        end

    end
end