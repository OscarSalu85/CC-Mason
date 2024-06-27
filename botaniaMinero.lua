mineroChest = peripheral.wrap("left")
piedraChest = peripheral.wrap("right")

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
            turtle.turnRight()
            turtle.suck(1)
            turtle.turnLeft()
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
    turtle.select(1)
    if checkChest(mineroChest) then
        side = "f"
        if turtle.detect() then
            bool, data = turtle.inspect()
                if data.name ~= "minecraft:stone" then
                    turtle.dig()
                    turtle.turnLeft()
                    turtle.drop()
                    turtle.turnRight()

                end

        else
            putStone(side)
        end

        side = "u"
        if turtle.detectUp() then
            bool, data = turtle.inspectUp()
                if data.name ~= "minecraft:stone" then
                    turtle.digUp()
                    turtle.turnLeft()
                    turtle.drop()
                    turtle.turnRight()

                end           
        else
            putStone(side)
        end

        side = "d"
        if turtle.detectDown() then
            bool, data = turtle.inspectDown()
                if data.name ~= "minecraft:stone" then
                    turtle.digDown()
                    turtle.turnLeft()
                    turtle.drop()
                    turtle.turnRight()

                end
        else
            putStone(side)
        end

    end
end