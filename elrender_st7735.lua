-- ELM11 Rendering Library for ST7735S SPI LCD (1.44" 128x128)
-- Maps Stormworks draw calls to ST7735S commands

-- ST7735S SPI commands
local CMD_SWRESET = 0x01  -- Software reset
local CMD_SLPOUT = 0x11   -- Sleep out
local CMD_COLMOD = 0x3A   -- Color mode
local CMD_DISPON = 0x29   -- Display on
local CMD_CASET = 0x2A    -- Column address set
local CMD_RASET = 0x2B    -- Row address set
local CMD_RAMWR = 0x2C    -- Memory write

-- Pin assignments (adjust for your wiring)
local PIN_SPI_CS = 10    -- Chip select
local PIN_DC = 11        -- Data/Command
local PIN_RST = 12       -- Reset

-- SPI functions (assume these are available from ELM11)
-- spi_write_cmd(cmd) - Write command byte
-- spi_write_data(data) - Write data byte
-- delay(ms) - Delay in milliseconds

-- Initialize LCD (call once)
function initLCD()
    -- Hardware reset
    gpio_write(PIN_RST, 0)
    delay(100)
    gpio_write(PIN_RST, 1)
    delay(100)

    -- Software reset
    gpio_write(PIN_DC, 0)  -- Command mode
    spi_write_cmd(CMD_SWRESET)
    delay(150)

    -- Sleep out
    gpio_write(PIN_DC, 0)
    spi_write_cmd(CMD_SLPOUT)
    delay(500)

    -- Set color mode to 16-bit (RGB565)
    gpio_write(PIN_DC, 0)
    spi_write_cmd(CMD_COLMOD)
    gpio_write(PIN_DC, 1)  -- Data mode
    spi_write_data(0x05)   -- 16-bit color

    -- Display on
    gpio_write(PIN_DC, 0)
    spi_write_cmd(CMD_DISPON)
    delay(100)

    print("ST7735S LCD initialized (128x128)")
end

-- Set drawing color (RGB565)
local currentColor = 0xFFFF  -- White
function setColor(r, g, b)
    -- Convert RGB to RGB565
    currentColor = ((math.floor(r / 8) * 2048) + (math.floor(g / 4) * 32) + math.floor(b / 8))
end

-- Draw filled rectangle
function drawRectF(x, y, w, h)
    -- Ensure coordinates are within bounds
    if x < 0 then x = 0 end
    if y < 0 then y = 0 end
    if x + w > 128 then w = 128 - x end
    if y + h > 128 then h = 128 - y end

    -- Set column address
    gpio_write(PIN_DC, 0)
    spi_write_cmd(CMD_CASET)
    gpio_write(PIN_DC, 1)
    spi_write_data(x >> 8)
    spi_write_data(x & 0xFF)
    spi_write_data((x + w - 1) >> 8)
    spi_write_data((x + w - 1) & 0xFF)

    -- Set row address
    gpio_write(PIN_DC, 0)
    spi_write_cmd(CMD_RASET)
    gpio_write(PIN_DC, 1)
    spi_write_data(y >> 8)
    spi_write_data(y & 0xFF)
    spi_write_data((y + h - 1) >> 8)
    spi_write_data((y + h - 1) & 0xFF)

    -- Write pixel data
    gpio_write(PIN_DC, 0)
    spi_write_cmd(CMD_RAMWR)
    gpio_write(PIN_DC, 1)

    -- Fill rectangle with current color
    for i = 1, w * h do
        spi_write_data(currentColor >> 8)
        spi_write_data(currentColor & 0xFF)
    end
end

-- Draw line (Bresenham algorithm)
function drawLine(x1, y1, x2, y2)
    local dx = math.abs(x2 - x1)
    local dy = math.abs(y2 - y1)
    local sx = x1 < x2 and 1 or -1
    local sy = y1 < y2 and 1 or -1
    local err = dx - dy

    while true do
        -- Draw pixel at current position
        drawRectF(x1, y1, 1, 1)

        if x1 == x2 and y1 == y2 then break end

        local e2 = 2 * err
        if e2 > -dy then
            err = err - dy
            x1 = x1 + sx
        end
        if e2 < dx then
            err = err + dx
            y1 = y1 + sy
        end
    end
end

-- Draw text (simple monospace)
function drawText(x, y, text)
    -- Simple text rendering - each character is 8x8 pixels
    -- This is a basic implementation, you might want to add a font table
    local char_width = 8
    local char_height = 8

    for i = 1, #text do
        local char = text:sub(i, i)
        local char_x = x + (i - 1) * char_width

        -- Draw a simple box for each character (placeholder)
        drawRectF(char_x, y, char_width, char_height)
    end
end

-- Clear screen
function clearScreen()
    setColor(0, 0, 0)  -- Black
    drawRectF(0, 0, 128, 128)
    setColor(255, 255, 255)  -- Reset to white
end

-- Test functions
function test_render()
    print("Testing ST7735S rendering...")

    -- Clear screen
    clearScreen()
    delay(500)

    -- Draw colored rectangles
    setColor(255, 0, 0)    -- Red
    drawRectF(10, 10, 30, 30)

    setColor(0, 255, 0)    -- Green
    drawRectF(50, 10, 30, 30)

    setColor(0, 0, 255)    -- Blue
    drawRectF(90, 10, 30, 30)

    -- Draw lines
    setColor(255, 255, 255)  -- White
    drawLine(10, 50, 118, 50)
    drawLine(64, 10, 64, 118)

    -- Draw text
    drawText(20, 60, "ST7735S")

    print("ST7735S test complete")
end