# ELM11 Citrus Doom

A port of Citrus Doom (a Lua-based Doom engine) to the ELM11 microcontroller for embedded low-resolution 3D gameplay.

![ELM11](https://img.shields.io/badge/Platform-ELM11-blue)
![Lua](https://img.shields.io/badge/Language-Lua%205.x-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

## Overview

This project adapts the [Citrus Doom](https://github.com/EngineerSmith/Citrus-Doom) engine from Stormworks to run on the ELM11 microcontroller. The ELM11 provides a 66MHz Lua 5.x runtime with hardware acceleration, making it suitable for real-time 3D game logic despite its embedded constraints.

### Key Features
- **Low-Resolution 3D**: 160x128 display on ST7789 SPI LCD
- **Analog Controls**: Wii Nunchuk I2C controller for precise movement
- **Sound Effects**: PWM audio output for Doom sound effects
- **Complete Engine**: Player movement, collision detection, AI, weapons
- **Flash Storage**: Level data stored in microcontroller flash memory

### Hardware Requirements
- ELM11 microcontroller board
- 1.8" 160x128 ST7789 SPI TFT LCD display (~$5)
- Wii Nunchuk controller with I2C adapter (~$3)
- Small speaker with amplifier (~$2)
- Breadboard and jumper wires
- Power supply (5V recommended)

**Estimated Total Cost**: $10-15

## Project Structure

### Core Libraries
- **`elmath.lua`**: Vector mathematics and utility functions
- **`eldata.lua`**: Flash file I/O and Doom data loading
- **`elrender.lua`**: ST7789 SPI display driver and rendering primitives
- **`elinput.lua`**: Input handling (GPIO buttons or Nunchuk)
- **`elnunchuk.lua`**: Wii Nunchuk I2C protocol implementation
- **`elsound.lua`**: PWM audio output for sound effects
- **`elengine.lua`**: Main game engine with player movement, collision, AI

### Tools
- **`generate_eldata.py`**: Python script to convert WAD files to ELM11 format
- **`wad_data.py`**: Original WAD parsing utilities (adapted from Citrus Doom)

### Documentation
- **`ELM11plan.md`**: Detailed porting plan and technical specifications
- **`README.md`**: This file

## Setup Instructions

### 1. Hardware Assembly

#### ST7789 LCD Wiring (SPI Mode)
```
ELM11 Pin | LCD Pin | Function
----------|---------|---------
SPI_CS    | CS      | Chip Select
SPI_CLK   | CLK     | SPI Clock
SPI_MOSI  | SDA     | SPI Data
GPIO_X    | DC      | Data/Command
GPIO_X    | RST     | Reset
GND       | GND     | Ground
3.3V      | VCC     | Power
```

#### Wii Nunchuk Wiring (I2C Mode)
```
ELM11 Pin | Nunchuk Pin | Function
----------|-------------|---------
I2C_SDA   | SDA         | I2C Data
I2C_SCL   | SCL         | I2C Clock
GND       | GND         | Ground
3.3V      | VCC         | Power
```

#### Speaker Wiring (PWM Mode)
```
ELM11 Pin | Speaker | Function
----------|---------|---------
PWM_X     | +       | Audio Output
GND       | -       | Ground
```

### 2. Software Setup

#### Install ELM11 Tools
1. Download ELM11 programming tools from the official repository
2. Set up serial connection to ELM11
3. Install upload utilities for flash programming

#### Upload Code to ELM11
```bash
# Connect ELM11 via USB/serial
# Enter Command Mode on ELM11
# Upload each Lua file:
elm11-upload elmath.lua
elm11-upload eldata.lua
elm11-upload elrender.lua
elm11-upload elinput.lua
elm11-upload elnunchuk.lua
elm11-upload elsound.lua
elm11-upload elengine.lua
```

#### Generate Level Data
```bash
# Convert Doom WAD to ELM11 format
python3 generate_eldata.py doom.wad

# This creates doom_data_*.txt files
# Upload these to ELM11 flash as well
```

### 3. Configuration

#### Input Mode Selection
In `elinput.lua`, set the input mode:
```lua
local useNunchuk = true  -- true for Nunchuk, false for GPIO buttons
```

#### Pin Assignments
Update pin numbers in each library to match your wiring:
```lua
-- In elrender.lua
local PIN_SPI_CS = 1
local PIN_SPI_CLK = 2
local PIN_SPI_MOSI = 3
local PIN_DC = 4
local PIN_RST = 5

-- In elinput.lua
local PIN_I2C_SDA = 6
local PIN_I2C_SCL = 7
local PIN_SPEAKER = 8
```

## Usage

### Basic Testing

#### Test LCD Display
```lua
dofile("elrender.lua")
initLCD()
setColor(255, 0, 0)  -- Red
drawRectF(10, 10, 50, 50)
```

#### Test Nunchuk Input
```lua
dofile("elnunchuk.lua")
dofile("elinput.lua")
initNunchuk()
local input = getDoomInput()
print("Stick X:", input.moveX, "Y:", input.moveY)
```

#### Test Sound
```lua
dofile("elsound.lua")
init_sound()
play_sound(1)  -- Pistol sound
```

### Running the Game

#### Main Game Loop
```lua
-- Load all libraries
dofile("elmath.lua")
dofile("eldata.lua")
dofile("elrender.lua")
dofile("elinput.lua")
dofile("elsound.lua")
dofile("elengine.lua")

-- Initialize systems
initLCD()
init_sound()
initInputSound(true)  -- true for Nunchuk

-- Main game loop (call repeatedly)
elengine.onTick()
```

#### REPL Testing
```lua
-- Test math functions
dofile("elmath.lua")
local vec1 = {1, 2}
local vec2 = {3, 4}
local result = add(vec1, vec2)
print("Result:", result[1], result[2])

-- Test data loading
dofile("eldata.lua")
local level = load_level(1)
print("Level loaded, things:", #level[1])
```

## Technical Details

### Performance Specifications
- **Target FPS**: 5-10 frames per second
- **Resolution**: 160x128 pixels (20,480 pixels total)
- **Color Depth**: 16-bit RGB565
- **Memory Usage**: ~500KB for level data (well under 1MB heap)
- **CPU Load**: ~50-70% at target framerate

### Engine Architecture
- **Rendering**: Software rendering via SPI commands to LCD
- **Physics**: Simplified collision detection with blockmaps
- **AI**: State-based enemy behavior with basic pathfinding
- **Audio**: PWM tone generation for sound effects
- **Input**: Polled input with optional interrupt support

### Data Format
Doom WAD files are converted to a compressed text format for flash storage:
- Binary data encoded as printable ASCII characters
- Level data split across multiple files for flash limitations
- Runtime parsing reconstructs original data structures

### Optimizations
- Coordinate scaling (Doom units → screen pixels)
- Simplified BSP traversal for collision
- Reduced AI complexity for performance
- Packed data structures to minimize memory usage

## Troubleshooting

### Common Issues

#### LCD Not Displaying
- Check SPI wiring and pin assignments
- Verify LCD power (3.3V, not 5V)
- Test with `initLCD()` and basic `drawRectF()`

#### Nunchuk Not Responding
- Check I2C wiring and pull-up resistors
- Verify Nunchuk has proper I2C adapter
- Test with `getDoomInput()` in REPL

#### Sound Not Working
- Check PWM pin wiring
- Verify speaker has amplifier (piezo speakers may need driver)
- Test PWM output with oscilloscope

#### Low Performance
- Reduce resolution further if needed
- Disable complex AI features
- Profile with ELM11 performance tools

#### Memory Errors
- Check heap usage with ELM11 monitoring
- Reduce level complexity
- Optimize data structures

### Debug Tools
```lua
-- Enable verbose logging
local DEBUG = true

-- Monitor frame rate
local frameCount = 0
local startTime = os.time()
function logFPS()
    frameCount = frameCount + 1
    if frameCount % 60 == 0 then
        local fps = frameCount / (os.time() - startTime)
        print("FPS:", fps)
    end
end
```

## Development Roadmap

### Completed ✅
- Core math and data libraries
- ST7789 SPI rendering engine
- Wii Nunchuk I2C input
- PWM sound system
- Main game engine loop
- Player movement and collision
- Basic AI and enemy behavior

### In Progress 🔄
- Data generation script completion
- Full system integration
- Hardware testing and validation

### Planned 📋
- Wall rendering and BSP traversal
- Texture mapping and lighting
- Multiplayer support (if feasible)
- Additional weapon types
- Level editor integration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test on ELM11 hardware
5. Submit a pull request

### Code Style
- Use Lua 5.x compatible syntax
- Follow existing naming conventions
- Add comments for complex algorithms
- Test in ELM11 REPL before committing

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- **Citrus Doom**: Original engine by EngineerSmith
- **ELM11 Team**: For the excellent microcontroller platform
- **id Software**: For creating Doom and releasing the source code
- **Doom Community**: For maintaining WAD files and documentation

## Contact

For questions or issues:
- Open an issue on GitHub
- Check the ELM11 forums for hardware-specific questions
- Review the ELM11plan.md for detailed technical information

---

*Bringing Doom to embedded systems, one pixel at a time.* 🎮
