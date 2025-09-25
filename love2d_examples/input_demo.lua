-- Love2D Input Demo Example (Adapted for ELM11)
-- Original: love.keyboard.isDown(key)
-- Adapted for ELM11 property.getBool()

-- Screen constants (ELM11 display is 288x160)
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160

-- Game state
inputState = {
    keys = {
        left = false,
        right = false,
        up = false,
        down = false,
        a = false,
        b = false,
        start = false,
        select = false
    },
    mouseX = 144,
    mouseY = 80,
    mousePressed = false,
    analogX = 0,
    analogY = 0
}

history = {}
maxHistory = 10

-- Main game functions
function onTick()
    -- Update input state (equivalent to love.keyboard.isDown)
    inputState.keys.left = property.getBool("button_left")
    inputState.keys.right = property.getBool("button_right")
    inputState.keys.up = property.getBool("button_up")
    inputState.keys.down = property.getBool("button_down")
    inputState.keys.a = property.getBool("button_a")
    inputState.keys.b = property.getBool("button_b")
    inputState.keys.start = property.getBool("button_start")
    inputState.keys.select = property.getBool("button_select")

    -- Simulate mouse position (center of screen for demo)
    inputState.mouseX = 144
    inputState.mouseY = 80
    inputState.mousePressed = inputState.keys.a  -- Use A button as mouse click

    -- Get analog input (if available)
    inputState.analogX = property.getNumber("analog_x") or 0
    inputState.analogY = property.getNumber("analog_y") or 0

    -- Record input history
    local currentInput = ""
    if inputState.keys.left then currentInput = currentInput .. "←" end
    if inputState.keys.right then currentInput = currentInput .. "→" end
    if inputState.keys.up then currentInput = currentInput .. "↑" end
    if inputState.keys.down then currentInput = currentInput .. "↓" end
    if inputState.keys.a then currentInput = currentInput .. "A" end
    if inputState.keys.b then currentInput = currentInput .. "B" end
    if inputState.keys.start then currentInput = currentInput .. "START" end
    if inputState.keys.select then currentInput = currentInput .. "SELECT" end

    if currentInput ~= "" then
        table.insert(history, 1, currentInput)
        if #history > maxHistory then
            table.remove(history)
        end
    end
end

function onDraw()
    -- Clear screen (black background)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw title
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Love2D Input Demo")
    screen.drawText(10, 25, "Press buttons to see input detection")

    -- Draw current input state
    screen.setColor(255, 255, 0)
    screen.drawText(10, 50, "Current Keys:")
    local y = 65
    for key, pressed in pairs(inputState.keys) do
        if pressed then
            screen.setColor(0, 255, 0)
            screen.drawText(20, y, key .. " pressed")
            y = y + 15
        end
    end

    -- Draw analog input
    screen.setColor(255, 255, 255)
    screen.drawText(10, 120, string.format("Analog: X=%.2f Y=%.2f",
                                          inputState.analogX, inputState.analogY))

    -- Draw mouse simulation
    screen.setColor(255, 0, 255)
    screen.drawText(10, 135, string.format("Mouse: (%d,%d) %s",
                                          inputState.mouseX, inputState.mouseY,
                                          inputState.mousePressed and "pressed" or "released"))

    -- Draw input history
    screen.setColor(128, 128, 128)
    screen.drawText(160, 50, "Recent Input:")
    for i, input in ipairs(history) do
        screen.drawText(170, 50 + i * 15, input)
    end

    -- Draw visual feedback for pressed buttons
    if inputState.keys.left then
        screen.setColor(255, 0, 0)
        screen.drawRectF(50, 100, 20, 20)
    end
    if inputState.keys.right then
        screen.setColor(0, 255, 0)
        screen.drawRectF(80, 100, 20, 20)
    end
    if inputState.keys.up then
        screen.setColor(0, 0, 255)
        screen.drawRectF(65, 75, 20, 20)
    end
    if inputState.keys.down then
        screen.setColor(255, 255, 0)
        screen.drawRectF(65, 125, 20, 20)
    end
end

-- Initialize
print("Love2D Input Demo loaded")
print("Press buttons to test input detection")