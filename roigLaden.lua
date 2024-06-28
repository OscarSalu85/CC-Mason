while true do
    suc, data = turtle.inspectDown()
    io.write(textutils.serialise(data) .. "\n")
end