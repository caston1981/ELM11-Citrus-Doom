-- LoveBirb - Flappy Bird Clone for ELM11
-- Adapted from Love2D-Simple-Games repository
-- Original: https://github.com/danielnaoexiste/Love2D-Simple-Games/tree/main/LoveBirb

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
BIRD_WIDTH = 16
BIRD_HEIGHT = 12
PIPE_WIDTH = 32
PIPE_GAP = 50
PIPE_SPEED = 60
GRAVITY = 300
JUMP_FORCE = -120
GROUND_HEIGHT = 20

-- Game state
gameState = "start"  -- "start", "play", "gameover"
score = 0
highScore = 0

-- Bird object
bird = {
    x = 50,
    y = SCREEN_HEIGHT/2,
    width = BIRD_WIDTH,
    height = BIRD_HEIGHT,
    velocity = 0
}

-- Pipes list
pipes = {}

-- Game functions
function resetGame()
    bird.x = 50
    bird.y = SCREEN_HEIGHT/2
    bird.velocity = 0
    pipes = {}
    score = 0
    gameState = "start"

    -- Create initial pipes
    createPipe(SCREEN_WIDTH)
    createPipe(SCREEN_WIDTH + 120)
end

function createPipe(x)
    local gapY = math.random(30, SCREEN_HEIGHT - PIPE_GAP - GROUND_HEIGHT - 30)
    table.insert(pipes, {
        x = x,
        gapY = gapY,
        gapHeight = PIPE_GAP,
        width = PIPE_WIDTH,
        scored = false
    })
end

function updateBird(dt)
    if gameState == "play" then
        -- Apply gravity
        bird.velocity = bird.velocity + GRAVITY * dt
        bird.y = bird.y + bird.velocity * dt

        -- Keep bird on screen (top)
        if bird.y < 0 then
            bird.y = 0
            bird.velocity = 0
        end

        -- Check ground collision
        if bird.y + bird.height >= SCREEN_HEIGHT - GROUND_HEIGHT then
            bird.y = SCREEN_HEIGHT - GROUND_HEIGHT - bird.height
            gameOver()
        end
    end
end

function updatePipes(dt)
    if gameState ~= "play" then return end

    for i = #pipes, 1, -1 do
        local pipe = pipes[i]
        pipe.x = pipe.x - PIPE_SPEED * dt

        -- Remove pipes that are off screen
        if pipe.x + pipe.width < 0 then
            table.remove(pipes, i)
        end

        -- Check scoring
        if not pipe.scored and bird.x > pipe.x + pipe.width then
            score = score + 1
            pipe.scored = true
        end

        -- Check collision with pipes
        if checkPipeCollision(pipe) then
            gameOver()
        end
    end

    -- Create new pipes
    local lastPipe = pipes[#pipes]
    if lastPipe and lastPipe.x < SCREEN_WIDTH - 120 then
        createPipe(SCREEN_WIDTH)
    end
end

function checkPipeCollision(pipe)
    -- Check collision with top pipe
    if bird.x < pipe.x + pipe.width and
       bird.x + bird.width > pipe.x and
       bird.y < pipe.gapY then
        return true
    end

    -- Check collision with bottom pipe
    if bird.x < pipe.x + pipe.width and
       bird.x + bird.width > pipe.x and
       bird.y + bird.height > pipe.gapY + pipe.gapHeight then
        return true
    end

    return false
end

function gameOver()
    gameState = "gameover"
    if score > highScore then
        highScore = score
    end
end

function jump()
    if gameState == "start" then
        gameState = "play"
    elseif gameState == "play" then
        bird.velocity = JUMP_FORCE
    elseif gameState == "gameover" then
        resetGame()
    end
end

-- Main game functions
function onTick()
    local dt = 1/60  -- Assume 60 FPS

    updateBird(dt)
    updatePipes(dt)

    -- Handle input
    if property.getBool("button_a") or property.getBool("button_start") then
        jump()
    end
end

function onDraw()
    -- Clear screen (sky blue background)
    screen.setColor(100, 150, 255)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw ground
    screen.setColor(100, 200, 100)
    screen.drawRectF(0, SCREEN_HEIGHT - GROUND_HEIGHT, SCREEN_WIDTH, GROUND_HEIGHT)

    -- Draw pipes
    screen.setColor(50, 150, 50)
    for _, pipe in ipairs(pipes) do
        -- Top pipe
        screen.drawRectF(pipe.x, 0, pipe.width, pipe.gapY)
        -- Bottom pipe
        screen.drawRectF(pipe.x, pipe.gapY + pipe.gapHeight,
                        pipe.width, SCREEN_HEIGHT - pipe.gapY - pipe.gapHeight - GROUND_HEIGHT)
    end

    -- Draw bird
    screen.setColor(255, 255, 0)
    screen.drawRectF(bird.x, bird.y, bird.width, bird.height)

    -- Draw score
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
    screen.drawText(10, 25, "High: " .. highScore)

    -- Draw game state messages
    if gameState == "start" then
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "Press A/START")
        screen.drawText(SCREEN_WIDTH/2 - 35, SCREEN_HEIGHT/2 + 5, "to flap!")
    elseif gameState == "gameover" then
        screen.setColor(255, 0, 0)
        screen.drawText(SCREEN_WIDTH/2 - 30, SCREEN_HEIGHT/2 - 15, "GAME OVER")
        screen.setColor(255, 255, 255)
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2, "Press A/START")
        screen.drawText(SCREEN_WIDTH/2 - 35, SCREEN_HEIGHT/2 + 15, "to restart")
    end

    -- Draw controls help
    screen.setColor(150, 150, 150)
    screen.drawText(5, SCREEN_HEIGHT - 10, "A/START: Flap")
end

-- Initialize game
math.randomseed(os.time())
resetGame()
print("LoveBirb loaded - Flappy Bird clone for ELM11")
print("Press A or START to flap and avoid pipes!")