# ELM11 Citrus Doom

A port of Citrus Doom (a Lua-based Doom engine) to the ELM11 microcontroller for embedded low-resolution 3D gameplay.

![ELM11](https://img.shields.io/badge/Platform-ELM11-blue)
![Lua](https://img.shields.io/badge/Language-Lua%205.x-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

## Overview

This project adapts the [Citrus Doom](https://github.com/EngineerSmith/Citrus-Doom) engine from Stormworks to run on the ELM11 microcontroller. The ELM11 provides a 66MHz Lua 5.x runtime with hardware acceleration, making it suitable for real-time 3D game logic despite its embedded constraints.

### Key Features
- **Low-Resolution 3D**: 160x128 display on ST7789 SPI LCD
- **Analog Controls**: Arduino Joystick Shield with PS2 joystick + 6 buttons via I2C
- **Sound Effects**: PWM audio output for Doom sound effects
- **Complete Engine**: Player movement, collision detection, AI, weapons
- **Flash Storage**: Level data stored in microcontroller flash memory

### Hardware Requirements
- ELM11 microcontroller board
- 1.8" 160x128 ST7789 SPI TFT LCD display (~$5)
- Arduino Joystick Shield (nRF24L01 + 5110 LCD + I2C controller) (~$8)
- Small speaker with amplifier (~$2)
- Breadboard and jumper wires
- Power supply (5V recommended)

**Estimated Total Cost**: $15-20

## Project Structure

### Core Libraries
- **`elmath.lua`**: Vector mathematics and utility functions
- **`eldata.lua`**: Flash file I/O and Doom data loading
- **`elrender.lua`**: ST7789 SPI display driver and rendering primitives
- **`elinput.lua`**: Input handling (GPIO buttons, Nunchuk, or Joystick Shield)
- **`elnunchuk.lua`**: Wii Nunchuk I2C protocol implementation
- **`eljoystick.lua`**: Arduino Joystick Shield I2C protocol implementation
- **`elsound.lua`**: PWM audio output for sound effects
- **`elengine.lua`**: Main game engine with player movement, collision, AI

### Tools
- **`generate_eldata.py`**: Python script to convert WAD files to ELM11 format
- **`wad_data.py`**: Original WAD parsing utilities (adapted from Citrus Doom)
- **`elm11_serial_test.py`**: Serial communication test script for ELM11
- **`elm11_interface.py`**: Interactive Python interface for ELM11 development

### Games
- **`games/snake/snake.lua`**: Complete Snake game implementation for ELM11
  - **`games/snake/README.md`**: Detailed game documentation
- **`games/pong/pong.lua`**: Complete Pong game implementation for ELM11
  - **`games/pong/README.md`**: Detailed game documentation
- **`games/space_invaders/space_invaders.lua`**: Complete Space Invaders game implementation for ELM11
  - **`games/space_invaders/README.md`**: Detailed game documentation
- **`games/pacman/pacman.lua`**: Complete Pac-Man game implementation for ELM11
  - **`games/pacman/README.md`**: Detailed game documentation

### Documentation
- **`ELM11plan.md`**: Detailed porting plan and technical specifications
- **`README.md`**: This file
- **`docs/ELM11_Datasheet.md`**: ELM11 microcontroller documentation

## Development Tools

### ELM11 Serial Interface
The project includes Python-based development tools for interacting with the ELM11:

#### elm11_serial_test.py
Basic serial communication test script that:
- Connects to ELM11 via USB/serial
- Tests REPL mode with Lua commands
- Enters Command Mode to show available commands
- Verifies serial connection and Lua execution

#### elm11_interface.py
Advanced interactive interface featuring:
- **Lua Code Runner**: Execute Lua code snippets with examples
- **Command Mode Access**: Browse and execute ELM11 system commands
- **Boot Log Viewer**: Reset device to view startup information
- **Game Library**: Placeholders for multiple games including Citrus Doom

### Game Development
The project includes complete game implementations as examples:

#### Snake (games/snake/snake.lua)
A fully functional Snake game demonstrating:
- Grid-based movement and collision detection
- Food spawning and score system
- Input handling via ELM11 properties
- Rendering using screen drawing primitives
- Game state management (start/game over screens)

**Controls**: Up/Down/Left/Right inputs + Start button
**Status**: Complete and ready for upload to ELM11

#### Pong (games/pong/pong.lua)
A complete Pong implementation featuring:
- Player-controlled paddle vs AI opponent
- Ball physics with paddle angle deflection
- Score tracking for both players
- Center court line and game state displays
- Simple AI paddle movement

**Controls**: Up/Down inputs to move paddle + Start button
**Status**: Complete and ready for upload to ELM11

#### Space Invaders (games/space_invaders/space_invaders.lua)
A simplified Space Invaders game with:
- Player ship that moves and shoots
- Formation of alien invaders with coordinated movement
- Alien counter-fire with collision detection
- Score system and game over conditions
- Progressive alien descent

**Controls**: Left/Right to move ship + Shoot button to fire
**Status**: Complete and ready for upload to ELM11

#### Pac-Man (games/pacman/pacman.lua)
A simplified Pac-Man game featuring:
- Maze navigation with dots and power pellets
- Four ghosts with basic AI movement
- Power mode that makes ghosts vulnerable
- Lives system and level progression
- Score tracking and collision detection

**Controls**: Up/Down/Left/Right to move Pac-Man
**Status**: Complete and ready for upload to ELM11

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

#### Arduino Joystick Shield Wiring (I2C Mode)
```
ELM11 Pin | Shield Pin | Function
----------|------------|---------
I2C_SDA   | SDA        | I2C Data
I2C_SCL   | SCL        | I2C Clock
GND       | GND        | Ground
3.3V      | VCC        | Power (set shield to 3.3V mode)
```

**Note**: The Arduino Joystick Shield includes:
- PS2 analog joystick (X/Y axes)
- 6 buttons (4 directional + 2 action buttons)
- Optional 5110 LCD for debugging/HUD
- nRF24L01 wireless module (not used in this setup)

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
elm11-upload eljoystick.lua
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
local inputMode = "joystick"  -- Options: "joystick", "nunchuk", "gpio"
```

Available input modes:
- `"joystick"`: Arduino Joystick Shield (recommended)
- `"nunchuk"`: Wii Nunchuk controller
- `"gpio"`: Simple GPIO buttons

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

### Development Tools

#### Using the Serial Interface
```bash
# Test basic serial communication
python3 elm11_serial_test.py

# Launch interactive development interface
python3 elm11_interface.py
```

The interactive interface provides:
- Lua code execution with built-in examples
- Access to ELM11 Command Mode for system administration
- Boot log viewing (requires device reset)
- Game library with placeholders and implementations

#### Testing Snake Game
```bash
# In elm11_interface.py, select "Run Games" > "Snake"
# The interface will show upload instructions
# Use Command Mode to upload games/snake/snake.lua to ELM11
# Execute the program to play
```

#### Testing Pong Game
```bash
# In elm11_interface.py, select "Run Games" > "Pong"
# The interface will show upload instructions
# Use Command Mode to upload games/pong/pong.lua to ELM11
# Execute the program to play
```

#### Testing Space Invaders Game
```bash
# In elm11_interface.py, select "Run Games" > "Space Invaders"
# The interface will show upload instructions
# Use Command Mode to upload games/space_invaders/space_invaders.lua to ELM11
# Execute the program to play
```

#### Testing Pac-Man Game
```bash
# In elm11_interface.py, select "Run Games" > "Pac-Man"
# The interface will show upload instructions
# Use Command Mode to upload games/pacman/pacman.lua to ELM11
# Execute the program to play
```

### Basic Testing

### Basic Testing

#### Test LCD Display
```lua
dofile("elrender.lua")
initLCD()
setColor(255, 0, 0)  -- Red
drawRectF(10, 10, 50, 50)
```

#### Test Joystick Shield Input
```lua
dofile("eljoystick.lua")
dofile("elinput.lua")
initJoystickShield()
local input = getDoomInputFromShield()
print("Stick X:", input.moveX, "Y:", input.moveY, "Shoot:", input.shoot)
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
initInputSound(true)  -- true enables joystick shield mode

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

#### Joystick Shield Not Responding
- Check I2C wiring (SDA/SCL) and pull-up resistors
- Verify shield is set to 3.3V mode (not 5V)
- Check I2C address in `eljoystick.lua` (may need adjustment)
- Test with `getDoomInputFromShield()` in REPL

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
- Data loading from flash storage
- API adaptation for ELM11 compatibility
- Input/output system integration
- Serial communication tools (elm11_serial_test.py)
- Interactive development interface (elm11_interface.py)
- Complete Snake game implementation (snake.lua)
- Complete Pong game implementation (pong.lua)
- Complete Space Invaders game implementation (space_invaders.lua)
- Complete Pac-Man game implementation (pacman.lua)

### In Progress 🔄
- Full system integration and testing
- Hardware validation on ELM11
- Performance optimization for 5-10 FPS target

### Planned 📋
- Wall rendering and BSP traversal
- Texture mapping and lighting
- Additional game implementations (Pong, Pac-Man, Space Invaders)
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
