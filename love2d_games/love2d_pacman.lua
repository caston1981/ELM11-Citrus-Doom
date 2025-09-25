-- Love2D Pac-Man - Pac-Man Game for ELM11
-- Adapted from existing Pac-Man implementation to follow Love2D patterns
-- Original: Classic Pac-Man gameplay adapted for ELM11

-- Game constants (Love2D style)
local WINDOW_WIDTH = 288
local WINDOW_HEIGHT = 160
local CELL_SIZE = 8
local GRID_WIDTH = math.floor(WINDOW_WIDTH / CELL_SIZE)
local GRID_HEIGHT = math.floor(WINDOW_HEIGHT / CELL_SIZE)

-- Game state
local gameState = "menu"  -- "menu", "playing", "gameover", "levelcomplete"
local score = 0
local lives = 3
local level = 1
local pellets = {}
local powerPellets = {}
local pacman = {}
local ghosts = {}
local maze = {}

-- Love2D style functions
function love.load()
    -- Initialize game (equivalent to love.load)
    initializeMaze()
    resetGame()
end

function love.update(dt)
    -- Game logic update (equivalent to love.update)
    if gameState == "playing" then
        updatePacman(dt)
        updateGhosts(dt)
        checkCollisions()
        checkWinCondition()
    elseif gameState == "menu" or gameState == "gameover" or gameState == "levelcomplete" then
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
    elseif gameState == "levelcomplete" then
        drawLevelComplete()
    end
end

