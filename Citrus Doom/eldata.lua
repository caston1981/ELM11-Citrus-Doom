-- ELM11 Citrus Doom Data Loader
-- Loads level data from Lua files instead of Stormworks text boxes

local M = {}

function load_level_data(level_name)
    -- Load the Lua data file
    local data_file = "/eldata/doom_data_" .. level_name .. ".lua"
    local chunk = loadfile(data_file)
    if not chunk then
        error("Could not load level data file: " .. data_file)
    end

    local data = chunk()

    -- Map data to M structure used by the engine
    M[1] = data.things or {}        -- Things
    M[2] = data.linedefs or {}      -- Linedefs
    M[3] = data.sectors or {}       -- Sectors
    M[4] = data.vertexes or {}      -- Vertexes
    M[5] = data.sub_sectors or {}   -- Sub-sectors
    M[6] = data.segments or {}      -- Segments
    M[7] = data.nodes or {}         -- Nodes

    -- Initialize other required M entries if not present
    M[8] = M[8] or {}  -- Thinkers
    M[9] = M[9] or {}  -- Specials
    M[10] = M[10] or {} -- Blockmap
    M[12] = M[12] or {{}} -- Sector specials
    M[13] = M[13] or {{}} -- Random table
    M[15] = M[15] or {} -- Thing types
    M[21] = true -- Mark as loaded

    return M
end

function get_data_table()
    return M
end

return {
    load_level_data = load_level_data,
    get_data_table = get_data_table
}