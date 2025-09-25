-- Love2D Snake - Snake Game for ELM11
-- Adapted from existing Snake implementation to follow Love2D patterns
-- Original: https://github.com/danielnaoexiste/Love2D-Simple-Games inspired

-- Game constants (Love2D style)
local WINDOW_WIDTH = 288
local WINDOW_HEIGHT = 160
local GRID_SIZE = 8
local GRID_WIDTH = math.floor(WINDOW_WIDTH / GRID_SIZE)
local GRID_HEIGHT = math.floor(WINDOW_HEIGHT / GRID_SIZE)

-- Game state
local snake = {}
local direction = {}
local food = {}
local score = 0
local gameState = "menu"  -- "menu", "playing", "gameover"

-- Love2D style functions
function love.load()
    -- Initialize game (equivalent to love.load)
    resetGame()
end

function love.update(dt)
    -- Game logic update (equivalent to love.update)
    if gameState == "playing" then
        updateSnake(dt)
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

-- Love2D style input handling
function love.keypressed(key)
    -- Handle key presses (adapted for ELM11)
    if gameState == "menu" then
        if key == "start" then
            gameState = "playing"
        end
    elseif gameState == "gameover" then
        if key == "start" then
            resetGame()
        end
    end
end

-- Game functions
function resetGame()
    -- Initialize snake (Love2D style)
    snake = {
        {x = math.floor(GRID_WIDTH/2), y = math.floor(GRID_HEIGHT/2)}
    }
    direction = {x = 1, y = 0}
    score = 0
    gameState = "menu"
    spawnFood()
end

function spawnFood()
    -- Spawn food at random location (Love2D style)
    repeat
        food.x = math.random(0, GRID_WIDTH - 1)
        food.y = math.random(0, GRID_HEIGHT - 1)
        -- Check if food spawns on snake
        local onSnake = false
        for _, segment in ipairs(snake) do
            if segment.x == food.x and segment.y == food.y then
                onSnake = true
                break
            end
        end
    until not onSnake
end

function updateSnake(dt)
    -- Update snake movement (Love2D style timing)
    -- Move snake based on direction
    local head = {
        x = snake[1].x + direction.x,
        y = snake[1].y + direction.y
    }

    -- Check wall collision
    if head.x < 0 or head.x >= GRID_WIDTH or head.y < 0 or head.y >= GRID_HEIGHT then
        gameState = "gameover"
        return
    end

    -- Check self collision
    for _, segment in ipairs(snake) do
        if head.x == segment.x and head.y == segment.y then
            gameState = "gameover"
            return
        end
    end

    -- Add new head
    table.insert(snake, 1, head)

    -- Check food collision
    if head.x == food.x and head.y == food.y then
        score = score + 10
        spawnFood()
    else
        -- Remove tail if no food eaten
        table.remove(snake)
    end

    -- Handle input (Love2D style)
    handleInput()
end

function handleInput()
    -- Love2D style input handling adapted for ELM11
    if property.getBool("button_left") and direction.x == 0 then
        direction = {x = -1, y = 0}
    elseif property.getBool("button_right") and direction.x == 0 then
        direction = {x = 1, y = 0}
    elseif property.getBool("button_up") and direction.y == 0 then
        direction = {x = 0, y = -1}
    elseif property.getBool("button_down") and direction.y == 0 then
        direction = {x = 0, y = 1}
    end
end

function handleMenuInput()
    -- Handle menu/gameover input
    if property.getBool("button_start") then
        if gameState == "menu" then
            gameState = "playing"
        elseif gameState == "gameover" then
            resetGame()
        end
    end
end

function drawMenu()
    -- Draw menu screen (Love2D style)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    screen.setColor(255, 255, 255)
    screen.drawText(WINDOW_WIDTH/2 - 50, WINDOW_HEIGHT/2 - 20, "LOVE2D SNAKE")
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2, "Press START to Play")
    screen.drawText(WINDOW_WIDTH/2 - 70, WINDOW_HEIGHT/2 + 20, "Use Arrow Keys to Move")

    -- Draw a sample snake
    screen.setColor(0, 255, 0)
    for i = 1, 5 do
        screen.drawRectF(WINDOW_WIDTH/2 - 20 + i*GRID_SIZE, WINDOW_HEIGHT/2 + 40, GRID_SIZE, GRID_SIZE)
    end
end

function drawGame()
    -- Draw game screen (Love2D style)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    -- Draw snake (Love2D style rectangle drawing)
    screen.setColor(0, 255, 0)
    for _, segment in ipairs(snake) do
        screen.drawRectF(segment.x * GRID_SIZE, segment.y * GRID_SIZE, GRID_SIZE, GRID_SIZE)
    end

    -- Draw food
    screen.setColor(255, 0, 0)
    screen.drawRectF(food.x * GRID_SIZE, food.y * GRID_SIZE, GRID_SIZE, GRID_SIZE)

    -- Draw score (Love2D style text)
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
end

function drawGameOver()
    -- Draw game over screen (Love2D style)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    screen.setColor(255, 0, 0)
    screen.drawText(WINDOW_WIDTH/2 - 40, WINDOW_HEIGHT/2 - 20, "GAME OVER")
    screen.setColor(255, 255, 255)
    screen.drawText(WINDOW_WIDTH/2 - 35, WINDOW_HEIGHT/2, "Final Score: " .. score)
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2 + 20, "Press START to Restart")
end

-- ELM11 main functions (bridge to Love2D pattern)
function onTick()
    love.update(1/60)  -- Assume 60 FPS
end

function onDraw()
    love.draw()
end

-- Initialize (Love2D style)
love.load()
print("Love2D Snake loaded - Classic Snake game with Love2D patterns")
print("Use arrow keys to move, START to begin/restart")