-- Game initialization
function initializeMaze()
    -- Simplified maze layout (1=wall, 0=empty, 2=pellet, 3=power pellet)
    maze = {
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,1},
        {1,3,1,1,1,2,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,2,2,2,2,1,1,1,2,3,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1},
        {1,2,1,1,1,2,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,2,1,1,2,1},
        {1,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,1},
        {1,1,1,1,1,2,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1},
        {0,0,0,0,1,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,0,0,0,0},
        {1,1,1,1,1,2,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1},
        {2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {1,1,1,1,1,2,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1},
        {0,0,0,0,1,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,0,0,0,0},
        {1,1,1,1,1,2,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1},
        {1,3,1,1,1,2,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,2,2,2,2,1,1,1,2,3,1},
        {1,2,2,2,1,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,1},
        {1,1,2,2,1,2,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,1,2,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
    }

    -- Initialize pellets and power pellets
    pellets = {}
    powerPellets = {}
    for y = 1, #maze do
        for x = 1, #maze[y] do
            if maze[y][x] == 2 then
                table.insert(pellets, {x = x-1, y = y-1})
            elseif maze[y][x] == 3 then
                table.insert(powerPellets, {x = x-1, y = y-1})
            end
        end
    end
end

function resetGame()
    -- Initialize Pac-Man
    pacman = {
        x = 18,
        y = 15,
        dir = {x = 0, y = 0},
        nextDir = {x = 0, y = 0},
        speed = 2
    }

    -- Initialize ghosts
    ghosts = {
        {x = 16, y = 9, dir = {x = 0, y = -1}, color = {255, 0, 0}},
        {x = 18, y = 9, dir = {x = 0, y = -1}, color = {255, 182, 193}},
        {x = 20, y = 9, dir = {x = 0, y = -1}, color = {0, 255, 255}},
        {x = 22, y = 9, dir = {x = 0, y = -1}, color = {255, 165, 0}}
    }

    score = 0
    lives = 3
    gameState = "menu"
end

function updatePacman(dt)
    -- Handle input (Love2D style)
    if property.getBool("button_left") then
        pacman.nextDir = {x = -1, y = 0}
    elseif property.getBool("button_right") then
        pacman.nextDir = {x = 1, y = 0}
    elseif property.getBool("button_up") then
        pacman.nextDir = {x = 0, y = -1}
    elseif property.getBool("button_down") then
        pacman.nextDir = {x = 0, y = 1}
    end

    -- Try to change direction if possible
    if canMove(pacman.x + pacman.nextDir.x, pacman.y + pacman.nextDir.y) then
        pacman.dir = {x = pacman.nextDir.x, y = pacman.nextDir.y}
    end

    -- Move Pac-Man
    local newX = pacman.x + pacman.dir.x * pacman.speed * dt
    local newY = pacman.y + pacman.dir.y * pacman.speed * dt

    if canMove(math.floor(newX + 0.5), math.floor(newY + 0.5)) then
        pacman.x = newX
        pacman.y = newY
    end

    -- Wrap around screen
    if pacman.x < 0 then pacman.x = GRID_WIDTH - 1 end
    if pacman.x >= GRID_WIDTH then pacman.x = 0 end

    -- Eat pellets
    eatPellets()
end

function updateGhosts(dt)
    for _, ghost in ipairs(ghosts) do
        -- Simple ghost AI - random movement
        if math.random() < 0.02 then  -- 2% chance to change direction
            local dirs = {{x=0,y=-1}, {x=0,y=1}, {x=-1,y=0}, {x=1,y=0}}
            local newDir = dirs[math.random(#dirs)]
            if canMove(ghost.x + newDir.x, ghost.y + newDir.y) then
                ghost.dir = newDir
            end
        end

        -- Move ghost
        local newX = ghost.x + ghost.dir.x * 1.5 * dt
        local newY = ghost.y + ghost.dir.y * 1.5 * dt

        if canMove(math.floor(newX + 0.5), math.floor(newY + 0.5)) then
            ghost.x = newX
            ghost.y = newY
        else
            -- Try different direction
            ghost.dir = {x = -ghost.dir.x, y = -ghost.dir.y}
        end
    end
end

function canMove(x, y)
    if x < 0 or x >= GRID_WIDTH or y < 0 or y >= GRID_HEIGHT then
        return false
    end
    return maze[y+1][x+1] ~= 1
end

function eatPellets()
    -- Check regular pellets
    for i = #pellets, 1, -1 do
        local pellet = pellets[i]
        if math.floor(pacman.x + 0.5) == pellet.x and math.floor(pacman.y + 0.5) == pellet.y then
            table.remove(pellets, i)
            score = score + 10
        end
    end

    -- Check power pellets
    for i = #powerPellets, 1, -1 do
        local pellet = powerPellets[i]
        if math.floor(pacman.x + 0.5) == pellet.x and math.floor(pacman.y + 0.5) == pellet.y then
            table.remove(powerPellets, i)
            score = score + 50
            -- Power mode would go here
        end
    end
end

function checkCollisions()
    for _, ghost in ipairs(ghosts) do
        if math.abs(pacman.x - ghost.x) < 0.5 and math.abs(pacman.y - ghost.y) < 0.5 then
            lives = lives - 1
            if lives <= 0 then
                gameState = "gameover"
            else
                -- Reset positions
                pacman.x = 18
                pacman.y = 15
                for i, ghost in ipairs(ghosts) do
                    ghost.x = 16 + i * 2
                    ghost.y = 9
                end
            end
            break
        end
    end
end

function checkWinCondition()
    if #pellets == 0 and #powerPellets == 0 then
        gameState = "levelcomplete"
    end
end

function handleMenuInput()
    if property.getBool("button_start") then
        if gameState == "menu" then
            gameState = "playing"
        elseif gameState == "gameover" then
            resetGame()
        elseif gameState == "levelcomplete" then
            level = level + 1
            resetGame()
        end
    end
end

function drawMenu()
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    screen.setColor(255, 255, 0)
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2 - 20, "LOVE2D PAC-MAN")
    screen.setColor(255, 255, 255)
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2, "Press START to Play")
    screen.drawText(WINDOW_WIDTH/2 - 70, WINDOW_HEIGHT/2 + 20, "Eat all pellets to win!")
end

function drawGame()
    -- Draw maze
    for y = 0, GRID_HEIGHT-1 do
        for x = 0, GRID_WIDTH-1 do
            local cell = maze[y+1][x+1]
            if cell == 1 then
                screen.setColor(0, 0, 255)  -- Walls
                screen.drawRectF(x * CELL_SIZE, y * CELL_SIZE, CELL_SIZE, CELL_SIZE)
            end
        end
    end

    -- Draw pellets
    screen.setColor(255, 255, 0)
    for _, pellet in ipairs(pellets) do
        screen.drawRectF(pellet.x * CELL_SIZE + 3, pellet.y * CELL_SIZE + 3, 2, 2)
    end

    -- Draw power pellets
    screen.setColor(255, 0, 255)
    for _, pellet in ipairs(powerPellets) do
        screen.drawRectF(pellet.x * CELL_SIZE + 2, pellet.y * CELL_SIZE + 2, 4, 4)
    end

    -- Draw Pac-Man
    screen.setColor(255, 255, 0)
    screen.drawRectF(pacman.x * CELL_SIZE, pacman.y * CELL_SIZE, CELL_SIZE, CELL_SIZE)

    -- Draw ghosts
    for _, ghost in ipairs(ghosts) do
        screen.setColor(ghost.color[1], ghost.color[2], ghost.color[3])
        screen.drawRectF(ghost.x * CELL_SIZE, ghost.y * CELL_SIZE, CELL_SIZE, CELL_SIZE)
    end

    -- Draw UI
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
    screen.drawText(10, 25, "Lives: " .. lives)
    screen.drawText(10, 40, "Level: " .. level)
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

function drawLevelComplete()
    screen.setColor(0, 0, 0)
    screen.drawRectF(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

    screen.setColor(0, 255, 0)
    screen.drawText(WINDOW_WIDTH/2 - 50, WINDOW_HEIGHT/2 - 20, "LEVEL COMPLETE!")
    screen.setColor(255, 255, 255)
    screen.drawText(WINDOW_WIDTH/2 - 35, WINDOW_HEIGHT/2, "Score: " .. score)
    screen.drawText(WINDOW_WIDTH/2 - 60, WINDOW_HEIGHT/2 + 20, "Press START for Next Level")
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
print("Love2D Pac-Man loaded - Classic Pac-Man with Love2D patterns")
print("Use arrow keys to move, eat all pellets to win!")