-- Assuming 'content' contains the parsed animation data
local parsed = { ... } -- Replace with actual parsed data
-- Create a table to hold the baked animations
local animations = {}

-- Loop through each animation entry in parsed data
for name, data in pairs(parsed.animations) do
    local baked = {} -- Create a table to hold the baked animation data for this entry

    -- Loop through each bone in the animation data
    for part, rots in pairs(data.bones) do
        baked[part] = {} -- Create a table to hold the baked bone rotation data

        -- Check if the rotation data is a single set of rotations or a series
        if type(rots.rotation[1]) == "number" then
            baked[part][1] = rots.rotation -- If single, add it as-is
        else
            local indexes = {}

            -- Collect and sort the frame indexes
            for index, rot in pairs(rots.rotation) do
                table.insert(indexes, index)
            end
            table.sort(indexes, function(a, b) return tonumber(a) < tonumber(b) end)

            -- Reorganize the rotation data using the sorted indexes
            for new_index, real_index in ipairs(indexes) do
                baked[part][new_index] = rots.rotation[real_index]
            end
        end
    end

    -- Add the baked animation data to the animations table
    animations[name] = baked
end

-- At this point, the 'animations' table contains the transformed animation data