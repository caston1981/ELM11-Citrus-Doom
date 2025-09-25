-- Pac-Man Game for ELM11
-- A simplified implementation of the classic Pac-Man game

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
CELL_SIZE = 8
GRID_WIDTH = math.floor(SCREEN_WIDTH / CELL_SIZE)
GRID_HEIGHT = math.floor(SCREEN_HEIGHT / CELL_SIZE)
PACMAN_SPEED = 2
GHOST_SPEED = 1.5
DOT_POINTS = 10
POWER_PELLET_POINTS = 50
GHOST_POINTS = 200

-- Maze layout (1 = wall, 0 = empty, 2 = dot, 3 = power pellet)
local maze = {
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

-- Game state
pacman = {x = 18 * CELL_SIZE, y = 15 * CELL_SIZE, dir = {x = 0, y = 0}, next_dir = {x = 0, y = 0}}
ghosts = {
    {x = 16 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {255, 0, 0}, mode = "chase"},
    {x = 18 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {255, 182, 193}, mode = "chase"},
    {x = 20 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {0, 255, 255}, mode = "chase"},
    {x = 22 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {255, 165, 0}, mode = "chase"}
}
score = 0
lives = 3
level = 1
power_mode = false
power_timer = 0
game_over = false
game_started = false
dots_remaining = 0

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
    -- Count initial dots
    dots_remaining = 0
    for y = 1, #maze do
        for x = 1, #maze[y] do
            if maze[y][x] == 2 or maze[y][x] == 3 then
                dots_remaining = dots_remaining + 1
            end
        end
    end
    
    -- Reset game state
    pacman = {x = 18 * CELL_SIZE, y = 15 * CELL_SIZE, dir = {x = 0, y = 0}, next_dir = {x = 0, y = 0}}
    ghosts = {
        {x = 16 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {255, 0, 0}, mode = "chase"},
        {x = 18 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {255, 182, 193}, mode = "chase"},
        {x = 20 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {0, 255, 255}, mode = "chase"},
        {x = 22 * CELL_SIZE, y = 9 * CELL_SIZE, dir = {x = 0, y = -GHOST_SPEED}, color = {255, 165, 0}, mode = "chase"}
    }
    score = 0
    lives = 3
    power_mode = false
    power_timer = 0
    game_over = false
    game_started = false
end

-- Check if position is valid (not a wall)
function is_valid_position(x, y)
    local grid_x = math.floor(x / CELL_SIZE) + 1
    local grid_y = math.floor(y / CELL_SIZE) + 1
    
    if grid_x < 1 or grid_x > #maze[1] or grid_y < 1 or grid_y > #maze then
        return false
    end
    
    return maze[grid_y][grid_x] ~= 1
end

-- Get grid position
function get_grid_pos(x, y)
    return math.floor(x / CELL_SIZE) + 1, math.floor(y / CELL_SIZE) + 1
end

-- Check collision with dots/power pellets
function check_dot_collision()
    local grid_x, grid_y = get_grid_pos(pacman.x + CELL_SIZE/2, pacman.y + CELL_SIZE/2)
    
    if maze[grid_y] and maze[grid_y][grid_x] then
        if maze[grid_y][grid_x] == 2 then  -- Regular dot
            maze[grid_y][grid_x] = 0
            score = score + DOT_POINTS
            dots_remaining = dots_remaining - 1
        elseif maze[grid_y][grid_x] == 3 then  -- Power pellet
            maze[grid_y][grid_x] = 0
            score = score + POWER_PELLET_POINTS
            dots_remaining = dots_remaining - 1
            power_mode = true
            power_timer = 600  -- 10 seconds at 60 FPS
            -- Make all ghosts vulnerable
            for _, ghost in ipairs(ghosts) do
                ghost.mode = "frightened"
            end
        end
    end
end

-- Update game logic
function update_game()
    if game_over then return end
    
    local input = get_input()
    
    -- Start game
    if not game_started and input.start then
        game_started = true
        return
    end
    
    if not game_started then return end
    
    -- Handle input for Pac-Man direction
    if input.up then
        pacman.next_dir = {x = 0, y = -PACMAN_SPEED}
    elseif input.down then
        pacman.next_dir = {x = 0, y = PACMAN_SPEED}
    elseif input.left then
        pacman.next_dir = {x = -PACMAN_SPEED, y = 0}
    elseif input.right then
        pacman.next_dir = {x = PACMAN_SPEED, y = 0}
    end
    
    -- Try to change direction if next position is valid
    if pacman.next_dir.x ~= 0 or pacman.next_dir.y ~= 0 then
        local next_x = pacman.x + pacman.next_dir.x
        local next_y = pacman.y + pacman.next_dir.y
        if is_valid_position(next_x, next_y) then
            pacman.dir = {x = pacman.next_dir.x, y = pacman.next_dir.y}
        end
    end
    
    -- Move Pac-Man
    local next_x = pacman.x + pacman.dir.x
    local next_y = pacman.y + pacman.dir.y
    
    if is_valid_position(next_x, next_y) then
        pacman.x = next_x
        pacman.y = next_y
        check_dot_collision()
    else
        pacman.dir = {x = 0, y = 0}  -- Stop if hit wall
    end
    
    -- Handle tunnel (wrap around)
    if pacman.x < 0 then
        pacman.x = SCREEN_WIDTH - CELL_SIZE
    elseif pacman.x >= SCREEN_WIDTH then
        pacman.x = 0
    end
    
    -- Update power mode
    if power_mode then
        power_timer = power_timer - 1
        if power_timer <= 0 then
            power_mode = false
            for _, ghost in ipairs(ghosts) do
                ghost.mode = "chase"
            end
        end
    end
    
    -- Update ghosts
    for _, ghost in ipairs(ghosts) do
        -- Simple AI: random movement with some chase behavior
        local directions = {
            {x = 0, y = -GHOST_SPEED},  -- Up
            {x = 0, y = GHOST_SPEED},   -- Down
            {x = -GHOST_SPEED, y = 0}, -- Left
            {x = GHOST_SPEED, y = 0}   -- Right
        }
        
        -- Reverse direction occasionally or when hitting wall
        local current_dir = ghost.dir
        local next_x = ghost.x + current_dir.x
        local next_y = ghost.y + current_dir.y
        
        if not is_valid_position(next_x, next_y) or math.random() < 0.02 then
            -- Choose new direction
            local valid_directions = {}
            for _, dir in ipairs(directions) do
                if is_valid_position(ghost.x + dir.x, ghost.y + dir.y) then
                    table.insert(valid_directions, dir)
                end
            end
            
            if #valid_directions > 0 then
                ghost.dir = valid_directions[math.random(#valid_directions)]
            end
        end
        
        -- Move ghost
        ghost.x = ghost.x + ghost.dir.x
        ghost.y = ghost.y + ghost.dir.y
        
        -- Handle tunnel
        if ghost.x < 0 then
            ghost.x = SCREEN_WIDTH - CELL_SIZE
        elseif ghost.x >= SCREEN_WIDTH then
            ghost.x = 0
        end
        
        -- Check collision with Pac-Man
        local dx = ghost.x - pacman.x
        local dy = ghost.y - pacman.y
        local distance = math.sqrt(dx*dx + dy*dy)
        
        if distance < CELL_SIZE then
            if ghost.mode == "frightened" then
                -- Eat ghost
                ghost.x = 18 * CELL_SIZE  -- Reset to center
                ghost.y = 9 * CELL_SIZE
                ghost.mode = "chase"
                score = score + GHOST_POINTS
            else
                -- Pac-Man dies
                lives = lives - 1
                if lives <= 0 then
                    game_over = true
                else
                    -- Reset positions
                    pacman.x = 18 * CELL_SIZE
                    pacman.y = 15 * CELL_SIZE
                    pacman.dir = {x = 0, y = 0}
                    for i, g in ipairs(ghosts) do
                        g.x = 16 * CELL_SIZE + (i-1) * 2 * CELL_SIZE
                        g.y = 9 * CELL_SIZE
                        g.dir = {x = 0, y = -GHOST_SPEED}
                        g.mode = "chase"
                    end
                end
            end
        end
    end
    
    -- Check win condition
    if dots_remaining == 0 then
        level = level + 1
        init_game()  -- Restart with new level (could add level progression)
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
        screen.drawText(SCREEN_WIDTH/2 - 25, SCREEN_HEIGHT/2 + 10, "Pac-Man")
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
    
    -- Draw maze
    for y = 1, #maze do
        for x = 1, #maze[y] do
            local cell = maze[y][x]
            if cell == 1 then  -- Wall
                screen.setColor(0, 0, 255)  -- Blue
                screen.drawRectF((x-1) * CELL_SIZE, (y-1) * CELL_SIZE, CELL_SIZE, CELL_SIZE)
            elseif cell == 2 then  -- Dot
                screen.setColor(255, 255, 0)  -- Yellow
                screen.drawRectF((x-1) * CELL_SIZE + 3, (y-1) * CELL_SIZE + 3, 2, 2)
            elseif cell == 3 then  -- Power pellet
                screen.setColor(255, 255, 0)  -- Yellow
                screen.drawRectF((x-1) * CELL_SIZE + 1, (y-1) * CELL_SIZE + 1, 6, 6)
            end
        end
    end
    
    -- Draw Pac-Man
    screen.setColor(255, 255, 0)  -- Yellow
    screen.drawRectF(pacman.x, pacman.y, CELL_SIZE, CELL_SIZE)
    
    -- Draw ghosts
    for _, ghost in ipairs(ghosts) do
        if ghost.mode == "frightened" then
            screen.setColor(0, 0, 255)  -- Blue when frightened
        else
            screen.setColor(ghost.color[1], ghost.color[2], ghost.color[3])
        end
        screen.drawRectF(ghost.x, ghost.y, CELL_SIZE, CELL_SIZE)
    end
    
    -- Draw UI
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
    screen.drawText(10, 25, "Lives: " .. lives)
    screen.drawText(10, 40, "Level: " .. level)
    
    if power_mode then
        screen.drawText(SCREEN_WIDTH - 80, 10, "POWER!")
    end
end

-- Main game functions
function onTick()
    update_game()
end

function onDraw()
    draw_game()
end

-- Initialize
init_game()