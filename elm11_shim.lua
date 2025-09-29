-- ELM11 Compatibility Shim for LÖVE
-- Provides ELM11 APIs on top of LÖVE

screen = {}
function screen.setColor(r, g, b)
    love.graphics.setColor(r/255, g/255, b/255)
end
function screen.drawText(x, y, text)
    love.graphics.print(text, x, y)
end
function screen.drawRectF(x, y, w, h)
    love.graphics.rectangle("fill", x, y, w, h)
end
function screen.clear()
    love.graphics.clear()
end

property = {}
function property.getBool(key)
    local loveKey = key:gsub("button%.", "")
    return love.keyboard.isDown(loveKey)
end

local gameLoaded = false
function love.load()
    if arg[2] then
        dofile(arg[2])
        gameLoaded = true
        if onLoad then onLoad() end
    end
end

function love.update(dt)
    if gameLoaded and onTick then
        onTick(dt)
    end
end

function love.draw()
    if gameLoaded and onDraw then
        onDraw()
    end
end