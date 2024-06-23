io.write("Input lenght of the base:")
base = io.read()

height = math.ceil(base/2)
turtle.up()
turtle.forward()
for i = 1, height do
    newBase = base / 2^(i-1)
    for x = 1, newBase do
        for z = 1, newBase do
            turtle.placeDown()
            if z < newBase then
                turtle.forward()
            end
        end
        if x % 2 == 1 and x < newBase then
            turtle.turnLeft()
            turtle.forward()
            turtle.turnLeft()
        elseif x % 2 == 0 and x < newBase then
            turtle.turnRight()
            turtle.forward()
            turtle.turnRight()
        end
    end
    if newBase % 2 == 0 then
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
        turtle.forward()
        turtle.turnRight()
    else
        turtle.turnRight()
        turtle.forward()
        turtle.turnRight()
        turtle.forward()
    end
    turtle.up()
end