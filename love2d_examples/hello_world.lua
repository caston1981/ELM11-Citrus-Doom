-- Love2D Hello World Example (Adapted for ELM11)
-- Original: love.graphics.print("Hello World!", 400, 300)
-- Adapted for ELM11 screen API

-- Screen constants (ELM11 display is 288x160)
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160

-- Game state
message = "Hello World!"
x = SCREEN_WIDTH / 2 - 40
y = SCREEN_HEIGHT / 2 - 10

-- Main game functions
function onTick()
    -- No updates needed for this example
end

function onDraw()
    -- Clear screen (black background)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw text (equivalent to love.graphics.print)
    screen.setColor(255, 255, 255)
    screen.drawText(x, y, message)
end

-- Initialize
print("Love2D Hello World example loaded")
print("This demonstrates basic text rendering")