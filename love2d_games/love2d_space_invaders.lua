-- Love2D Space Invaders - Space Invaders Game for ELM11
-- Adapted from existing Space Invaders implementation to follow Love2D patterns
-- Original: Classic Space Invaders gameplay adapted for ELM11

-- Game constants (Love2D style)
local WINDOW_WIDTH = 288
local WINDOW_HEIGHT = 160
local PLAYER_WIDTH = 20
local PLAYER_HEIGHT = 8
local PLAYER_SPEED = 3
local BULLET_WIDTH = 2
local BULLET_HEIGHT = 6
local BULLET_SPEED = 4
local ALIEN_WIDTH = 12
local ALIEN_HEIGHT = 8
local ALIEN_ROWS = 3
local ALIEN_COLS = 6
local ALIEN_SPEED = 1
local ALIEN_DROP = 8

-- Game state
local gameState = "menu"  -- "menu", "playing", "gameover"
local player = {}
local playerBullets = {}
local alienBullets = {}
local aliens = {}
local score = 0
local lives = 3
local alienDirection = 1
local alienMoveTimer = 0
local alienMoveDelay = 30

-- Love2D style functions
function love.load()
    -- Initialize game (equivalent to love.load)
    resetGame()
end

function love.update(dt)
    -- Game logic update (equivalent to love.update)
    if gameState == "playing" then
        updatePlayer(dt)
        updateBullets(dt)
        updateAliens(dt)
        checkCollisions()
        checkWinCondition()
    elseif gameState == "menu" or gameState == "gameover" then
        handleMenuInput()
    end
end

function love.draw()
    -- Rendering (equivalent to love.draw)
    if gameState == "menu" then
        drawMenu()
    elseif gameState == "playing" then
        drawGame()
    elseif gameState == "gameover" then
        drawGameOver()
    end
end

-- Game functions
function resetGame()
    -- Initialize player
    player = {
        x = WINDOW_WIDTH/2 - PLAYER_WIDTH/2,
        y = WINDOW_HEIGHT - 20,
        width = PLAYER_WIDTH,
        height = PLAYER_HEIGHT
    }

    -- Clear bullets
    playerBullets = {}
    alienBullets = {}

    -- Initialize aliens
    aliens = {}
    for row = 1, ALIEN_ROWS do
        for col = 1, ALIEN_COLS do
            table.insert(aliens, {
                x = 50 + (col-1) * (ALIEN_WIDTH + 10),
                y = 30 + (row-1) * (ALIEN_HEIGHT + 5),
                width = ALIEN_WIDTH,
                height = ALIEN_HEIGHT,
                alive = true
            })
        end
    end

    -- Reset game state
    score = 0
    lives = 3
    alienDirection = 1
    alienMoveTimer = 0
    gameState = "menu"
end

function updatePlayer(dt)
    -- Handle input (Love2D style)
    if property.getBool("button_left") then
        player.x = player.x - PLAYER_SPEED
    elseif property.getBool("button_right") then
        player.x = player.x + PLAYER_SPEED
    end

    -- Keep player in bounds
    player.x = math.max(0, math.min(WINDOW_WIDTH - player.width, player.x))

    -- Shooting
    if property.getBool("button_a") and #playerBullets < 3 then
        table.insert(playerBullets, {
            x = player.x + player.width/2 - BULLET_WIDTH/2,
            y = player.y,
            width = BULLET_WIDTH,
            height = BULLET_HEIGHT
        })
    end
end

function updateBullets(dt)
    -- Update player bullets
    for i = #playerBullets, 1, -1 do
        local bullet = playerBullets[i]
        bullet.y = bullet.y - BULLET_SPEED

        -- Remove bullets that are off screen
        if bullet.y < -bullet.height then
            table.remove(playerBullets, i)
        end
    end

    -- Update alien bullets
    for i = #alienBullets, 1, -1 do
        local bullet = alienBullets[i]
        bullet.y = bullet.y + BULLET_SPEED * 0.7  -- Slower alien bullets

        -- Remove bullets that are off screen
        if bullet.y > WINDOW_HEIGHT then
            table.remove(alienBullets, i)
        end
    end

    -- Alien shooting (random chance)
    for _, alien in ipairs(aliens) do
        if alien.alive and math.random() < 0.003 then  -- 0.3% chance per alien per frame
            table.insert(alienBullets, {
                x = alien.x + alien.width/2 - BULLET_WIDTH/2,
                y = alien.y + alien.height,
                width = BULLET_WIDTH,
                height = BULLET_HEIGHT
            })
        end
    end
end

