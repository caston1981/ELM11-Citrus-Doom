-- ELM11 Arduino Joystick Shield Input Library
-- Reads PS2 joystick and buttons via I2C
-- Compatible with "Gamepads JoyStick Keypad Shield" module

-- Pin assignments (adjust to your wiring)
local PIN_I2C_SDA = 10  -- Example pin for SDA
local PIN_I2C_SCL = 11  -- Example pin for SCL

-- Joystick Shield I2C address (may need to be determined from module)
local JOYSTICK_ADDR = 0x20  -- Common address, adjust if needed

-- Initialize I2C and Joystick Shield
function initJoystickShield()
    -- Configure pins as I2C
    set_io_type_cfg(PIN_I2C_SDA, I2C)
    set_io_type_cfg(PIN_I2C_SCL, I2C)

    -- Initialize the shield (if needed)
    -- Some shields may require initialization commands
    print("Joystick Shield initialized")
end

-- Read Joystick Shield data
function readJoystickShield()
    -- Request data from the shield
    -- The exact protocol depends on the specific shield implementation
    -- This is a template based on typical I2C joystick shields

    -- Read analog joystick values (typically 2 bytes for X/Y)
    local joyData = i2c_rx(PIN_I2C_SDA, JOYSTICK_ADDR, 2)
    local joyX = joyData and joyData[1] or 128
    local joyY = joyData and joyData[2] or 128

    -- Read button states (typically 1 byte for multiple buttons)
    local buttonData = i2c_rx(PIN_I2C_SDA, JOYSTICK_ADDR + 1, 1)
    local buttons = buttonData and buttonData[1] or 0

    -- Parse individual buttons (adjust bit mapping based on shield)
    local button1 = (buttons & 0x01) ~= 0  -- Button A
    local button2 = (buttons & 0x02) ~= 0  -- Button B
    local button3 = (buttons & 0x04) ~= 0  -- Button C
    local button4 = (buttons & 0x08) ~= 0  -- Button D
    local button5 = (buttons & 0x10) ~= 0  -- Small button 1
    local button6 = (buttons & 0x20) ~= 0  -- Small button 2

    return {
        joyX = joyX,
        joyY = joyY,
        button1 = button1,
        button2 = button2,
        button3 = button3,
        button4 = button4,
        button5 = button5,
        button6 = button6
    }
end

-- Map to Doom controls (customizable mapping)
function getDoomInputFromShield()
    local data = readJoystickShield()
    if data then
        return {
            moveX = (data.joyX - 128) / 128,  -- -1 to 1
            moveY = (data.joyY - 128) / 128,
            shoot = data.button1,              -- Primary shoot button
            interact = data.button2,           -- Interact button
            weaponUp = data.button3,           -- Weapon switch up
            weaponDown = data.button4,         -- Weapon switch down
            -- Additional buttons available for other functions
            button5 = data.button5,
            button6 = data.button6
        }
    end
    return {moveX=0, moveY=0, shoot=false, interact=false}
end

-- Test function
function test_joystick_shield()
    initJoystickShield()
    local input = getDoomInputFromShield()
    print("Move X: " .. input.moveX .. ", Y: " .. input.moveY .. ", Shoot: " .. tostring(input.shoot))
end