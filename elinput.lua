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
    if inputMode == "nunchuk" then
        dofile("elnunchuk.lua")
        initNunchuk()
    elseif inputMode == "joystick" then
        dofile("eljoystick.lua")
        initJoystickShield()
    else -- gpio
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
    if inputMode == "nunchuk" then
        test_nunchuk()
    elseif inputMode == "joystick" then
        test_joystick_shield()
    else
        test_gpio_buttons()
    end
end

function test_gpio_buttons()
    print("Testing GPIO buttons...")
    print("UP: " .. tostring(getButtonUp()))
    print("DOWN: " .. tostring(getButtonDown()))
    print("LEFT: " .. tostring(getButtonLeft()))
    print("RIGHT: " .. tostring(getButtonRight()))
    print("SHOOT: " .. tostring(getButtonShoot()))
    print("GPIO test complete.")
end

function test_sound()
    playSound(1000, 500)  -- 1kHz for 0.5s
end

-- Get input values (adapted for Doom controls)
-- Returns: moveX, moveY, look, shoot, interact
function get_input()
    if inputMode == "nunchuk" then
        return get_input_nunchuk()
    elseif inputMode == "joystick" then
        return get_input_joystick()
    else -- gpio
        return get_input_gpio()
    end
end

-- Get button state by number (for weapon switching)
function get_button(button_num)
    if inputMode == "nunchuk" then
        return get_button_nunchuk(button_num)
    elseif inputMode == "joystick" then
        return get_button_joystick(button_num)
    else -- gpio
        return get_button_gpio(button_num)
    end
end

-- Global flag for input mode
local inputMode = "joystick"  -- Options: "nunchuk", "joystick", "gpio"

-- ELM11 Input Module API wrapper for Citrus Doom compatibility
-- Provides input.getNumber and input.getBool functions

local input = {}

-- Input channel mappings to Doom controls
local channel_map = {
    [1] = "weapon",      -- Weapon selection (analog)
    [2] = "switch",      -- Switch interaction (analog)
    [3] = "health",      -- Health/look direction (analog)
    [4] = "interact",    -- Interact button (analog, negative when pressed)
    [5] = "moveX",       -- Movement X (analog)
    [6] = "moveY",       -- Movement Y (analog)
    [10] = "level",      -- Level change (analog)
    [11] = "map",        -- Map toggle (boolean)
    [31] = "shoot",      -- Shoot button (boolean)
    [32] = "loading"     -- Loading/data flag (boolean)
}

-- Get number input (analog values)
function input.getNumber(channel)
    local control = channel_map[channel]
    if not control then return 0 end

    local moveX, moveY, look, shoot, interact = get_input()

    if control == "weapon" then
        -- Weapon selection - map to weapon number
        return 1 -- Default to pistol, would need button mapping
    elseif control == "switch" then
        return 0 -- Switch interaction
    elseif control == "health" then
        return look -- Look direction affects this in Doom
    elseif control == "interact" then
        return interact and -1 or 0 -- Negative when interacting
    elseif control == "moveX" then
        return moveX
    elseif control == "moveY" then
        return moveY
    elseif control == "level" then
        return 0 -- Level changes not implemented yet
    end

    return 0
end

-- Get boolean input (digital values)
function input.getBool(channel)
    local control = channel_map[channel]
    if not control then return false end

    local moveX, moveY, look, shoot, interact = get_input()

    if control == "map" then
        return false -- Map toggle, could map to a button
    elseif control == "shoot" then
        return shoot
    elseif control == "loading" then
        return false -- Loading flag
    end

    return false
end

-- Initialize input system
function input.init(use_nunchuk)
    useNunchuk = use_nunchuk
    initInputSound(useNunchuk)
end

-- Arduino Joystick Shield support
function get_input_joystick()
    local input = getDoomInputFromShield()
    return input.moveX, input.moveY, 0, input.shoot, input.interact -- look=0 for now
end

function get_button_joystick(button_num)
    local input = getDoomInputFromShield()
    if button_num == 1 then return input.weaponUp
    elseif button_num == 2 then return input.weaponDown
    elseif button_num == 3 then return input.button5
    elseif button_num == 4 then return input.button6
    end
    return false
end

-- GPIO input functions
function get_input_gpio()
    -- Map button presses to Doom controls
    local up = getButtonUp()
    local down = getButtonDown()
    local left = getButtonLeft()
    local right = getButtonRight()
    local shoot = getButtonShoot()
    
    -- Convert to analog values (-1 to 1)
    local moveX = 0
    local moveY = 0
    
    if left then moveX = -1 end
    if right then moveX = 1 end
    if up then moveY = 1 end
    if down then moveY = -1 end
    
    -- No look control with basic buttons, interact = shoot for now
    return moveX, moveY, 0, shoot, shoot
end

function get_button_gpio(button_num)
    -- Map button numbers to GPIO pins
    if button_num == 1 then return getButtonUp()
    elseif button_num == 2 then return getButtonDown()
    elseif button_num == 3 then return getButtonLeft()
    elseif button_num == 4 then return getButtonRight()
    elseif button_num == 5 then return getButtonShoot()
    end
    return false
end