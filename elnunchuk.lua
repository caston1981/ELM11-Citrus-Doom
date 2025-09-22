-- ELM11 Wii Nunchuk Input Library
-- Reads analog stick and buttons via I2C

-- Pin assignments (adjust to your wiring)
local PIN_I2C_SDA = 10  -- Example pin for SDA
local PIN_I2C_SCL = 11  -- Example pin for SCL

-- Nunchuk I2C address
local NUNCHUK_ADDR = 0x52

-- Initialize I2C and Nunchuk
function initNunchuk()
    -- Configure pins as I2C
    set_io_type_cfg(PIN_I2C_SDA, I2C)
    set_io_type_cfg(PIN_I2C_SCL, I2C)

    -- Initialize Nunchuk (send 0x00 twice)
    i2c_tx(PIN_I2C_SDA, NUNCHUK_ADDR, 0x00)
    i2c_tx(PIN_I2C_SDA, NUNCHUK_ADDR, 0x00)

    print("Nunchuk initialized")
end

-- Read Nunchuk data
function readNunchuk()
    -- Request 6 bytes
    local data = i2c_rx(PIN_I2C_SDA, NUNCHUK_ADDR, 6)

    if data and #data == 6 then
        local joyX = data[1]
        local joyY = data[2]
        local accelX = (data[3] << 2) | ((data[6] >> 2) & 0x03)
        local accelY = (data[4] << 2) | ((data[6] >> 4) & 0x03)
        local accelZ = (data[5] << 2) | ((data[6] >> 6) & 0x03)
        local buttons = data[6] & 0x03  -- Bit 0: Z, Bit 1: C

        return {
            joyX = joyX,
            joyY = joyY,
            accelX = accelX,
            accelY = accelY,
            accelZ = accelZ,
            buttonZ = (buttons & 0x01) == 0,  -- Inverted
            buttonC = (buttons & 0x02) == 0   -- Inverted
        }
    end

    return nil
end

-- Map to Doom controls (example)
function getDoomInput()
    local n = readNunchuk()
    if n then
        return {
            moveX = (n.joyX - 128) / 128,  -- -1 to 1
            moveY = (n.joyY - 128) / 128,
            shoot = n.buttonZ,
            interact = n.buttonC
        }
    end
    return {moveX=0, moveY=0, shoot=false, interact=false}
end

-- Test function
function test_nunchuk()
    initNunchuk()
    local input = getDoomInput()
    print("Move X: " .. input.moveX .. ", Y: " .. input.moveY .. ", Shoot: " .. tostring(input.shoot))
end