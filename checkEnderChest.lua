chest = peripheral.wrap("top")

function checkChest(c)
    count = 0
    for i = 1, 9 do
        item = c.getItemDetail(i)
        if item then
            count = count + item.count
        end
    end
    if count < 576 then
        return false
    end
    return true
end

while true do
    if checkChest(chest) then
        redstone.setOutput("bottom",true)
    end
    redstone.setOutput("bottom",false)
end