-- GPIO Button Test Script for ELM11
-- Test basic GPIO button functionality before controller arrives

-- Load input library
dofile("elinput.lua")

-- Set input mode to GPIO
inputMode = "gpio"

print("=== ELM11 GPIO Button Test ===")
print("Connect buttons to GPIO pins:")
print("Pin 1: UP button")
print("Pin 2: DOWN button")
print("Pin 3: LEFT button")
print("Pin 4: RIGHT button")
print("Pin 5: SHOOT button")
print("")

-- Initialize GPIO input
initInputSound(false)  -- false = don't use nunchuk

print("GPIO input initialized. Testing buttons...")
print("Press buttons to see their state. Press Ctrl+C to exit.")
print("")

-- Main test loop
while true do
    -- Test individual buttons
    local up = getButtonUp()
    local down = getButtonDown()
    local left = getButtonLeft()
    local right = getButtonRight()
    local shoot = getButtonShoot()

    -- Clear screen and show current state
    print("\027[2J\027[H")  -- Clear screen and move cursor to top
    print("=== GPIO Button States ===")
    print("UP:     " .. (up and "PRESSED" or "------"))
    print("DOWN:   " .. (down and "PRESSED" or "------"))
    print("LEFT:   " .. (left and "PRESSED" or "------"))
    print("RIGHT:  " .. (right and "PRESSED" or "------"))
    print("SHOOT:  " .. (shoot and "PRESSED" or "------"))
    print("")

    -- Test get_input function
    local moveX, moveY, look, shoot_flag, interact = get_input()
    print("=== Doom Input Values ===")
    print("moveX:  " .. moveX)
    print("moveY:  " .. moveY)
    print("look:   " .. look)
    print("shoot:  " .. (shoot_flag and "true" or "false"))
    print("interact: " .. (interact and "true" or "false"))
    print("")

    -- Test button numbers (for weapon switching)
    print("=== Button Numbers (Weapon Switching) ===")
    for i = 1, 5 do
        local pressed = get_button(i)
        print("Button " .. i .. ": " .. (pressed and "PRESSED" or "------"))
    end

    -- Small delay to avoid flooding output
    -- In real ELM11, use proper timing functions
    for i = 1, 100000 do end  -- Simple delay loop
end