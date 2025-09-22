-- ELM11 Input and Sound Library
-- GPIO for buttons, PWM for audio, or Wii Nunchuk via I2C

-- Constants from datasheet
-- Assume imported functions
-- import("set_io_type_cfg")
-- import("get_gpio")
-- import("set_gpio")
-- import("set_pwm")

-- Pin assignments (example, adjust for your setup)
local PIN_BUTTON_UP = 1
local PIN_BUTTON_DOWN = 2
local PIN_BUTTON_LEFT = 3
local PIN_BUTTON_RIGHT = 4
local PIN_BUTTON_SHOOT = 5
local PIN_SPEAKER = 6

-- Initialize pins
function initInputSound(useNunchuk)
    if useNunchuk then
        dofile("elnunchuk.lua")
        initNunchuk()
    else
        -- Configure buttons as GPIO_IN
        set_io_type_cfg(PIN_BUTTON_UP, GPIO_IN)
        set_io_type_cfg(PIN_BUTTON_DOWN, GPIO_IN)
        set_io_type_cfg(PIN_BUTTON_LEFT, GPIO_IN)
        set_io_type_cfg(PIN_BUTTON_RIGHT, GPIO_IN)
        set_io_type_cfg(PIN_BUTTON_SHOOT, GPIO_IN)
    end

    -- Configure speaker as PWM
    set_io_type_cfg(PIN_SPEAKER, PWM)

    print("Input and sound initialized")
end

-- Read button states (for GPIO)
function getButtonUp() return get_gpio(PIN_BUTTON_UP) == HIGH end
function getButtonDown() return get_gpio(PIN_BUTTON_DOWN) == HIGH end
function getButtonLeft() return get_gpio(PIN_BUTTON_LEFT) == HIGH end
function getButtonRight() return get_gpio(PIN_BUTTON_RIGHT) == HIGH end
function getButtonShoot() return get_gpio(PIN_BUTTON_SHOOT) == HIGH end

-- Or use Nunchuk
function getDoomInput()
    return getDoomInput()  -- From elnunchuk.lua
end

-- Play sound (simple tone via PWM)
function playSound(frequency, duration)
    -- Set PWM frequency
    -- Assume set_pwm takes duty cycle 0-256
    set_pwm(PIN_SPEAKER, 128)  -- 50% duty
    -- Delay for duration (need timer)
    -- In real code, use timers or loops
    print("Playing sound at " .. frequency .. " Hz for " .. duration .. " ms")
end

-- Stop sound
function stopSound()
    set_pwm(PIN_SPEAKER, 0)
end

-- Test functions
function test_input(useNunchuk)
    initInputSound(useNunchuk)
    if useNunchuk then
        test_nunchuk()
    else
        print("Up: " .. tostring(getButtonUp()))
        print("Shoot: " .. tostring(getButtonShoot()))
    end
end

function test_sound()
    playSound(1000, 500)  -- 1kHz for 0.5s
end

-- Get input values (adapted for Doom controls)
-- Returns: moveX, moveY, look, shoot, interact
function get_input()
    local moveX = 0
    local moveY = 0
    local look = 0
    local shoot = false
    local interact = false

    if useNunchuk then
        -- Use Nunchuk input
        local nunchuk_data = getDoomInput()
        moveX = nunchuk_data.moveX
        moveY = nunchuk_data.moveY
        look = nunchuk_data.look
        shoot = nunchuk_data.shoot
        interact = nunchuk_data.interact
    else
        -- Use GPIO buttons
        if getButtonUp() then moveY = moveY + 1 end
        if getButtonDown() then moveY = moveY - 1 end
        if getButtonLeft() then moveX = moveX - 1 end
        if getButtonRight() then moveX = moveX + 1 end
        shoot = getButtonShoot()
        -- Interact could be another button, for now use shoot + up or something
        interact = false  -- Placeholder
    end

    return moveX, moveY, look, shoot, interact
end

-- Get button state by number (for weapon switching)
function get_button(button_num)
    if useNunchuk then
        -- Map Nunchuk buttons to weapon slots
        local nunchuk_data = getDoomInput()
        if button_num == 1 and nunchuk_data.buttonC then return true end
        if button_num == 2 and nunchuk_data.buttonZ then return true end
        -- Add more mappings as needed
        return false
    else
        -- Map GPIO buttons to weapon numbers
        -- This is simplified - in practice you'd need more buttons
        return false
    end
end

-- Global flag for input mode
local useNunchuk = true  -- Set to true for Nunchuk, false for GPIO