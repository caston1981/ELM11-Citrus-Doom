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
    -- Send init commands to ST7789
    -- Example: spi_tx(PIN_SPI, 0x11)  -- Sleep out
    -- This needs full init sequence for ST7789
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

-- Test functions
function test_render()
    initLCD()
    setColor(255, 0, 0)  -- Red
    drawRectF(10, 10, 50, 50)
    setColor(0, 255, 0)  -- Green
    drawTriangleF(100, 10, 150, 60, 50, 60)
end