-- ELM11 Rendering Library for ST7789 SPI LCD
-- Maps Stormworks draw calls to ST7789 commands

-- ST7789 SPI commands
local CMD_CASET = 0x2A  -- Column address set
local CMD_RASET = 0x2B  -- Row address set
local CMD_RAMWR = 0x2C  -- Memory write

-- Assume SPI functions from ELM11 datasheet
-- import("spi_tx") etc.

-- Initialize LCD (call once)
function initLCD()
    -- Software reset
    spi_tx(PIN_SPI_CS, 0x01)
    -- Delay (assume timer)

    -- Sleep out
    spi_tx(PIN_SPI_CS, 0x11)

    -- Set color mode to 16-bit (RGB565)
    spi_tx(PIN_SPI_CS, 0x3A)
    spi_tx(PIN_SPI_CS, 0x05)

    -- Display on
    spi_tx(PIN_SPI_CS, 0x29)

    print("LCD initialized")
end

-- Set drawing color (RGB565)
local currentColor = 0xFFFF  -- White
function setColor(r, g, b)
    -- Convert RGB to RGB565
    currentColor = ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3)
end

-- Draw filled rectangle
function drawRectF(x, y, w, h)
    -- Set column address
    spi_tx(PIN_SPI, CMD_CASET)
    spi_tx(PIN_SPI, x >> 8)
    spi_tx(PIN_SPI, x & 0xFF)
    spi_tx(PIN_SPI, (x + w - 1) >> 8)
    spi_tx(PIN_SPI, (x + w - 1) & 0xFF)

    -- Set row address
    spi_tx(PIN_SPI, CMD_RASET)
    spi_tx(PIN_SPI, y >> 8)
    spi_tx(PIN_SPI, y & 0xFF)
    spi_tx(PIN_SPI, (y + h - 1) >> 8)
    spi_tx(PIN_SPI, (y + h - 1) & 0xFF)

    -- Write pixels
    spi_tx(PIN_SPI, CMD_RAMWR)
    for i = 1, w * h do
        spi_tx(PIN_SPI, currentColor >> 8)
        spi_tx(PIN_SPI, currentColor & 0xFF)
    end
end

-- Draw triangle (filled)
function drawTriangleF(x1, y1, x2, y2, x3, y3)
    -- Simple filled triangle using rect approximation or line drawing
    -- For simplicity, use bounding box fill (not accurate)
    local minX = math.min(x1, x2, x3)
    local maxX = math.max(x1, x2, x3)
    local minY = math.min(y1, y2, y3)
    local maxY = math.max(y1, y2, y3)
    drawRectF(minX, minY, maxX - minX, maxY - minY)
end

-- Draw line (not filled)
function drawLine(x1, y1, x2, y2)
    -- Bresenham line algorithm, set pixels
    -- Simplified: draw as thin rect
    local dx = x2 - x1
    local dy = y2 - y1
    local len = math.max(math.abs(dx), math.abs(dy))
    for i = 0, len do
        local x = x1 + (dx * i) / len
        local y = y1 + (dy * i) / len
        drawRectF(math.floor(x), math.floor(y), 1, 1)
    end
end

-- Draw text (simple monospaced)
function drawText(x, y, text)
    -- Assume 4x5 font, implement pixel setting
    -- Placeholder
    print("Drawing text: " .. text .. " at " .. x .. "," .. y)
end

-- Update things for rendering (called by engine)
function update_things(M1, M8, pTng, out)
    -- Clear screen (fill with black)
    setColor(0, 0, 0)
    drawRectF(0, 0, 160, 128)

    -- Draw player (simple representation)
    if pTng then
        setColor(255, 255, 255)  -- White
        local px = math.floor(pTng[1] / 64)  -- Scale down coordinates
        local py = math.floor(pTng[2] / 64)
        drawRectF(px - 2, py - 2, 4, 4)
    end

    -- Draw other things (simplified)
    for i, thing in ipairs(M1 or {}) do
        if thing and thing[20] then  -- If alive
            setColor(255, 0, 0)  -- Red for enemies
            local tx = math.floor(thing[1] / 64)
            local ty = math.floor(thing[2] / 64)
            drawRectF(tx - 1, ty - 1, 2, 2)
        end
    end

    -- Draw HUD elements
    -- Weapon
    drawText(5, 5, "Weapon: " .. (out[1] or 0))

    -- Health
    if pTng then
        drawText(5, 15, "Health: " .. (pTng[7] or 0))
    end

    -- Ammo
    drawText(5, 25, "Ammo: " .. (out[11] or 0))
end

-- Test functions
function test_render()
    initLCD()
    setColor(255, 0, 0)  -- Red
    drawRectF(10, 10, 50, 50)
    setColor(0, 255, 0)  -- Green
    drawTriangleF(100, 10, 150, 60, 50, 60)
end