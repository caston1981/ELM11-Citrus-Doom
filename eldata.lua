-- ELM11 Data Loader for Citrus Doom
-- Loads Doom data from flash files instead of Stormworks text boxes

M = {}  -- Global data table

function loadDoomData()
    print("Loading Doom data from flash...")

    -- Assuming data is stored in files like doom_data_1.txt, etc.
    -- In ELM11, use io library to read from flash

    local romCr = 1
    local loaded = false
    local stg = 1
    local curIndex, intH, count, curLength, curM, nm

    while not loaded do
        -- In ELM11, replace property.getText with file read
        -- Assuming files are named "doom_data_1.txt", "doom_data_2.txt", etc.
        local filename = "doom_data_" .. romCr .. ".txt"
        local file = io.open(filename, "r")
        if not file then
            print("File not found: " .. filename)
            loaded = true
            break
        end

        local rom = file:read("*all")
        file:close()

        if rom == "" then
            loaded = true
            break
        end

        local i = 1
        nm = ""
        local cr = string.sub(rom, i, i)
        while cr ~= "" do
            local pos = string.byte(cr)
            if pos > 64 then
                nm = (nm .. (pos - 65)) + 0
                if stg == 1 then
                    curIndex = nm
                    M[curIndex] = M[curIndex] or {}
                elseif stg == 2 then
                    intH = nm
                    curLength = 0
                elseif stg == 3 then
                    count = nm
                else
                    if curLength == 0 then
                        curLength = intH
                        count = count - 1
                        curM = {}
                        M[curIndex][#M[curIndex] + 1] = curM
                    end
                    curM[#curM + 1] = nm
                    curLength = curLength - 1
                    stg = math.max(curLength, count) > 0 and stg - 1 or 0
                end
                stg = stg + 1
                nm = ""
            else
                nm = nm .. cr
            end
            i = i + 1
            cr = string.sub(rom, i, i)
        end
        romCr = romCr + 1
    end

    print("Data loading complete.")
    return loaded
end

-- Load specific level data
function load_level(level_num)
    if not M or #M == 0 then
        loadDoomData()
    end

    -- Return level data (assuming M contains all levels)
    -- In the original, levels are offset by level_num
    local level_data = {}
    for i = 1, 10 do
        level_data[i] = M[i + 10 * (level_num - 1)]
    end

    -- Copy shared data
    for i = 11, #M do
        level_data[i] = M[i]
    end

    return level_data
end

-- Test function
function test_data_load()
    loadDoomData()
    print("M[1] size: " .. #M[1])
end