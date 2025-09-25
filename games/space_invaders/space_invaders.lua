-- Space Invaders Game for ELM11
-- A simplified implementation of the classic Space Invaders game

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
PLAYER_WIDTH = 20
PLAYER_HEIGHT = 8
PLAYER_SPEED = 3
BULLET_WIDTH = 2
BULLET_HEIGHT = 6
BULLET_SPEED = 4
ALIEN_WIDTH = 12
ALIEN_HEIGHT = 8
ALIEN_ROWS = 3
ALIEN_COLS = 6
ALIEN_SPEED = 1
ALIEN_DROP = 8
ALIEN_BULLET_CHANCE = 0.005  -- Chance per alien per frame to shoot

-- Game state
player = {x = SCREEN_WIDTH/2 - PLAYER_WIDTH/2, y = SCREEN_HEIGHT - 20}
player_bullets = {}
alien_bullets = {}
aliens = {}
score = 0
game_over = false
game_started = false
direction = 1  -- 1 for right, -1 for left
move_timer = 0
move_delay = 30  -- Frames between alien movements

-- Input handling
function get_input()
    -- Use ELM11 input properties (adjust based on your setup)
    local left = property.getBool("Left") or false
    local right = property.getBool("Right") or false
    local shoot = property.getBool("Shoot") or property.getBool("Start") or false
    
    return {left = left, right = right, shoot = shoot}
end

-- Initialize game
function init_game()
    -- Initialize player
    player = {x = SCREEN_WIDTH/2 - PLAYER_WIDTH/2, y = SCREEN_HEIGHT - 20}
    player_bullets = {}
    alien_bullets = {}
    score = 0
    game_over = false
    game_started = false
    direction = 1
    move_timer = 0
    
    -- Initialize aliens
    aliens = {}
    for row = 0, ALIEN_ROWS - 1 do
        for col = 0, ALIEN_COLS - 1 do
            table.insert(aliens, {
                x = 40 + col * (ALIEN_WIDTH + 10),
                y = 30 + row * (ALIEN_HEIGHT + 10),
                alive = true
            })
        end
    end
end

-- Check collision between two rectangles
function check_collision(a, b)
    return a.x < b.x + b.width and
           a.x + a.width > b.x and
           a.y < b.y + b.height and
           a.y + a.height > b.y
end

