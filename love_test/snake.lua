-- Snake Game for ELM11
-- A simple implementation of the classic Snake game

--    -- Snake Game for ELM11
-- A simple implementation of the classic Snake game

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
GRID_SIZE = 8
GRID_WIDTH = math.floor(SCREEN_WIDTH / GRID_SIZE)
GRID_HEIGHT = math.floor(SCREEN_HEIGHT / GRID_SIZE)
MOVE_DELAY = 0.15  -- Time between snake movements in seconds

-- Game state
snake = {{x = 10, y = 10}}  -- Snake starts as single segment
direction = {x = 1, y = 0}  -- Moving right initially
food = {x = 15, y = 15}
score = 0
game_over = false
game_started = false
move_timer = 0  -- Timer for controlling snake movement speed

-- Input handling
function get_input()
    -- Use ELM11 input properties (adjust based on your setup)
    local up = property.getBool("Up") or false
    local down = property.getBool("Down") or false
    local left = property.getBool("Left") or false
    local right = property.getBool("Right") or false
    local start = property.getBool("Start") or false

    return {up = up, down = down, left = left, right = right, start = start}
end

-- Initialize game
function init_game()
    snake = {{x = math.floor(GRID_WIDTH/2), y = math.floor(GRID_HEIGHT/2)}}
    direction = {x = 1, y = 0}
    score = 0
    game_over = false
    game_started = false
    move_timer = 0
    MOVE_DELAY = 0.15  -- Reset speed to initial value
    place_food()
end

-- Place food at random location
function place_food()
    food.x = math.random(0, GRID_WIDTH - 1)
    food.y = math.random(0, GRID_HEIGHT - 1)
    -- Make sure food doesn't spawn on snake
    for _, segment in ipairs(snake) do
        if segment.x == food.x and segment.y == food.y then
            place_food()
            return
        end
    end
end

-- Update game logic
function update_game()
    if game_over then return end

    -- Move snake
    local head = {x = snake[1].x + direction.x, y = snake[1].y + direction.y}

    -- Check wall collision
    if head.x < 0 or head.x >= GRID_WIDTH or head.y < 0 or head.y >= GRID_HEIGHT then
        game_over = true
        return
    end

    -- Check self collision (skip the head segment)
    for i = 2, #snake do
        if head.x == snake[i].x and head.y == snake[i].y then
            game_over = true
            return
        end
    end

    -- Add new head
    table.insert(snake, 1, head)

    -- Check food collision
    if head.x == food.x and head.y == food.y then
        score = score + 1
        -- Speed up the game as score increases (like Nokia Snake)
        MOVE_DELAY = math.max(0.08, 0.15 - (score * 0.005))
        place_food()
    else
        -- Remove tail if no food eaten
        table.remove(snake)
    end
end

function onTick(dt)
    local input = get_input()

    -- Start game
    if not game_started and input.start then
        game_started = true
        return
    end

    if not game_started then return end

    -- Handle input immediately (more responsive like Nokia Snake)
    if input.up and direction.y == 0 then
        direction = {x = 0, y = -1}
    elseif input.down and direction.y == 0 then
        direction = {x = 0, y = 1}
    elseif input.left and direction.x == 0 then
        direction = {x = -1, y = 0}
    elseif input.right and direction.x == 0 then
        direction = {x = 1, y = 0}
    end

    move_timer = move_timer + dt
    if move_timer >= MOVE_DELAY then
        move_timer = move_timer - MOVE_DELAY
        update_game()
    end
end

function onDraw()
    draw_game()
end

-- Drawing functions
function draw_game()
    -- Clear screen (black background)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    if not game_started then
        -- Draw start screen
        screen.setColor(255, 255, 255)
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "Press START to play")
        screen.drawText(SCREEN_WIDTH/2 - 30, SCREEN_HEIGHT/2 + 10, "Snake Game")
        return
    end

    if game_over then
        -- Draw game over screen
        screen.setColor(255, 0, 0)
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "GAME OVER")
        screen.drawText(SCREEN_WIDTH/2 - 35, SCREEN_HEIGHT/2 + 10, "Score: " .. score)
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 + 30, "Press START to restart")
        return
    end

    -- Draw snake
    screen.setColor(0, 255, 0)  -- Green
    for _, segment in ipairs(snake) do
        screen.drawRectF(segment.x * GRID_SIZE, segment.y * GRID_SIZE, GRID_SIZE, GRID_SIZE)
    end

    -- Draw food
    screen.setColor(255, 0, 0)  -- Red
    screen.drawRectF(food.x * GRID_SIZE, food.y * GRID_SIZE, GRID_SIZE, GRID_SIZE)

    -- Draw score
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
end

