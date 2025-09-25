-- LovePong - Pong Clone for ELM11
-- Adapted from Love2D-Simple-Games repository
-- Original: https://github.com/danielnaoexiste/Love2D-Simple-Games/tree/main/LovePong

-- Game constants
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160
PADDLE_WIDTH = 4
PADDLE_HEIGHT = 16
BALL_SIZE = 3
PADDLE_SPEED = 80
BALL_SPEED = 60

-- Game state
gameState = "start"  -- "start", "serve", "play", "done"
servingPlayer = 1
winningPlayer = 0

-- Scores
player1Score = 0
player2Score = 0

-- Game objects
player1 = {
    x = 8,
    y = SCREEN_HEIGHT/2 - PADDLE_HEIGHT/2,
    width = PADDLE_WIDTH,
    height = PADDLE_HEIGHT,
    dy = 0
}

player2 = {
    x = SCREEN_WIDTH - 8 - PADDLE_WIDTH,
    y = SCREEN_HEIGHT/2 - PADDLE_HEIGHT/2,
    width = PADDLE_WIDTH,
    height = PADDLE_HEIGHT,
    dy = 0
}

ball = {
    x = SCREEN_WIDTH/2 - BALL_SIZE/2,
    y = SCREEN_HEIGHT/2 - BALL_SIZE/2,
    width = BALL_SIZE,
    height = BALL_SIZE,
    dx = 0,
    dy = 0
}

-- Game functions
function resetBall()
    ball.x = SCREEN_WIDTH/2 - BALL_SIZE/2
    ball.y = SCREEN_HEIGHT/2 - BALL_SIZE/2

    -- Random direction based on serving player
    if servingPlayer == 1 then
        ball.dx = BALL_SPEED
    else
        ball.dx = -BALL_SPEED
    end
    ball.dy = math.random(-30, 30)
end

function ballCollidesWithPaddle(paddle)
    -- Check if ball overlaps with paddle
    if ball.x > paddle.x + paddle.width or paddle.x > ball.x + ball.width then
        return false
    end
    if ball.y > paddle.y + paddle.height or paddle.y > ball.y + ball.height then
        return false
    end
    return true
end

function updatePaddle(paddle, dt)
    -- Move paddle
    if paddle.dy < 0 then
        paddle.y = math.max(0, paddle.y + paddle.dy * dt)
    else
        paddle.y = math.min(SCREEN_HEIGHT - paddle.height, paddle.y + paddle.dy * dt)
    end
end

-- Main game functions
function onTick()
    local dt = 1/60  -- Assume 60 FPS

    if gameState == "serve" then
        -- Set initial ball direction
        ball.dy = math.random(-30, 30)
        if servingPlayer == 1 then
            ball.dx = BALL_SPEED
        else
            ball.dx = -BALL_SPEED
        end
        gameState = "play"

    elseif gameState == "play" then
        -- Update ball position
        ball.x = ball.x + ball.dx * dt
        ball.y = ball.y + ball.dy * dt

        -- Ball collision with paddles
        if ballCollidesWithPaddle(player1) then
            ball.dx = -ball.dx * 1.05  -- Increase speed slightly
            ball.x = player1.x + player1.width
            ball.dy = math.random(-50, 50) * (ball.dy > 0 and 1 or -1)
        end

        if ballCollidesWithPaddle(player2) then
            ball.dx = -ball.dx * 1.05  -- Increase speed slightly
            ball.x = player2.x - ball.width
            ball.dy = math.random(-50, 50) * (ball.dy > 0 and 1 or -1)
        end

        -- Ball collision with top/bottom walls
        if ball.y <= 0 then
            ball.y = 0
            ball.dy = -ball.dy
        elseif ball.y >= SCREEN_HEIGHT - ball.height then
            ball.y = SCREEN_HEIGHT - ball.height
            ball.dy = -ball.dy
        end

        -- Ball goes off screen (scoring)
        if ball.x < 0 then
            -- Player 2 scores
            servingPlayer = 1
            player2Score = player2Score + 1
            if player2Score >= 5 then
                winningPlayer = 2
                gameState = "done"
            else
                gameState = "serve"
                resetBall()
            end
        elseif ball.x > SCREEN_WIDTH then
            -- Player 1 scores
            servingPlayer = 2
            player1Score = player1Score + 1
            if player1Score >= 5 then
                winningPlayer = 1
                gameState = "done"
            else
                gameState = "serve"
                resetBall()
            end
        end
    end

    -- Handle input
    -- Player 1 (left side) - use up/down buttons
    if property.getBool("button_up") then
        player1.dy = -PADDLE_SPEED
    elseif property.getBool("button_down") then
        player1.dy = PADDLE_SPEED
    else
        player1.dy = 0
    end

    -- Player 2 (right side) - use A/B buttons for up/down
    if property.getBool("button_a") then
        player2.dy = -PADDLE_SPEED
    elseif property.getBool("button_b") then
        player2.dy = PADDLE_SPEED
    else
        player2.dy = 0
    end

    -- Update paddle positions
    updatePaddle(player1, dt)
    updatePaddle(player2, dt)

    -- Handle start button to begin/restart game
    if property.getBool("button_start") then
        if gameState == "start" then
            gameState = "serve"
        elseif gameState == "done" then
            -- Reset game
            player1Score = 0
            player2Score = 0
            servingPlayer = 1
            winningPlayer = 0
            resetBall()
            gameState = "serve"
        end
    end
end

function onDraw()
    -- Clear screen (dark background)
    screen.setColor(20, 20, 30)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw center line
    screen.setColor(100, 100, 100)
    for y = 0, SCREEN_HEIGHT, 8 do
        screen.drawRectF(SCREEN_WIDTH/2 - 1, y, 2, 4)
    end

    -- Draw paddles
    screen.setColor(255, 255, 255)
    screen.drawRectF(player1.x, player1.y, player1.width, player1.height)
    screen.drawRectF(player2.x, player2.y, player2.width, player2.height)

    -- Draw ball
    screen.setColor(255, 255, 0)
    screen.drawRectF(ball.x, ball.y, ball.width, ball.height)

    -- Draw scores
    screen.setColor(255, 255, 255)
    screen.drawText(SCREEN_WIDTH/2 - 40, 10, tostring(player1Score))
    screen.drawText(SCREEN_WIDTH/2 + 32, 10, tostring(player2Score))

    -- Draw game state messages
    if gameState == "start" then
        screen.drawText(SCREEN_WIDTH/2 - 40, SCREEN_HEIGHT/2 - 10, "Press START")
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 + 5, "to begin!")
    elseif gameState == "serve" then
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 - 5,
                       "Player " .. servingPlayer .. " serve")
    elseif gameState == "done" then
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 - 10,
                       "Player " .. winningPlayer .. " wins!")
        screen.drawText(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT/2 + 5,
                       "Press START to restart")
    end

    -- Draw controls help
    screen.setColor(150, 150, 150)
    screen.drawText(5, SCREEN_HEIGHT - 25, "P1: UP/DOWN")
    screen.drawText(5, SCREEN_HEIGHT - 15, "P2: A/B")
    screen.drawText(5, SCREEN_HEIGHT - 5, "START: Begin")
end

-- Initialize game
resetBall()
print("LovePong loaded - Pong clone for ELM11")
print("Player 1: UP/DOWN buttons | Player 2: A/B buttons | START to begin")