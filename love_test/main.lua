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
        ["Shoot"] = "space",   -- Map Shoot to Spacebar
        ["A"] = "z",  -- Map A button to Z
        ["B"] = "x"   -- Map B button to X
    }
    loveKey = keyMap[loveKey] or loveKey:lower()
    return love.keyboard.isDown(loveKey)
end

-- Load the game
dofile("pacman.lua")

-- Set up Love2D window
function love.conf(t)
    t.window.width = 864  -- 3x scale
    t.window.height = 480  -- 3x scale
    t.window.title = "Space Invaders"
end

function love.load()
    -- Set a larger font for better visibility
    love.graphics.setFont(love.graphics.newFont(24))  -- 2x scale
end

function love.update(dt)
    if onTick then
        onTick(dt)
    end
end

function love.draw()
    -- Scale the graphics to make them more visible
    love.graphics.scale(3, 3)
    if onDraw then
        onDraw()
    end
end