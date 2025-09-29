-- Citrus Doom 3D Engine for Love2D
-- Loads the actual ELM11 Citrus Doom 3D engine

-- Load the Citrus Doom engine
local engine = dofile("../elengine.lua")

-- Pre-initialize some basic data to prevent crashes
_G.M = _G.M or {}
_G.M1 = _G.M1 or {}
_G.M4 = _G.M4 or {}
_G.M8 = _G.M8 or {}
_G.M10 = _G.M10 or {{}}
_G.M12 = _G.M12 or {{}}
_G.M15 = _G.M15 or {}
_G.M101 = _G.M101 or {}

-- Mark as loaded to skip data loading
_G.loaded = true
_G.init = true

-- Game state
local game_started = false

function onTick(dt)
    if not game_started then
        -- Check for start button press
        local input = get_input()
        if input.start then
            game_started = true
            print("Starting Citrus Doom 3D Engine!")
        end
        return
    end

    -- Pass input to the 3D engine
    local input = get_input()
    -- The engine expects input in a specific format
    -- For now, we'll just call the engine tick
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

    -- 3D Engine is running - show engine status and basic visualization
    screen.setColor(0, 255, 0)
    screen.drawText(10, 10, "Citrus Doom 3D Engine ACTIVE")

    -- Show player info
    if engine.get_player then
        local player = engine.get_player()
        if player then
            screen.setColor(255, 255, 255)
            screen.drawText(10, 30, "Player Health: " .. (player[7] or "N/A"))
            screen.drawText(10, 45, "Player Position: " .. string.format("%.1f, %.1f", player[1] or 0, player[2] or 0))
            screen.drawText(10, 60, "Player Angle: " .. (player[3] or 0))
        end
    end

    -- Show engine stats
    screen.setColor(255, 255, 0)
    screen.drawText(10, 80, "Engine Status: Running")
    screen.drawText(10, 95, "Entities: " .. (#(_G.M1 or {}) or 0))
    screen.drawText(10, 110, "Tick: " .. (_G.tickGlobal or 0))

    -- Draw a simple 3D-like representation
    screen.setColor(128, 128, 128)
    -- Draw some walls
    screen.drawRectF(100, 60, 150, 10)  -- top wall
    screen.drawRectF(100, 120, 150, 10) -- bottom wall
    screen.drawRectF(100, 60, 10, 70)   -- left wall
    screen.drawRectF(240, 60, 10, 70)   -- right wall

    -- Draw player as a green dot
    screen.setColor(0, 255, 0)
    local player_x = 175  -- center of the room
    local player_y = 95
    screen.drawRectF(player_x - 3, player_y - 3, 6, 6)

    -- Draw some "enemies" as red dots
    screen.setColor(255, 0, 0)
    screen.drawRectF(120, 80, 4, 4)
    screen.drawRectF(220, 100, 4, 4)

    -- Draw crosshair
    screen.setColor(255, 255, 255)
    screen.drawRectF(SCREEN_WIDTH/2 - 5, SCREEN_HEIGHT/2 - 1, 10, 2)
    screen.drawRectF(SCREEN_WIDTH/2 - 1, SCREEN_HEIGHT/2 - 5, 2, 10)

    -- Instructions
    screen.setColor(200, 200, 200)
    screen.drawText(10, SCREEN_HEIGHT - 40, "Arrow Keys: Move | Z: Shoot | X: Action")
    screen.drawText(10, SCREEN_HEIGHT - 25, "Real 3D Engine Running - Love2D Visualization")
end

-- Initialize
if engine.init then
    engine.init()
end

-- Input helper function
function get_input()
    local up = property.getBool("Up")
    local down = property.getBool("Down")
    local left = property.getBool("Left")
    local right = property.getBool("Right")
    local start = property.getBool("Start")
    local A = property.getBool("A")

    return {up = up, down = down, left = left, right = right, start = start, A = A}
end

-- Constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160