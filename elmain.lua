-- ELM11 Citrus Doom Main Script
-- Integrates math, data, render, input/sound

-- Load libraries
dofile("elmath.lua")
dofile("eldata.lua")
dofile("elrender.lua")
dofile("elinput.lua")

-- Initialize
initInputSound()
initLCD()

-- Load data (assuming files exist)
loadDoomData()

-- Main loop (simplified)
function mainLoop()
    while true do
        -- Handle input
        if getButtonUp() then
            print("Moving up")
        end
        if getButtonShoot() then
            playSound(800, 200)  -- Shoot sound
        end

        -- Render something simple
        setColor(255, 255, 255)  -- White
        drawRectF(10, 10, 50, 50)

        -- Delay (simulate tick)
        -- In real ELM11, use timers
    end
end

-- Test integration
function test_integration()
    print("Testing integration...")
    test_math()
    test_data_load()
    test_render()
    test_input()
    test_sound()
    print("Integration test complete")
end

-- Run test
test_integration()