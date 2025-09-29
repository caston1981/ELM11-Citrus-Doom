-- ELM11 Compatibility Shim for LÖVE
-- Provides ELM11 APIs on top of LÖVE

screen = {}
function screen.setColor(r, g, b)
    love.graphics.setColor(r/255, g/255, b/255)
end
function screen.drawText(x, y, text)
    love.graphics.print(text, x, y)
end
function screen.drawRectF(x, y, w, h)
    love.graphics.rectangle("fill", x, y, w, h)
end
function screen.clear()
    love.graphics.clear()
end

property = {}
function property.getBool(key)
    local loveKey = key:gsub("button%.", "")
    -- Map ELM11 key names to LÖVE key names
    local keyMap = {
        ["Up"] = "up",
        ["Down"] = "down", 
        ["Left"] = "left",
        ["Right"] = "right",
        ["Start"] = "return",  -- Map Start to Enter/Return
        ["A"] = "z",  -- Map A button to Z
        ["B"] = "x"   -- Map B button to X
    }
    loveKey = keyMap[loveKey] or loveKey:lower()
    return love.keyboard.isDown(loveKey)
end

local gameLoaded = false
function love.load()
    local gameFile = arg[2] or "doom.lua"  -- Default to doom.lua if no argument
    print("Attempting to load game file: " .. gameFile)
    -- Try to load the game file directly (should work if in same directory)
    local success, err = pcall(function() dofile(gameFile) end)
    if success then
        gameLoaded = true
        print("Game loaded successfully!")
        if onLoad then onLoad() end
    else
        print("Failed to load game:", err)
        print("Trying alternative path...")
        -- Try loading from the project root (go up one directory)
        success, err = pcall(function() dofile("../" .. gameFile) end)
        if success then
            gameLoaded = true
            print("Game loaded successfully from alternative path!")
            if onLoad then onLoad() end
        else
            print("Failed alternative load:", err)
        end
    end
end

function love.update(dt)
    if gameLoaded and onTick then
        onTick(dt)
    end
end

function love.draw()
    screen.clear()  -- Clear the screen each frame
    if gameLoaded and onDraw then
        onDraw()
    end
end