-- Update game logic
function update_game()
    if game_over then return end
    
    local input = get_input()
    
    -- Start game
    if not game_started and input.shoot then
        game_started = true
        return
    end
    
    if not game_started then return end
    
    -- Move player
    if input.left and player.x > 0 then
        player.x = player.x - PLAYER_SPEED
    elseif input.right and player.x < SCREEN_WIDTH - PLAYER_WIDTH then
        player.x = player.x + PLAYER_SPEED
    end
    
    -- Player shooting
    if input.shoot and #player_bullets < 3 then  -- Limit to 3 bullets on screen
        table.insert(player_bullets, {
            x = player.x + PLAYER_WIDTH/2 - BULLET_WIDTH/2,
            y = player.y,
            width = BULLET_WIDTH,
            height = BULLET_HEIGHT
        })
    end
    
    -- Update player bullets
    for i = #player_bullets, 1, -1 do
        local bullet = player_bullets[i]
        bullet.y = bullet.y - BULLET_SPEED
        
        -- Remove bullets that go off screen
        if bullet.y < 0 then
            table.remove(player_bullets, i)
        else
            -- Check collision with aliens
            for j = #aliens, 1, -1 do
                local alien = aliens[j]
                if alien.alive and check_collision(bullet, {
                    x = alien.x, y = alien.y, 
                    width = ALIEN_WIDTH, height = ALIEN_HEIGHT
                }) then
                    alien.alive = false
                    table.remove(player_bullets, i)
                    score = score + 10
                    break
                end
            end
        end
    end
    
    -- Move aliens
    move_timer = move_timer + 1
    if move_timer >= move_delay then
        move_timer = 0
        
        -- Check if aliens need to change direction
        local should_change = false
        for _, alien in ipairs(aliens) do
            if alien.alive then
                if direction == 1 and alien.x + ALIEN_WIDTH >= SCREEN_WIDTH - 10 then
                    should_change = true
                    break
                elseif direction == -1 and alien.x <= 10 then
                    should_change = true
                    break
                end
            end
        end
        
        if should_change then
            direction = -direction
            -- Move aliens down
            for _, alien in ipairs(aliens) do
                if alien.alive then
                    alien.y = alien.y + ALIEN_DROP
                    -- Check if aliens reached bottom
                    if alien.y + ALIEN_HEIGHT >= player.y then
                        game_over = true
                        return
                    end
                end
            end
        else
            -- Move aliens horizontally
            for _, alien in ipairs(aliens) do
                if alien.alive then
                    alien.x = alien.x + direction * ALIEN_SPEED
                end
            end
        end
    end
    
    -- Alien shooting
    for _, alien in ipairs(aliens) do
        if alien.alive and math.random() < ALIEN_BULLET_CHANCE then
            table.insert(alien_bullets, {
                x = alien.x + ALIEN_WIDTH/2 - BULLET_WIDTH/2,
                y = alien.y + ALIEN_HEIGHT,
                width = BULLET_WIDTH,
                height = BULLET_HEIGHT
            })
        end
    end
    
    -- Update alien bullets
    for i = #alien_bullets, 1, -1 do
        local bullet = alien_bullets[i]
        bullet.y = bullet.y + BULLET_SPEED * 0.7  -- Slower alien bullets
        
        -- Check collision with player
        if check_collision(bullet, {
            x = player.x, y = player.y,
            width = PLAYER_WIDTH, height = PLAYER_HEIGHT
        }) then
            game_over = true
            return
        end
        
        -- Remove bullets that go off screen
        if bullet.y > SCREEN_HEIGHT then
            table.remove(alien_bullets, i)
        end
    end
    
    -- Check if all aliens are dead
    local aliens_alive = 0
    for _, alien in ipairs(aliens) do
        if alien.alive then
            aliens_alive = aliens_alive + 1
        end
    end
    if aliens_alive == 0 then
        -- All aliens defeated - could add level progression here
        init_game()  -- Restart for now
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
        screen.drawText(SCREEN_WIDTH/2 - 60, SCREEN_HEIGHT/2 - 10, "Press SHOOT to start")
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 + 10, "Space Invaders")
        return
    end
    
    if game_over then
        -- Draw game over screen
        screen.setColor(255, 0, 0)
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "GAME OVER")
        screen.drawText(SCREEN_WIDTH/2 - 35, SCREEN_HEIGHT/2 + 10, "Score: " .. score)
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 + 30, "Press SHOOT to restart")
        return
    end
    
    -- Draw player
    screen.setColor(0, 255, 0)  -- Green
    screen.drawRectF(player.x, player.y, PLAYER_WIDTH, PLAYER_HEIGHT)
    
    -- Draw player bullets
    screen.setColor(255, 255, 0)  -- Yellow
    for _, bullet in ipairs(player_bullets) do
        screen.drawRectF(bullet.x, bullet.y, bullet.width, bullet.height)
    end
    
    -- Draw aliens
    screen.setColor(255, 0, 0)  -- Red
    for _, alien in ipairs(aliens) do
        if alien.alive then
            screen.drawRectF(alien.x, alien.y, ALIEN_WIDTH, ALIEN_HEIGHT)
        end
    end
    
    -- Draw alien bullets
    screen.setColor(255, 0, 255)  -- Magenta
    for _, bullet in ipairs(alien_bullets) do
        screen.drawRectF(bullet.x, bullet.y, bullet.width, bullet.height)
    end
    
    -- Draw score
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Score: " .. score)
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