-- Pong Game for ELM11
-- A simple implementation of the classic Pong game

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
PADDLE_WIDTH = 8
PADDLE_HEIGHT = 32
BALL_SIZE = 6
PADDLE_SPEED = 3
BALL_SPEED = 2

-- Game state
player_paddle = {x = 10, y = SCREEN_HEIGHT/2 - PADDLE_HEIGHT/2}
ai_paddle = {x = SCREEN_WIDTH - 10 - PADDLE_WIDTH, y = SCREEN_HEIGHT/2 - PADDLE_HEIGHT/2}
ball = {x = SCREEN_WIDTH/2, y = SCREEN_HEIGHT/2, dx = BALL_SPEED, dy = BALL_SPEED}
player_score = 0
ai_score = 0
game_started = false

-- Input handling
function get_input()
    -- Use ELM11 input properties (adjust based on your setup)
    local up = property.getBool("Up") or false
    local down = property.getBool("Down") or false
    local start = property.getBool("Start") or false
    
    return {up = up, down = down, start = start}
end

-- Initialize game
function init_game()
    player_paddle = {x = 10, y = SCREEN_HEIGHT/2 - PADDLE_HEIGHT/2}
    ai_paddle = {x = SCREEN_WIDTH - 10 - PADDLE_WIDTH, y = SCREEN_HEIGHT/2 - PADDLE_HEIGHT/2}
    ball = {x = SCREEN_WIDTH/2, y = SCREEN_HEIGHT/2, dx = BALL_SPEED, dy = BALL_SPEED}
    player_score = 0
    ai_score = 0
    game_started = false
end

-- Update game logic
function update_game()
    local input = get_input()
    
    -- Start game
    if not game_started and input.start then
        game_started = true
        return
    end
    
    if not game_started then return end
    
    -- Move player paddle
    if input.up and player_paddle.y > 0 then
        player_paddle.y = player_paddle.y - PADDLE_SPEED
    elseif input.down and player_paddle.y < SCREEN_HEIGHT - PADDLE_HEIGHT then
        player_paddle.y = player_paddle.y + PADDLE_SPEED
    end
    
    -- Simple AI for opponent paddle
    if ball.y < ai_paddle.y + PADDLE_HEIGHT/2 and ai_paddle.y > 0 then
        ai_paddle.y = ai_paddle.y - PADDLE_SPEED * 0.8  -- Slightly slower AI
    elseif ball.y > ai_paddle.y + PADDLE_HEIGHT/2 and ai_paddle.y < SCREEN_HEIGHT - PADDLE_HEIGHT then
        ai_paddle.y = ai_paddle.y + PADDLE_SPEED * 0.8
    end
    
    -- Move ball
    ball.x = ball.x + ball.dx
    ball.y = ball.y + ball.dy
    
    -- Ball collision with top/bottom walls
    if ball.y <= 0 or ball.y >= SCREEN_HEIGHT - BALL_SIZE then
        ball.dy = -ball.dy
        ball.y = math.max(0, math.min(SCREEN_HEIGHT - BALL_SIZE, ball.y))
    end
    
    -- Ball collision with paddles
    -- Player paddle
    if ball.dx < 0 and ball.x <= player_paddle.x + PADDLE_WIDTH and 
       ball.x + BALL_SIZE >= player_paddle.x and 
       ball.y + BALL_SIZE >= player_paddle.y and 
       ball.y <= player_paddle.y + PADDLE_HEIGHT then
        ball.dx = -ball.dx
        ball.x = player_paddle.x + PADDLE_WIDTH
        -- Add some angle based on where it hit the paddle
        local hit_pos = (ball.y + BALL_SIZE/2 - player_paddle.y) / PADDLE_HEIGHT
        ball.dy = BALL_SPEED * (hit_pos - 0.5) * 2
    end
    
    -- AI paddle
    if ball.dx > 0 and ball.x + BALL_SIZE >= ai_paddle.x and 
       ball.x <= ai_paddle.x + PADDLE_WIDTH and 
       ball.y + BALL_SIZE >= ai_paddle.y and 
       ball.y <= ai_paddle.y + PADDLE_HEIGHT then
        ball.dx = -ball.dx
        ball.x = ai_paddle.x - BALL_SIZE
        -- Add some angle based on where it hit the paddle
        local hit_pos = (ball.y + BALL_SIZE/2 - ai_paddle.y) / PADDLE_HEIGHT
        ball.dy = BALL_SPEED * (hit_pos - 0.5) * 2
    end
    
    -- Score points
    if ball.x < 0 then
        ai_score = ai_score + 1
        reset_ball()
    elseif ball.x > SCREEN_WIDTH then
        player_score = player_score + 1
        reset_ball()
    end
end

-- Reset ball to center after scoring
function reset_ball()
    ball.x = SCREEN_WIDTH/2
    ball.y = SCREEN_HEIGHT/2
    ball.dx = BALL_SPEED * (math.random(0, 1) * 2 - 1)  -- Random direction
    ball.dy = BALL_SPEED * (math.random(0, 1) * 2 - 1)
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
        screen.drawText(SCREEN_WIDTH/2 - 25, SCREEN_HEIGHT/2 + 10, "Pong")
        return
    end
    
    -- Draw center line
    screen.setColor(128, 128, 128)
    for y = 0, SCREEN_HEIGHT, 20 do
        screen.drawRectF(SCREEN_WIDTH/2 - 1, y, 2, 10)
    end
    
    -- Draw paddles
    screen.setColor(255, 255, 255)
    screen.drawRectF(player_paddle.x, player_paddle.y, PADDLE_WIDTH, PADDLE_HEIGHT)
    screen.drawRectF(ai_paddle.x, ai_paddle.y, PADDLE_WIDTH, PADDLE_HEIGHT)
    
    -- Draw ball
    screen.setColor(255, 255, 0)
    screen.drawRectF(ball.x, ball.y, BALL_SIZE, BALL_SIZE)
    
    -- Draw scores
    screen.setColor(255, 255, 255)
    screen.drawText(SCREEN_WIDTH/4 - 10, 10, tostring(player_score))
    screen.drawText(3*SCREEN_WIDTH/4 - 10, 10, tostring(ai_score))
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