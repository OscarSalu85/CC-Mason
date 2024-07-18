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
    if count < (576 - a) then
        return true
    end
    return false
end

while true do
    if checkChest(rchest) then
        turtle.select(1)
        if turtle.getItemDetail().count == nil then
            turtle.suck(a)
        elseif turtle.getItemDetail().count < 32 then
            turtle.suck(a)
        end

        turtle.select(2)
        if turtle.getItemDetail().count == nil then
            turtle.suckUp(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suckUp(a)
        end

        turtle.select(3)
        if turtle.getItemDetail().count == nil then
            turtle.suck(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suck(a)
        end

        turtle.select(5)
        if turtle.getItemDetail().count == nil then
            turtle.suckUp(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suckUp(a)
        end

        turtle.select(6)
        if turtle.getItemDetail().count == nil then
            turtle.suck(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suck(a)
        end

        turtle.select(7)
        if turtle.getItemDetail().count == nil then
            turtle.suckUp(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suckUp(a)
        end

        turtle.select(9)
        if turtle.getItemDetail().count == nil then
            turtle.suck(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suck(a)
        end

        turtle.select(10)
        if turtle.getItemDetail().count == nil then
            turtle.suckUp(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suckUp(a)
        end

        turtle.select(11)
        if turtle.getItemDetail().count == nil then
            turtle.suck(a)
        elseif turtle.getItemDetail().count < 32  then
            turtle.suck(a)
        end

        turtle.select(16)
        turtle.craft(a)
        turtle.dropDown(a)
    end
end 

