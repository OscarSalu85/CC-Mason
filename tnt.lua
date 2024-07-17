pchest = peripheral.wrap("front")
achest= peripheral.wrap("right")

while true do
    turtle.select(1)
    turtle.suck(1)

    turtle.select(2)
    turtle.suckUp(1)

    turtle.select(3)
    turtle.suck(1)

    turtle.select(5)
    turtle.suckUp(1)

    turtle.select(6)
    turtle.suck(1)

    turtle.select(7)
    turtle.suckUp(1)

    turtle.select(9)
    turtle.suck(1)

    turtle.select(10)
    turtle.suckUp(1)

    turtle.select(11)
    turtle.suck(1)

    turtle.select(16)
    turtle.craft()
end