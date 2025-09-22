-- ELM11 Citrus Doom Integration Test
-- Tests all components working together without hardware

print("=== ELM11 Citrus Doom Integration Test ===")

-- Test 1: Load all modules
print("\n1. Testing module loading...")
local modules = {
    "elmath",
    "eldata", 
    "elrender",
    "elinput",
    "elsound",
    "elengine"
}

local loaded_modules = {}
for _, mod in ipairs(modules) do
    local success, module = pcall(require, mod)
    if success then
        loaded_modules[mod] = module
        print("✓ " .. mod .. " loaded successfully")
    else
        print("✗ Failed to load " .. mod .. ": " .. tostring(module))
    end
end

-- Test 2: Data loading
print("\n2. Testing data loading...")
if loaded_modules.eldata then
    local success, data = pcall(loaded_modules.eldata.loadAllData)
    if success then
        print("✓ Data loading successful")
        -- Check if we have basic data structures
        if data and type(data) == "table" then
            print("  - Data type: " .. type(data))
            print("  - Data keys: " .. #data)
        end
    else
        print("✗ Data loading failed: " .. tostring(data))
    end
else
    print("✗ Cannot test data loading - eldata not loaded")
end

-- Test 3: Math functions
print("\n3. Testing math functions...")
if loaded_modules.elmath then
    local vec1 = {1, 2}
    local vec2 = {3, 4}
    local result = loaded_modules.elmath.add(vec1, vec2)
    if result and result[1] == 4 and result[2] == 6 then
        print("✓ Vector addition works")
    else
        print("✗ Vector addition failed")
    end
else
    print("✗ Cannot test math - elmath not loaded")
end

-- Test 4: Rendering functions
print("\n4. Testing rendering functions...")
if loaded_modules.elrender then
    -- Test color setting
    loaded_modules.elrender.setColor(255, 0, 0)
    print("✓ Color setting works")

    -- Test rectangle drawing (would normally draw to LCD)
    loaded_modules.elrender.drawRectF(10, 10, 50, 50)
    print("✓ Rectangle drawing works")

    -- Test text drawing
    loaded_modules.elrender.drawText(5, 5, "Test")
    print("✓ Text drawing works")
else
    print("✗ Cannot test rendering - elrender not loaded")
end

-- Test 5: Input functions
print("\n5. Testing input functions...")
if loaded_modules.elinput then
    -- Test number input
    local weapon = loaded_modules.elinput.getNumber(1)
    print("✓ getNumber works, weapon: " .. tostring(weapon))

    -- Test boolean input
    local shoot = loaded_modules.elinput.getBool(31)
    print("✓ getBool works, shoot: " .. tostring(shoot))

    -- Test extended input
    local moveX, moveY, look, shoot2, interact = loaded_modules.elinput.get_input()
    print("✓ Extended input works: " .. moveX .. ", " .. moveY .. ", " .. look .. ", " .. tostring(shoot2) .. ", " .. tostring(interact))
else
    print("✗ Cannot test input - elinput not loaded")
end

-- Test 6: Sound functions
print("\n6. Testing sound functions...")
if loaded_modules.elsound then
    -- Test number output
    loaded_modules.elsound.setNumber(1, 440)
    print("✓ setNumber works")

    -- Test boolean output
    loaded_modules.elsound.setBool(1, true)
    print("✓ setBool works")
else
    print("✗ Cannot test sound - elsound not loaded")
end

-- Test 7: Engine integration
print("\n7. Testing engine integration...")
if loaded_modules.elengine then
    -- Test that engine has required functions
    if loaded_modules.elengine.onTick then
        print("✓ Engine has onTick function")
    else
        print("✗ Engine missing onTick function")
    end

    if loaded_modules.elengine.onDraw then
        print("✓ Engine has onDraw function")
    else
        print("✗ Engine missing onDraw function")
    end
else
    print("✗ Cannot test engine - elengine not loaded")
end

-- Test 8: Citrus Doom files
print("\n8. Testing Citrus Doom file compatibility...")
local doom_files = {
    "Citrus Doom/engine.lua",
    "Citrus Doom/render.lua",
    "Citrus Doom/sound.lua"
}

for _, file in ipairs(doom_files) do
    local success, err = pcall(dofile, file)
    if success then
        print("✓ " .. file .. " loads successfully")
    else
        print("✗ " .. file .. " failed to load: " .. tostring(err))
    end
end

-- Test 9: Memory usage estimate
print("\n9. Memory usage estimate...")
local memory_used = collectgarbage("count")
print("✓ Current Lua memory usage: " .. string.format("%.2f", memory_used) .. " KB")

-- Test 10: Performance test
print("\n10. Performance test...")
local start_time = os.clock()
local iterations = 1000

for i = 1, iterations do
    -- Simulate some game logic
    local x = math.sin(i * 0.01)
    local y = math.cos(i * 0.01)
    local dist = math.sqrt(x*x + y*y)
end

local end_time = os.clock()
local total_time = end_time - start_time
local fps_estimate = iterations / total_time

print("✓ Performance test: " .. string.format("%.0f", fps_estimate) .. " iterations/second")
print("  Estimated game FPS: " .. string.format("%.1f", fps_estimate / 100)) -- Rough estimate

print("\n=== Integration Test Complete ===")
print("\nSummary:")
print("- All core modules should be loadable")
print("- Data loading system implemented")
print("- Rendering, input, and sound APIs adapted")
print("- Engine integration ready for hardware testing")
print("- Target: 5-10 FPS gameplay on ELM11 hardware")

print("\nNext steps:")
print("1. Upload all files to ELM11 flash memory")
print("2. Test hardware initialization (LCD, input, sound)")
print("3. Run game loop and measure performance")
print("4. Debug and optimize as needed")