function updateAliens(dt)
    alienMoveTimer = alienMoveTimer + 1

    if alienMoveTimer >= alienMoveDelay then
        alienMoveTimer = 0

        -- Check if aliens should change direction
        local shouldChangeDirection = false
        for _, alien in ipairs(aliens) do
            if alien.alive then
                if alienDirection == 1 and alien.x + alien.width >= WINDOW_WIDTH - 10 then
                    shouldChangeDirection = true
                    break
                elseif alienDirection == -1 and alien.x <= 10 then
                    shouldChangeDirection = true
                    break
                end
            end
        end

        if shouldChangeDirection then
            alienDirection = -alienDirection
            -- Move aliens down
            for _, alien in ipairs(aliens) do
                if alien.alive then
                    alien.y = alien.y + ALIEN_DROP
                end
            end
            -- Speed up aliens slightly
            alienMoveDelay = math.max(10, alienMoveDelay - 2)
        else
            -- Move aliens horizontally
            for _, alien in ipairs(aliens) do
                if alien.alive then
                    alien.x = alien.x + alienDirection * ALIEN_SPEED
                end
            end
        end
    end
end

function checkCollisions()
    -- Player bullets vs aliens
    for i = #playerBullets, 1, -1 do
        local bullet = playerBullets[i]
        for j = #aliens, 1, -1 do
            local alien = aliens[j]
            if alien.alive and
               bullet.x < alien.x + alien.width and
               bullet.x + bullet.width > alien.x and
               bullet.y < alien.y + alien.height and
               bullet.y + bullet.height > alien.y then
                -- Hit!
                alien.alive = false
                table.remove(playerBullets, i)
                score = score + 10
                break
            end
        end
    end

    -- Alien bullets vs player
    for _, bullet in ipairs(alienBullets) do
        if bullet.x < player.x + player.width and
           bullet.x + bullet.width > player.x and
           bullet.y < player.y + player.height and
           bullet.y + bullet.height > player.y then
            -- Player hit!
            lives = lives - 1
            if lives <= 0 then
                gameState = "gameover"
            else
                -- Reset player position briefly
                player.x = WINDOW_WIDTH/2 - PLAYER_WIDTH/2
            end
            -- Clear alien bullets
            alienBullets = {}
            break
        end
    end

    -- Check if aliens reached the player
    for _, alien in ipairs(aliens) do
        if alien.alive and alien.y + alien.height >= player.y then
            gameState = "gameover"
            break
        end
    end
end

function checkWinCondition()
    local aliveAliens = 0
    for _, alien in ipairs(aliens) do
        if alien.alive then
            aliveAliens = aliveAliens + 1
        end
    end

    if aliveAliens == 0 then
        gameState = "gameover"  -- Could add level progression here
    end
end

function handleMenuInput()
    if property.getBool("button_start") then
        if gameState == "menu" then
            gameState = "playing"
        elseif gameState == "gameover" then
            resetGame()
        end
    end
end

function drawMenu()
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    screen.setColor(0, 255, 0)
    screen.drawText(WINDOW_WIDTH/2 - 70, WINDOW_HEIGHT/2 - 20, "LOVE2D SPACE INVADERS")
    screen.setColor(255, 255, 255)
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2, "Press START to Play")
    screen.drawText(WINDOW_WIDTH/2 - 70, WINDOW_HEIGHT/2 + 20, "LEFT/RIGHT: Move, A: Shoot")

    -- Draw sample aliens
    screen.setColor(255, 0, 0)
    for i = 1, 3 do
        screen.drawRectF(WINDOW_WIDTH/2 - 30 + i*20, WINDOW_HEIGHT/2 + 40, ALIEN_WIDTH, ALIEN_HEIGHT)
    end
end

function drawGame()
    -- Clear screen
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    -- Draw player
    screen.setColor(0, 255, 0)
    screen.drawRectF(player.x, player.y, player.width, player.height)

    -- Draw player bullets
    screen.setColor(255, 255, 0)
    for _, bullet in ipairs(playerBullets) do
        screen.drawRectF(bullet.x, bullet.y, bullet.width, bullet.height)
    end

    -- Draw aliens
    screen.setColor(255, 0, 0)
    for _, alien in ipairs(aliens) do
        if alien.alive then
            screen.drawRectF(alien.x, alien.y, alien.width, alien.height)
        end
    end

    -- Draw alien bullets
    screen.setColor(255, 0, 255)
    for _, bullet in ipairs(alienBullets) do
        screen.drawRectF(bullet.x, bullet.y, bullet.width, bullet.height)
    end

    -- Draw UI
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
    screen.drawText(10, 25, "Lives: " .. lives)

    -- Draw ground line
    screen.setColor(100, 100, 100)
    screen.drawRectF(0, WINDOW_HEIGHT - 15, WINDOW_WIDTH, 2)
end

function drawGameOver()
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    screen.setColor(255, 0, 0)
    screen.drawText(WINDOW_WIDTH/2 - 40, WINDOW_HEIGHT/2 - 20, "GAME OVER")
    screen.setColor(255, 255, 255)
    screen.drawText(WINDOW_WIDTH/2 - 35, WINDOW_HEIGHT/2, "Final Score: " .. score)
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2 + 20, "Press START to Restart")
end

-- ELM11 main functions
function onTick()
    love.update(1/60)
end

function onDraw()
    love.draw()
end

-- Initialize
love.load()
print("Love2D Space Invaders loaded - Classic Space Invaders with Love2D patterns")
print("Use LEFT/RIGHT to move, A to shoot, avoid alien bullets!")