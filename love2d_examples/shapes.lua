-- Love2D Shapes Example (Adapted for ELM11)
-- Original: love.graphics.rectangle("fill", x, y, width, height)
-- Adapted for ELM11 screen API

-- Screen constants (ELM11 display is 288x160)
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160

-- Game state
shapes = {
    {type = "rectangle", x = 50, y = 50, width = 100, height = 50, color = {255, 0, 0}},
    {type = "rectangle", x = 200, y = 50, width = 80, height = 80, color = {0, 255, 0}},
    {type = "rectangle", x = 100, y = 120, width = 60, height = 40, color = {0, 0, 255}},
    {type = "circle", x = 250, y = 150, radius = 30, color = {255, 255, 0}},
    {type = "triangle", x1 = 50, y1 = 200, x2 = 100, y2 = 180, x3 = 75, y3 = 220, color = {255, 0, 255}}
}

-- Main game functions
function onTick()
    -- Animate shapes (simple movement)
    for i, shape in ipairs(shapes) do
        if shape.type == "rectangle" then
            shape.x = shape.x + math.sin(i + os.time() * 0.01) * 0.5
            shape.y = shape.y + math.cos(i + os.time() * 0.01) * 0.5
        end
    end
end

function onDraw()
    -- Clear screen (black background)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw shapes (equivalent to love.graphics.rectangle, love.graphics.circle, etc.)
    for _, shape in ipairs(shapes) do
        screen.setColor(shape.color[1], shape.color[2], shape.color[3])

        if shape.type == "rectangle" then
            screen.drawRectF(shape.x, shape.y, shape.width, shape.height)
        elseif shape.type == "circle" then
            -- Approximate circle with rectangle (ELM11 doesn't have drawCircle)
            screen.drawRectF(shape.x - shape.radius, shape.y - shape.radius,
                           shape.radius * 2, shape.radius * 2)
        elseif shape.type == "triangle" then
            -- ELM11 doesn't have drawTriangle, so approximate with lines or skip
            -- For now, just draw a small rectangle as placeholder
            screen.drawRectF(shape.x1, shape.y1, 10, 10)
        end
    end

    -- Draw instructions
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Love2D Shapes Demo")
    screen.drawText(10, 25, "Rectangles, circles, triangles")
end

-- Initialize
print("Love2D Shapes example loaded")
print("Demonstrates drawing primitives")