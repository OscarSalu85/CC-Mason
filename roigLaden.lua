while true do
    suc, data = turtle.inspectDown()
    io.write(data.name .. "\n")
    io.write(data.state .. "\n")
end