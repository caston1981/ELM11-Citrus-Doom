-- ST7735S LCD Test Script for ELM11 REPL
-- Test basic ST7735S 128x128 TFT LCD functionality

dofile("elrender_st7735.lua")

print("ST7735S LCD Test")
print("================")
print("Testing 1.44\" 128x128 ST7735S TFT LCD")
print("")

-- Initialize LCD
print("Initializing LCD...")
initLCD()
print("LCD initialized successfully!")
print("")

-- Test basic functions
print("Running basic tests...")

-- Clear screen test
print("1. Clearing screen...")
clearScreen()
delay(1000)

-- Color test
print("2. Testing colors...")
setColor(255, 0, 0)    -- Red
drawRectF(10, 10, 20, 20)
delay(500)

setColor(0, 255, 0)    -- Green
drawRectF(40, 10, 20, 20)
delay(500)

setColor(0, 0, 255)    -- Blue
drawRectF(70, 10, 20, 20)
delay(500)

setColor(255, 255, 0)  -- Yellow
drawRectF(100, 10, 20, 20)
delay(500)

-- Line test
print("3. Testing lines...")
setColor(255, 255, 255)  -- White
drawLine(10, 40, 118, 40)  -- Horizontal line
drawLine(64, 10, 64, 118)  -- Vertical line
delay(1000)

-- Rectangle test
print("4. Testing rectangles...")
setColor(255, 0, 255)  -- Magenta
drawRectF(20, 50, 30, 20)
delay(500)

setColor(0, 255, 255)  -- Cyan
drawRectF(60, 50, 30, 20)
delay(500)

-- Text test (basic)
print("5. Testing text rendering...")
setColor(255, 255, 255)  -- White
drawText(30, 80, "ST7735S")
delay(1000)

-- Animation test
print("6. Testing animation...")
for i = 1, 10 do
    setColor(255, 255, 255)
    drawRectF(50 + i*2, 100, 10, 10)
    delay(200)
    setColor(0, 0, 0)  -- Erase
    drawRectF(50 + i*2, 100, 10, 10)
end

print("")
print("ST7735S LCD test completed!")
print("If you can see colors, lines, and shapes on your display,")
print("then the ST7735S is working correctly.")
print("")
print("Available test functions:")
print("- clearScreen() - Clear the display")
print("- setColor(r, g, b) - Set drawing color")
print("- drawRectF(x, y, w, h) - Draw filled rectangle")
print("- drawLine(x1, y1, x2, y2) - Draw line")
print("- drawText(x, y, text) - Draw text")
print("- test_render() - Run full test suite")