-- LovePlatform - Platformer Prototype for ELM11
-- Adapted from Love2D-Simple-Games repository
-- Original: https://github.com/danielnaoexiste/Love2D-Simple-Games/tree/main/LovePlatform

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
PLAYER_WIDTH = 16
PLAYER_HEIGHT = 24
PLAYER_SPEED = 80
GRAVITY = 300
JUMP_FORCE = -180
GROUND_Y = SCREEN_HEIGHT - 20

-- Game state
gameState = "play"

-- Player object
player = {
    x = 50,
    y = GROUND_Y - PLAYER_HEIGHT,
    width = PLAYER_WIDTH,
    height = PLAYER_HEIGHT,
    velocityX = 0,
    velocityY = 0,
    onGround = true
}

-- Platforms (simple rectangles)
platforms = {
    {x = 0, y = GROUND_Y, width = SCREEN_WIDTH, height = 20},  -- Ground
    {x = 100, y = 120, width = 80, height = 10},  -- Platform 1
    {x = 200, y = 90, width = 60, height = 10},   -- Platform 2
    {x = 50, y = 60, width = 70, height = 10},    -- Platform 3
}

-- Game functions
function checkCollision(rect1, rect2)
    return rect1.x < rect2.x + rect2.width and
           rect1.x + rect1.width > rect2.x and
           rect1.y < rect2.y + rect2.height and
           rect1.y + rect1.height > rect2.y
end

function resolveCollision(player, platform)
    -- Simple collision resolution
    local playerBottom = player.y + player.height
    local platformTop = platform.y
    local playerTop = player.y
    local platformBottom = platform.y + platform.height
    local playerRight = player.x + player.width
    local platformLeft = platform.x
    local playerLeft = player.x
    local platformRight = platform.x + platform.width

    -- Check if player is falling onto platform
    if player.velocityY > 0 and playerBottom > platformTop and playerTop < platformTop then
        player.y = platformTop - player.height
        player.velocityY = 0
        player.onGround = true
        return true
    end

    -- Check if player hits platform from below
    if player.velocityY < 0 and playerTop < platformBottom and playerBottom > platformBottom then
        player.y = platformBottom
        player.velocityY = 0
        return true
    end

    -- Check side collisions
    if player.velocityX > 0 and playerRight > platformLeft and playerLeft < platformLeft then
        player.x = platformLeft - player.width
        player.velocityX = 0
        return true
    end

    if player.velocityX < 0 and playerLeft < platformRight and playerRight > platformRight then
        player.x = platformRight
        player.velocityX = 0
        return true
    end

    return false
end

function updatePlayer(dt)
    -- Handle input
    player.velocityX = 0

    if property.getBool("button_left") then
        player.velocityX = -PLAYER_SPEED
    end
    if property.getBool("button_right") then
        player.velocityX = PLAYER_SPEED
    end

    -- Jump
    if property.getBool("button_a") and player.onGround then
        player.velocityY = JUMP_FORCE
        player.onGround = false
    end

    -- Apply gravity
    if not player.onGround then
        player.velocityY = player.velocityY + GRAVITY * dt
    end

    -- Update position
    player.x = player.x + player.velocityX * dt
    player.y = player.y + player.velocityY * dt

    -- Reset onGround flag
    player.onGround = false

    -- Check collisions with platforms
    for _, platform in ipairs(platforms) do
        if checkCollision(player, platform) then
            resolveCollision(player, platform)
        end
    end

    -- Keep player in bounds
    if player.x < 0 then
        player.x = 0
    elseif player.x + player.width > SCREEN_WIDTH then
        player.x = SCREEN_WIDTH - player.width
    end

    -- Check if player fell off screen
    if player.y > SCREEN_HEIGHT then
        -- Reset player position
        player.x = 50
        player.y = GROUND_Y - PLAYER_HEIGHT
        player.velocityX = 0
        player.velocityY = 0
        player.onGround = true
    end
end

-- Main game functions
function onTick()
    local dt = 1/60  -- Assume 60 FPS

    updatePlayer(dt)
end

function onDraw()
    -- Clear screen (sky blue background)
    screen.setColor(100, 150, 255)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw platforms
    screen.setColor(100, 100, 100)
    for _, platform in ipairs(platforms) do
        screen.drawRectF(platform.x, platform.y, platform.width, platform.height)
    end

    -- Draw player
    screen.setColor(255, 100, 100)
    screen.drawRectF(player.x, player.y, player.width, player.height)

    -- Draw instructions
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "LovePlatform")
    screen.drawText(10, 25, "LEFT/RIGHT: Move")
    screen.drawText(10, 40, "A: Jump")

    -- Draw player state
    screen.setColor(200, 200, 200)
    screen.drawText(10, SCREEN_HEIGHT - 25, string.format("X: %.0f", player.x))
    screen.drawText(10, SCREEN_HEIGHT - 15, string.format("Y: %.0f", player.y))
    screen.drawText(10, SCREEN_HEIGHT - 5, player.onGround and "On Ground" or "Jumping")
end

-- Initialize game
print("LovePlatform loaded - Platformer prototype for ELM11")
print("Use LEFT/RIGHT to move, A to jump!")