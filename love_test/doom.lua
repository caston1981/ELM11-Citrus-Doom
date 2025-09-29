-- Citrus Doom 3D Engine for Love2D
-- Loads the actual ELM11 Citrus Doom 3D engine

-- Load the Citrus Doom engine
local engine = dofile("../elengine.lua")

-- Game state
local game_started = false

function onTick(dt)
    if not game_started then return end

    -- Call the Citrus Doom engine tick
    if engine.onTick then
        engine.onTick()
    end
end

function onDraw()
    -- Clear screen
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    if not game_started then
        -- Draw title screen
        screen.setColor(255, 165, 0)  -- Orange color
        screen.drawText(SCREEN_WIDTH/2 - 60, SCREEN_HEIGHT/2 - 20, "CITRUS DOOM 3D")
        screen.setColor(255, 255, 255)
        screen.drawText(SCREEN_WIDTH/2 - 70, SCREEN_HEIGHT/2, "Press START to begin")
        screen.drawText(SCREEN_WIDTH/2 - 80, SCREEN_HEIGHT/2 + 20, "3D Engine Loading...")
        return
    end

    -- The engine handles its own rendering through elrender
    -- For now, show that the 3D engine is running
    screen.setColor(0, 255, 0)
    screen.drawText(10, 10, "Citrus Doom 3D Engine")
    screen.drawText(10, 30, "3D Rendering Active")

    -- Try to get player info from engine
    if engine.get_player then
        local player = engine.get_player()
        if player then
            screen.drawText(10, 50, "Player Health: " .. (player[7] or "N/A"))
        end
    end
end

-- Initialize
if engine.init then
    engine.init()
end

-- Constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160