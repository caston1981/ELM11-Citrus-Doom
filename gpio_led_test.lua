-- GPIO LED Test Script for ELM11
-- Tests GPIO pins 0-15 by setting them as outputs and toggling LEDs
-- Connect LEDs with resistors to each GPIO pin and GND

local gpio = require("gpio")

-- Configure all GPIO pins 0-15 as outputs
for pin = 0, 15 do
    gpio.mode(pin, gpio.OUTPUT)
    gpio.write(pin, 0)  -- Start with all LEDs off
end

print("GPIO LED Test Started")
print("Press Ctrl+C to stop")

-- Main test loop: cycle through pins, turn on one at a time
while true do
    for pin = 0, 15 do
        print("Testing GPIO pin " .. pin)
        gpio.write(pin, 1)  -- Turn LED on
        os.sleep(1)         -- Wait 1 second
        gpio.write(pin, 0)  -- Turn LED off
    end
    print("Cycle complete, starting over...")
    os.sleep(0.5)  -- Brief pause between cycles
end