-- Initialize
init_game()

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
GRID_SIZE = 8
GRID_WIDTH = math.floor(SCREEN_WIDTH / GRID_SIZE)
GRID_HEIGHT = math.floor(SCREEN_HEIGHT / GRID_SIZE)
MOVE_DELAY = 0.15  -- Time between snake movements in seconds

-- Game state
snake = {{x = 10, y = 10}}  -- Snake starts as single segment
direction = {x = 1, y = 0}  -- Moving right initially
food = {x = 15, y = 15}
score = 0
game_over = false
game_started = false
move_timer = 0  -- Timer for controlling snake movement speed

-- Input handling
function get_input()
    -- Use ELM11 input properties (adjust based on your setup)
    local up = property.getBool("Up") or false
    local down = property.getBool("Down") or false
    local left = property.getBool("Left") or false
    local right = property.getBool("Right") or false
    local start = property.getBool("Start") or false
    
    return {up = up, down = down, left = left, right = right, start = start}
end

-- Initialize game
function init_game()
    snake = {{x = math.floor(GRID_WIDTH/2), y = math.floor(GRID_HEIGHT/2)}}
    direction = {x = 1, y = 0}
    score = 0
    game_over = false
    game_started = false
    move_timer = 0
    MOVE_DELAY = 0.15  -- Reset speed to initial value
    place_food()
end

-- Place food at random location
function place_food()
    food.x = math.random(0, GRID_WIDTH - 1)
    food.y = math.random(0, GRID_HEIGHT - 1)
    -- Make sure food doesn't spawn on snake
    for _, segment in ipairs(snake) do
        if segment.x == food.x and segment.y == food.y then
            place_food()
            return
        end
    end
end

-- Update game logic
function update_game()
    if game_over then return end
    
    -- Move snake
    local head = {x = snake[1].x + direction.x, y = snake[1].y + direction.y}
    
    -- Check wall collision
    if head.x < 0 or head.x >= GRID_WIDTH or head.y < 0 or head.y >= GRID_HEIGHT then
        game_over = true
        return
    end
    
    -- Check self collision (skip the head segment)
    for i = 2, #snake do
        if head.x == snake[i].x and head.y == snake[i].y then
            game_over = true
            return
        end
    end
    
    -- Add new head
    table.insert(snake, 1, head)
    
    -- Check food collision
    if head.x == food.x and head.y == food.y then
        score = score + 10
        place_food()
    else
        -- Remove tail if no food eaten
        table.remove(snake)
    end
end

-- Render game
function draw_game()
    -- Clear screen (black background)
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
    
    if not game_started then
        -- Draw start screen
        screen.setColor(255, 255, 255)
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "Press START to play")
        screen.drawText(SCREEN_WIDTH/2 - 30, SCREEN_HEIGHT/2 + 10, "Snake Game")
        return
    end
    
    if game_over then
        -- Draw game over screen
        screen.setColor(255, 0, 0)
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "GAME OVER")
        screen.drawText(SCREEN_WIDTH/2 - 35, SCREEN_HEIGHT/2 + 10, "Score: " .. score)
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 + 30, "Press START to restart")
        return
    end
    
    -- Draw snake
    screen.setColor(0, 255, 0)  -- Green
    for _, segment in ipairs(snake) do
        screen.drawRectF(segment.x * GRID_SIZE, segment.y * GRID_SIZE, GRID_SIZE, GRID_SIZE)
    end
    
    -- Draw food
    screen.setColor(255, 0, 0)  -- Red
    screen.drawRectF(food.x * GRID_SIZE, food.y * GRID_SIZE, GRID_SIZE, GRID_SIZE)
    
    -- Draw score
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
end

-- Main game functions
function onTick(dt)
    local input = get_input()
    
    -- Start game
    if not game_started and input.start then
        game_started = true
        return
    end
    
    if not game_started then return end
    
    -- Handle input immediately (more responsive like Nokia Snake)
    if input.up and direction.y == 0 then
        direction = {x = 0, y = -1}
    elseif input.down and direction.y == 0 then
        direction = {x = 0, y = 1}
    elseif input.left and direction.x == 0 then
        direction = {x = -1, y = 0}
    elseif input.right and direction.x == 0 then
        direction = {x = 1, y = 0}
    end
    
    move_timer = move_timer + dt
    if move_timer >= MOVE_DELAY then
        move_timer = move_timer - MOVE_DELAY
        update_game()
    end
end

function onDraw()
    draw_game()
end

-- Initialize
init_game()