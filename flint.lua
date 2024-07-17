chest = peripheral.wrap("front")

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

while true do
    if checkChest(chest) then
        turtle.drop()
    else
        turtle.dropDown()
    end
end