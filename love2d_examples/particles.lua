-- Love2D Particles Example (Adapted for ELM11)
-- Original: love.graphics.draw(particleSystem, x, y)
-- Adapted for ELM11 screen API (simulated particle system)

-- Screen constants (ELM11 display is 288x160)
SCREEN_WIDTH = 288
SCREEN_HEIGHT = 160

-- Particle system state
particles = {}
maxParticles = 50
emitterX = 144
emitterY = 80

-- Particle class
Particle = {}
Particle.__index = Particle

function Particle.new(x, y)
    local self = setmetatable({}, Particle)
    self.x = x
    self.y = y
    self.vx = (math.random() - 0.5) * 4  -- Random velocity
    self.vy = (math.random() - 0.5) * 4
    self.life = 1.0  -- Life from 1.0 to 0.0
    self.decay = 0.02 + math.random() * 0.03
    self.size = 2 + math.random() * 3
    self.color = {255, 100 + math.random() * 155, 0}  -- Orange/red colors
    return self
end

function Particle:update()
    self.x = self.x + self.vx
    self.y = self.y + self.vy
    self.life = self.life - self.decay
    self.size = self.size * 0.98  -- Shrink over time
    return self.life > 0
end

function Particle:draw()
    local alpha = self.life * 255
    screen.setColor(self.color[1], self.color[2], self.color[3])
    screen.drawRectF(self.x - self.size/2, self.y - self.size/2,
                    self.size, self.size)
end

-- Main game functions
function onTick()
    -- Move emitter with input
    if property.getBool("button_left") then emitterX = emitterX - 2 end
    if property.getBool("button_right") then emitterX = emitterX + 2 end
    if property.getBool("button_up") then emitterY = emitterY - 2 end
    if property.getBool("button_down") then emitterY = emitterY + 2 end

    -- Keep emitter on screen
    emitterX = math.max(20, math.min(268, emitterX))
    emitterY = math.max(20, math.min(140, emitterY))

    -- Create new particles
    if #particles < maxParticles and math.random() < 0.3 then
        table.insert(particles, Particle.new(emitterX, emitterY))
    end

    -- Update existing particles
    for i = #particles, 1, -1 do
        if not particles[i]:update() then
            table.remove(particles, i)
        end
    end
end

function onDraw()
    -- Clear screen (dark background)
    screen.setColor(10, 10, 30)
    screen.drawRectF(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    -- Draw particles (equivalent to love.graphics.draw(particleSystem))
    for _, particle in ipairs(particles) do
        particle:draw()
    end

    -- Draw emitter
    screen.setColor(255, 255, 255)
    screen.drawRectF(emitterX - 5, emitterY - 5, 10, 10)

    -- Draw UI
    screen.setColor(255, 255, 255)
    screen.drawText(10, 10, "Love2D Particles Demo")
    screen.drawText(10, 25, "Move emitter with arrow keys")
    screen.drawText(10, 40, string.format("Particles: %d/%d", #particles, maxParticles))
    screen.drawText(10, 55, string.format("Emitter: (%d,%d)", emitterX, emitterY))
end

-- Initialize
print("Love2D Particles example loaded")
print("Demonstrates particle systems")