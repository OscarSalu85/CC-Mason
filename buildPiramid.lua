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
            turtle.forward()
        end
        if x % 2 and x < newBase then
            turtle.turnLeft()
            turtle.forward()
            turtle.turnLeft()
        elseif x < newBase then
            turtle.turnRight()
            turtle.forward()
            turtle.turnRight()
        end
    end
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.up()
end