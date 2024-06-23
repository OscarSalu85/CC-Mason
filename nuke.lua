args = {...}
for i =1 ,args[1] do
    turtle.forward()
    turtle.placeDown()
    redstone.setOutput("bottom", true)
    turtle.forward()
end