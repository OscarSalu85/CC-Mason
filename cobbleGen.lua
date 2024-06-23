chest = peripheral.wrap("top")

function checkChest(c)
    count = 0
    for i = 1, 9 do
        item = c.getItemDetail(i)
        count = count + item.count
    end
    if count < 576 then
        return true
    end
    return false
end

while true do
    if turtle.detectDown and checkChest(chest) then
        turtle.digDown()
        turtle.dropUp()
    end
end