-- ELM11 Render Library - Love2D Compatible Version

local M = {}

-- Set color (RGB values 0-255)
function M.setColor(r, g, b)
    screen.setColor(r, g, b)
end

-- Draw filled rectangle
function M.drawRectF(x, y, w, h)
    screen.drawRectF(x, y, w, h)
end

-- Draw text
function M.drawText(x, y, text)
    screen.drawText(x, y, text)
end

-- Clear screen
function M.clear()
    screen.clear()
end

-- Initialize LCD (no-op in Love2D)
function M.initLCD()
    -- Nothing to do in Love2D
end

-- Update things (placeholder for 3D rendering)
function M.update_things(M1, M8, pTng, out)
    -- This would render 3D objects in the real engine
    -- For Love2D demo, we'll just show some debug info
end

return M
