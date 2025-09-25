-- Love2D Animation Example (Adapted for ELM11)
-- Original: love.graphics.draw(image, x, y, r, sx, sy, ox, oy)
-- Adapted for ELM11 screen API (using rectangles as sprites)

-- Love2D Animation Example (Adapted for ELM11)
-- Original: love.update(dt), love.draw() with time-based updates
-- Adapted for ELM11 onTick() and onDraw()

-- Screen constants (ELM11 display is 288x160)
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160

-- Game state
player = {
    x = 144,  -- Center of screen (288/2)
    y = 80,   -- Center of screen (160/2)
    size = 20,
    color = {255, 255, 0},
    rotation = 0,
    scale = 1.0
}

enemies = {}
for i = 1, 5 do
    table.insert(enemies, {
        x = math.random(20, 268),
        y = math.random(20, 140),
        size = 15,
        color = {255, 0, 0},
        rotation = 0,
        scale = 0.8
    })
end

time = 0

-- Main game functions
function onTick()
    time = time + 1

    -- Animate player (bounce effect)
    player.y = 80 + math.sin(time * 0.1) * 20
    player.rotation = player.rotation + 0.05
    player.scale = 1.0 + math.sin(time * 0.15) * 0.2

    -- Animate enemies (orbit around player)
    for i, enemy in ipairs(enemies) do
        local angle = time * 0.02 + i * 1.2566  -- 2π/5 for even spacing
        local distance = 60 + math.sin(time * 0.05 + i) * 20
        enemy.x = player.x + math.cos(angle) * distance
        enemy.y = player.y + math.sin(angle) * distance
        enemy.rotation = enemy.rotation + 0.03
        enemy.scale = 0.8 + math.sin(time * 0.08 + i) * 0.3
    end

    -- Handle input (equivalent to love.keyboard)
    if property.getBool("button_left") then
        player.x = player.x - 2
    end
    if property.getBool("button_right") then
        player.x = player.x + 2
    end
    if property.getBool("button_up") then
        player.y = player.y - 2
    end
    if property.getBool("button_down") then
        player.y = player.y + 2
    end

    -- Keep player on screen
    player.x = math.max(10, math.min(278, player.x))
    player.y = math.max(10, math.min(150, player.y))
end

function onDraw()
    -- Clear screen (dark blue background)
    screen.setColor(20, 20, 60)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw enemies first (behind player)
    for _, enemy in ipairs(enemies) do
        screen.setColor(enemy.color[1], enemy.color[2], enemy.color[3])
        -- Draw rotated/scaled rectangle (approximating love.graphics.draw)
        local halfSize = enemy.size * enemy.scale / 2
        screen.drawRectF(enemy.x - halfSize, enemy.y - halfSize,
                        enemy.size * enemy.scale, enemy.size * enemy.scale)
    end

    -- Draw player (equivalent to love.graphics.draw with rotation/scale)
    screen.setColor(player.color[1], player.color[2], player.color[3])
    local halfSize = player.size * player.scale / 2
    screen.drawRectF(player.x - halfSize, player.y - halfSize,
                    player.size * player.scale, player.size * player.scale)

    -- Draw UI
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Love2D Animation Demo")
    screen.drawText(10, 25, "Use arrow keys to move")
    screen.drawText(10, 40, "Watch the orbiting enemies!")
end

-- Initialize
print("Love2D Animation example loaded")
print("Demonstrates sprite animation and input")