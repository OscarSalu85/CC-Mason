pchest = peripheral.wrap("front")
achest= peripheral.wrap("right")
rchest= peripheral.wrap("bottom")

a = 5

function checkChest(c)
    count = 0
    for i = 1, 9 do
        item = c.getItemDetail(i)
        if item then
            count = count + item.count
        end
    end
    if count < 567 then
        return true
    end
    return false
end

while true do
    if checkChest(rchest) then
        turtle.select(1)
        turtle.suck(a)

        turtle.select(2)
        turtle.suckUp(a)

        turtle.select(3)
        turtle.suck(a)

        turtle.select(5)
        turtle.suckUp(a)

        turtle.select(6)
        turtle.suck(a)

        turtle.select(7)
        turtle.suckUp(a)

        turtle.select(9)
        turtle.suck(a)

        turtle.select(10)
        turtle.suckUp(a)

        turtle.select(11)
        turtle.suck(a)

        turtle.select(16)
        turtle.craft(a)
        turtle.dropDown(a)
    end
end