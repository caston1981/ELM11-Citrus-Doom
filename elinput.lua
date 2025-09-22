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