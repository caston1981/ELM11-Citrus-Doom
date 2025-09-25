# ELM11 Game Development Framework

A comprehensive game development framework for the ELM11 microcontroller, featuring Love2D-style game implementations, educational examples, and interactive development tools.

![ELM11](https://img.shields.io/badge/Platform-ELM11-blue)
![Lua](https://img.shields.io/badge/Language-Lua%205.x-yellow)
![Games](https://img.shields.io/badge/Games-10-green)
![License](https://img.shields.io/badge/License-MIT-green)

## Overview

This project has evolved from a Citrus Doom port to a comprehensive ELM11 game development framework. It includes:

- **Love2D Game Library**: Complete games adapted from Love2D patterns
- **Educational Examples**: Love2D concepts demonstrated for ELM11
- **Interactive Development Tools**: Python interface for ELM11 development
- **Classic Game Implementations**: Traditional games ported to ELM11
- **Citrus Doom Engine**: Original 3D engine for embedded Doom gameplay

The ELM11 provides a 66MHz Lua 5.x runtime with hardware acceleration, making it suitable for real-time game development despite embedded constraints.

### Key Features
- **288x160 Monochrome Display**: Optimized for ELM11's screen capabilities
- **Property-Based Input**: ELM11 button and control system
- **Love2D API Adaptation**: Familiar game development patterns
- **Interactive Development**: Python tools for code testing and deployment
- **Complete Game Library**: 10 fully playable games
- **Educational Content**: Learn game development concepts

### Hardware Requirements
- ELM11 microcontroller board
- Display (288x160 monochrome recommended)
- Input controls (buttons/joystick)
- USB/serial connection for development
- Optional: Speaker for sound effects

**Estimated Development Cost**: $10-15 (ELM11 + basic peripherals)

## Project Structure

### Core Libraries (Citrus Doom Engine)
- **`elmath.lua`**: Vector mathematics and utility functions
- **`eldata.lua`**: Flash file I/O and Doom data loading
- **`elrender.lua`**: Display driver and rendering primitives
- **`elinput.lua`**: Input handling system
- **`elnunchuk.lua`**: Wii Nunchuk I2C protocol implementation
- **`eljoystick.lua`**: Arduino Joystick Shield I2C protocol implementation
- **`elsound.lua`**: PWM audio output for sound effects
- **`elengine.lua`**: Main game engine with player movement, collision, AI

### Love2D Examples (`love2d_examples/`)
Educational examples adapted from Love2D concepts:
- **`hello_world.lua`**: Basic text display and screen rendering
- **`shapes.lua`**: Drawing geometric primitives (rectangles, circles)
- **`animation.lua`**: Frame-based animation and object movement
- **`input_demo.lua`**: Input detection and response handling
- **`particles.lua`**: Particle system with emitter and lifetime management

### Love2D Games (`love2d_games/`)
Complete games following Love2D development patterns:
- **`love_pong.lua`**: Pong with paddle physics and AI opponent
- **`love_birb.lua`**: Flappy Bird clone with gravity and pipes
- **`love_platform.lua`**: Platformer with jumping and collision
- **`love2d_snake.lua`**: Snake game with Love2D event structure
- **`love2d_pacman.lua`**: Pac-Man with maze navigation and ghosts
- **`love2d_space_invaders.lua`**: Space Invaders with alien formations

### Classic Games (`games/`)
Traditional game implementations:
- **`games/snake/snake.lua`**: Complete Snake game implementation
- **`games/pong/pong.lua`**: Pong with ball physics and scoring
- **`games/space_invaders/space_invaders.lua`**: Space Invaders with alien AI
- **`games/pacman/pacman.lua`**: Pac-Man with maze and ghost behavior

### Development Tools
- **`elm11_interface.py`**: Interactive Python interface for ELM11 development
- **`elm11_serial_test.py`**: Serial communication test script
- **`generate_eldata.py`**: Python script to convert WAD files to ELM11 format
- **`wad_data.py`**: WAD parsing utilities adapted from Citrus Doom

### Documentation
- **`README.md`**: This comprehensive project overview
- **`ELM11plan.md`**: Detailed technical specifications and porting plan
- **`docs/ELM11_Datasheet.md`**: ELM11 microcontroller documentation
- **`love2d_examples/README.md`**: Love2D API adaptation guide
- **`love2d_games/README.md`**: Love2D games documentation
- **`games/pong/README.md`**: Pong game documentation
- **`games/space_invaders/README.md`**: Space Invaders game documentation
- **`games/pacman/README.md`**: Pac-Man game documentation

## Development Tools

### ELM11 Interactive Interface (`elm11_interface.py`)
Advanced development interface featuring:

#### Core Features
- **Lua Code Runner**: Execute Lua code snippets with built-in examples
- **Command Mode Access**: Browse and execute ELM11 system commands
- **Boot Log Viewer**: Reset device to view startup information
- **Serial Connection**: Auto-detection of ELM11 devices

#### Game Libraries
- **Run Games**: Access to classic game implementations (Snake, Pong, Pac-Man, Space Invaders)
- **Love2D Examples**: Educational examples demonstrating Love2D concepts
- **Love2D Games**: Complete games following Love2D development patterns

#### Love2D Examples Menu
Interactive examples showing API adaptations:
- Hello World - Basic text display (`screen.drawText()`)
- Shapes - Drawing primitives (`screen.drawRectF()`)
- Animation - Frame-based animation and input
- Input Demo - Button and control handling
- Particles - Particle system implementation

#### Love2D Games Menu
Complete playable games with Love2D structure:
- LovePong - Pong with Love2D event handling
- LoveBirb - Flappy Bird with physics
- LovePlatform - Platformer with collision
- Love2D Snake - Snake with proper Love2D patterns
- Love2D Pac-Man - Pac-Man with game states
- Love2D Space Invaders - Space Invaders with formations

### Serial Testing (`elm11_serial_test.py`)
Basic connectivity testing:
- Auto-detection of ELM11 serial ports
- Baud rate testing and connection verification
- REPL mode testing with Lua commands
- Command mode access for system administration

## Game Development

### Love2D Examples
Educational examples demonstrating Love2D concepts adapted for ELM11:

#### Hello World (`love2d_examples/hello_world.lua`)
- **Concept**: Basic screen rendering and text display
- **Love2D Equivalent**: `love.graphics.print()`
- **ELM11 Adaptation**: `screen.drawText()`
- **Learning**: Screen coordinates, basic drawing API

#### Shapes (`love2d_examples/shapes.lua`)
- **Concept**: Drawing geometric primitives
- **Love2D Equivalent**: `love.graphics.rectangle()`, `love.graphics.circle()`
- **ELM11 Adaptation**: `screen.drawRectF()` (rectangles only)
- **Learning**: Shape rendering, color management

#### Animation (`love2d_examples/animation.lua`)
- **Concept**: Frame-based animation and smooth movement
- **Love2D Equivalent**: `love.update()`, `love.draw()` with time-based updates
- **ELM11 Adaptation**: `onTick()` and `onDraw()` with delta time
- **Learning**: Game loops, animation timing, input-driven movement

#### Input Demo (`love2d_examples/input_demo.lua`)
- **Concept**: Input detection and state management
- **Love2D Equivalent**: `love.keyboard.isDown()`
- **ELM11 Adaptation**: `property.getBool()` for button states
- **Learning**: Input polling, state management, user interaction

#### Particles (`love2d_examples/particles.lua`)
- **Concept**: Particle systems for visual effects
- **Love2D Equivalent**: `love.graphics.draw(particleSystem)`
- **ELM11 Adaptation**: Custom particle class with update/render loops
- **Learning**: Object-oriented Lua, lifetime management, emitter systems

### Love2D Games
Complete games following Love2D development patterns:

#### LovePong (`love2d_games/love_pong.lua`)
- **Love2D Structure**: `love.load()`, `love.update()`, `love.draw()`, `love.keypressed()`
- **Features**: Two-player Pong with physics, scoring, AI opponent
- **Controls**: Player 1 (UP/DOWN), Player 2 (A/B), START to begin
- **Gameplay**: First to 5 points wins

#### LoveBirb (`love2d_games/love_birb.lua`)
- **Love2D Structure**: Complete game loop with proper event handling
- **Features**: Flappy Bird physics, procedural pipes, scoring system
- **Controls**: A or START to flap
- **Gameplay**: Navigate pipes, avoid obstacles, score by passing pipes

#### LovePlatform (`love2d_games/love_platform.lua`)
- **Love2D Structure**: Love2D-style game with physics and collision
- **Features**: Platformer movement, gravity, collision detection
- **Controls**: LEFT/RIGHT to move, A to jump
- **Gameplay**: Jump between platforms, avoid falling

#### Love2D Snake (`love2d_games/love2d_snake.lua`)
- **Love2D Structure**: Proper Love2D event system and game states
- **Features**: Grid-based movement, food spawning, collision detection
- **Controls**: Arrow keys for direction, START to begin/restart
- **Gameplay**: Classic Snake mechanics with Love2D patterns

#### Love2D Pac-Man (`love2d_games/love2d_pacman.lua`)
- **Love2D Structure**: Full game state management and Love2D conventions
- **Features**: Maze navigation, ghost AI, pellet collection, lives system
- **Controls**: Arrow keys for movement, START for game control
- **Gameplay**: Eat pellets, avoid ghosts, complete levels

#### Love2D Space Invaders (`love2d_games/love2d_space_invaders.lua`)
- **Love2D Structure**: Complete Love2D implementation with game loops
- **Features**: Alien formations, bullet physics, collision detection
- **Controls**: LEFT/RIGHT to move, A to shoot, START to begin
- **Gameplay**: Shoot aliens while avoiding their fire

### Classic Game Implementations
Traditional game ports with direct ELM11 API usage:

#### Snake (`games/snake/snake.lua`)
- **Features**: Grid-based Snake with food spawning and scoring
- **Controls**: Directional inputs + Start button
- **Status**: Complete and tested

#### Pong (`games/pong/pong.lua`)
- **Features**: Two-player Pong with AI opponent and ball physics
- **Controls**: Up/Down paddle movement + Start button
- **Status**: Complete and tested

#### Space Invaders (`games/space_invaders/space_invaders.lua`)
- **Features**: Alien formations, player ship, bullet mechanics
- **Controls**: Left/Right movement + Shoot button
- **Status**: Complete and tested

#### Pac-Man (`games/pacman/pacman.lua`)
- **Features**: Maze navigation, ghost AI, power pellets
- **Controls**: Directional movement for Pac-Man
- **Status**: Complete and tested
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

### Development Interface
```bash
# Launch the interactive development interface
python3 elm11_interface.py
```

The interface provides:
- **Lua Code Runner**: Execute code snippets with examples
- **Command Mode**: Access ELM11 system administration
- **Boot Log Viewer**: View device startup information
- **Love2D Examples**: Interactive educational examples
- **Love2D Games**: Complete playable games
- **Classic Games**: Traditional game implementations

### Running Love2D Examples
```bash
# In elm11_interface.py:
# Select "Love2D Examples" > Choose any example
# The interface loads and runs the example on ELM11
```

Available examples demonstrate:
- Basic screen rendering and text display
- Shape drawing and color management
- Animation and time-based updates
- Input detection and response
- Particle system implementation

### Running Love2D Games
```bash
# In elm11_interface.py:
# Select "Love2D Games" > Choose any game
# The interface loads and runs the game on ELM11
```

Complete games include:
- LovePong, LoveBirb, LovePlatform
- Love2D Snake, Love2D Pac-Man, Love2D Space Invaders

### Running Classic Games
```bash
# In elm11_interface.py:
# Select "Run Games" > Choose any game
# Follow upload instructions for ELM11 deployment
```

### Running Without Hardware (Simulation Mode)
If you haven't connected screens or controllers yet, you can still explore the games using simulation mode:

```bash
# Run in simulation mode (no ELM11 hardware required)
python3 elm11_interface.py --simulate
```

The simulation mode provides:
- **Text-based previews** of all Love2D examples and games
- **Code analysis** showing game structure and Love2D patterns
- **Control schemes** and gameplay descriptions
- **Technical details** about ELM11 adaptations

This allows you to understand the games before connecting hardware.

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

### ELM11 Hardware Specifications
- **Processor**: 66MHz ARM Cortex-M4
- **Display**: 288x160 monochrome LCD
- **Memory**: 256KB RAM, 1MB Flash
- **Runtime**: Lua 5.3 interpreter
- **Input**: 8-way directional pad, 4 action buttons
- **Audio**: PWM audio output
- **Communication**: Serial UART (115200 baud)

### Love2D API Adaptation
The Love2D examples and games adapt the Love2D API for ELM11 constraints:

#### Core Functions
- `love.load()` → Initialization code in global scope
- `love.update(dt)` → `onTick()` function (60 FPS target)
- `love.draw()` → `onDraw()` function
- `love.keypressed(key)` → `property.getBool("button."..key)`

#### Graphics API
- `love.graphics.setColor(r,g,b,a)` → `screen.setColor(r,g,b)`
- `love.graphics.rectangle(mode,x,y,w,h)` → `screen.drawRect(x,y,w,h)`
- `love.graphics.circle(mode,x,y,r)` → `screen.drawCircle(x,y,r)`
- `love.graphics.print(text,x,y)` → `screen.drawText(x,y,text)`
- `love.graphics.clear()` → `screen.clear()`

#### Input System
- `love.keyboard.isDown(key)` → `property.getBool("button."..key)`
- Directional input: `button.up`, `button.down`, `button.left`, `button.right`
- Action buttons: `button.a`, `button.b`, `button.x`, `button.y`

#### Performance Considerations
- **Frame Rate**: Target 60 FPS with optimized rendering
- **Memory Management**: Minimize object creation in game loops
- **Collision Detection**: Use bounding box methods for efficiency
- **Asset Loading**: Pre-load graphics and sounds at startup

### Game Architecture Patterns
All games follow consistent patterns:
- **State Management**: Game states (menu, playing, paused, game over)
- **Entity System**: Player, enemies, projectiles, power-ups
- **Collision Detection**: Rectangle and circle collision methods
- **Input Handling**: Polled input with debouncing
- **Audio Feedback**: Sound effects for actions and events

### Development Workflow
1. **Prototype in Interface**: Use `elm11_interface.py` for rapid testing
2. **Iterate on ELM11**: Upload and test directly on device
3. **Optimize Performance**: Profile and optimize for 66MHz constraints
4. **Add Polish**: Sound effects, animations, scoring systems

### File Structure
```
├── elm11_interface.py          # Development interface
├── elm11_serial_test.py        # Serial connection testing
├── love2d_examples/            # Educational Love2D examples
│   ├── love2d_basic.lua
│   ├── love2d_shapes.lua
│   ├── love2d_animation.lua
│   ├── love2d_input.lua
│   └── love2d_particles.lua
├── love2d_games/               # Complete Love2D-style games
│   ├── love2d_snake.lua
│   ├── love2d_pacman.lua
│   ├── love2d_space_invaders.lua
│   ├── lovepong.lua
│   ├── lovebirb.lua
│   └── loveplatform.lua
├── games/                      # Classic game implementations
│   ├── snake/
│   ├── pong/
│   ├── space_invaders/
│   └── pacman/
└── docs/                       # Documentation and datasheets
```

### Performance Specifications
- **Target FPS**: 5-10 frames per second (Doom), 60 FPS (Love2D games)
- **Resolution**: 160x128 pixels (Doom), 288x160 pixels (Love2D)
- **Color Depth**: 16-bit RGB565 (Doom), monochrome (Love2D)
- **Memory Usage**: ~500KB for level data (Doom), optimized for Love2D games
- **CPU Load**: ~50-70% at target framerate

### Engine Architecture
- **Rendering**: Software rendering via SPI commands to LCD
- **Physics**: Simplified collision detection with blockmaps (Doom) or bounding boxes (Love2D)
- **AI**: State-based enemy behavior with basic pathfinding
- **Audio**: PWM tone generation for sound effects
- **Input**: Polled input with optional interrupt support

## Troubleshooting

## Troubleshooting

### Common Issues

#### LCD Not Displaying
- Check SPI wiring and pin assignments
- Verify LCD power (3.3V, not 5V)
- Test with `initLCD()` and basic `drawRectF()` (Doom) or `screen.clear()` (Love2D)

#### Joystick Shield Not Responding
- Check I2C wiring (SDA/SCL) and pull-up resistors
- Verify shield is set to 3.3V mode (not 5V)
- Check I2C address in `eljoystick.lua` (may need adjustment)
- Test with `getDoomInputFromShield()` in REPL (Doom) or `property.getBool("button.up")` (Love2D)

#### Sound Not Working
- Check PWM pin wiring
- Verify speaker has amplifier (piezo speakers may need driver)
- Test PWM output with oscilloscope

#### Love2D Game Performance Issues
- Ensure `onTick()` and `onDraw()` functions are defined
- Minimize object creation in game loops
- Use simple collision detection (bounding boxes)
- Profile with ELM11 performance tools

#### Love2D Input Not Working
- Use `property.getBool("button."..key)` for input detection
- Check button names: `up`, `down`, `left`, `right`, `a`, `b`, `x`, `y`, `start`
- Test input in REPL before implementing in game

#### Memory Errors in Love2D Games
- Check heap usage with ELM11 monitoring
- Pre-load assets in initialization
- Reuse objects instead of creating new ones
- Optimize table usage and garbage collection

#### Low Performance (Doom)
- Reduce resolution further if needed
- Disable complex AI features
- Profile with ELM11 performance tools

#### Memory Errors (Doom)
- Check heap usage with ELM11 monitoring
- Reduce level complexity
- Optimize data structures

### Debug Tools
```lua
-- Enable verbose logging
local DEBUG = true

-- Monitor frame rate (Love2D games)
local frameCount = 0
local startTime = os.time()
function logFPS()
    frameCount = frameCount + 1
    if frameCount % 60 == 0 then
        local fps = frameCount / (os.time() - startTime)
        print("FPS:", fps)
    end
end

-- Test Love2D input
function testInput()
    if property.getBool("button.up") then print("UP pressed") end
    if property.getBool("button.a") then print("A pressed") end
end

-- Monitor memory usage
function checkMemory()
    local mem = collectgarbage("count")
    print("Memory usage:", mem, "KB")
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
- Love2D API adaptation and examples
- Love2D Pong (lovepong.lua)
- Love2D Flappy Bird clone (lovebirb.lua)
- Love2D Platformer (loveplatform.lua)
- Love2D Snake (love2d_snake.lua)
- Love2D Pac-Man (love2d_pacman.lua)
- Love2D Space Invaders (love2d_space_invaders.lua)
- Educational Love2D examples (5 complete examples)
- Comprehensive game library with 10 playable games

### In Progress 🔄
- Full system integration and testing
- Hardware validation on ELM11
- Performance optimization for 60 FPS Love2D games
- Documentation updates and examples

### Planned 📋
- Wall rendering and BSP traversal (Doom)
- Texture mapping and lighting (Doom)
- Multiplayer support (if feasible)
- Additional weapon types (Doom)
- Level editor integration (Doom)
- More Love2D game examples
- Advanced Love2D tutorials
- Performance profiling tools

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test on ELM11 hardware or in the development interface
5. Submit a pull request

### Code Style
- Use Lua 5.x compatible syntax
- Follow Love2D naming conventions where applicable
- Add comments for complex algorithms
- Test in ELM11 REPL or development interface before committing

### Adding Love2D Games
- Follow the Love2D API adaptation patterns
- Use `onTick()` for game logic (60 FPS target)
- Use `onDraw()` for rendering
- Use `property.getBool()` for input detection
- Test performance on ELM11 hardware

### Adding Love2D Examples
- Focus on educational value
- Demonstrate specific Love2D concepts
- Include clear comments and documentation
- Keep examples simple and focused

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- **Citrus Doom**: Original engine by EngineerSmith
- **ELM11 Team**: For the excellent microcontroller platform
- **id Software**: For creating Doom and releasing the source code
- **Doom Community**: For maintaining WAD files and documentation
- **Love2D Community**: For the excellent game framework that inspired our adaptations
- **Open Source Contributors**: For the libraries and tools that made this possible

## Contact

For questions or issues:
- Open an issue on GitHub
- Check the ELM11 forums for hardware-specific questions
- Review the ELM11plan.md for detailed technical information

---

*Bringing Doom to embedded systems, one pixel at a time.* 🎮
