# ELM11 Porting Plan for Citrus Doom

## Overview
This plan outlines the steps to port Citrus Doom (a Lua-based Doom engine/remake for Stormworks) to the ELM11 microcontroller board. The ELM11 runs Lua with hardware acceleration, GPIO, PWM, UART, SPI, I2C, interrupts, timers, and watchdog support. Key challenges include resource constraints (CPU, memory), API differences, and hardware integration for display, input, and sound. **Note: Due to ELM11's embedded nature, resolution will be significantly lower than original Doom (e.g., 320x200)—we'll target 128x128 on the ST7735S LCD for better detail.**

## 1. Study ELM11 Documentation and Capabilities
- Download and review the ELM11 preliminary documentation and embLua OS docs.
- Key findings from datasheet:
  - Lua 5.x with hardware-accelerated VM (helps performance for Doom's math/rendering).
  - CPU: 1 core at 66MHz (O1 overlay), configurable frequency/cores; 1MB heap, 40KB stack.
  - I/O: 16 pins, run-time reconfigurable for GPIO, PWM, UART, SPI, I2C (no I2S or native video).
  - Storage: Flash for programs/data; REPL per core; Command Mode for config/upload.
  - No built-in display API—rendering must use external peripherals.
- Focus on:
  - Lua version and standard libraries (ensure compatibility with Lua 5.3).
  - Hardware-accelerated Lua VM performance (benchmarks for math, loops).
  - I/O APIs: GPIO, PWM, UART/SPI/I2C, interrupts, timers, watchdog.
  - Display capabilities (e.g., external SPI/I2C LCD for graphics primitives).
  - Storage (flash memory for Lua programs and Doom assets).
  - CPU/memory limits (configurable frequency/cores; assess for Doom's rendering/physics).
- Perform resource assessment: Test Doom-like operations in ELM11 REPL to estimate FPS and memory usage.

## 2. Understand Codebase Differences
- Current Stormworks APIs in Citrus Doom:
  - Input: `input.getNumber`, `input.getBool`.
  - Rendering: `screen.drawRectF`, `screen.drawTriangleF`, etc.
  - Sound/HUD: `output.setNumber`.
  - Data: `property.getText` for text boxes.
- Map to ELM11 equivalents (based on docs):
  - Input: GPIO polling/interrupts for buttons/joystick.
  - Rendering: ELM11 display API or SPI commands to LCD.
  - Sound: PWM for tones or I2C/SPI for audio chips.
  - Data: Flash file I/O instead of text boxes.
- Test Lua compatibility in REPL (e.g., math ops, minified code).

## 3. Plan Hardware and Peripherals
- Display: Use 1.44" 128x128 ST7735S SPI TFT LCD for 3D rendering. Configure pins as SPI_OUT for communication. Implement software rendering to draw pixels/rects via SPI commands, adapting Stormworks' draw calls. Resolution 128x128 (color) provides good detail for low-res Doom gameplay.
- Input: Use Arduino Joystick Shield with PS2 joystick + 6 buttons via I2C for analog stick (movement/turning) and buttons (shoot/interact/weapon select). Configure pins as I2C for communication. Provides precise analog control with more buttons than Nunchuk. Includes 5110 LCD for potential HUD/debug display.
- Sound: PWM pin to speaker for basic tones (e.g., pickup sounds).
- Power/Other: Stable power supply; enable watchdog.
- Prototype: Breadboard setup with LCD, buttons, and speaker.

## 4. Set Up Development Environment
- Install ELM11 programming tools (e.g., serial uploader for flash).
- Use VS Code or similar for Lua editing.
- Utilize ELM11 REPL for iterative testing.
- Fork/clone repo; create ELM11 branch.
- Adapt Python scripts (e.g., `wad_data.py`) for ELM11 data formats.

## 5. Code Adaptation Strategy
- Incremental porting:
  - Start with math/data structures (pure Lua).
  - Modify data loading for flash.
  - Port rendering: Replace draw calls with ELM11 APIs.
  - Update engine: Swap input APIs; optimize BSP/physics.
  - Adapt sound: Map to PWM/I2C.
- Optimizations: Further minify code; leverage hardware acceleration.
- Testing milestones:
  - Load/render walls.
  - Add movement/input.
  - Integrate sound/enemies.
  - Full gameplay on test level.

### Technical Implementation Details

#### Core Libraries Created:
- **`elmath.lua`**: Vector math utilities (add, sub, dist, at2, dVec, clamp). Pure Lua functions compatible with Lua 5.x.
- **`eldata.lua`**: Flash file I/O for Doom data loading. Parses packed binary format from text files, loads level-specific data structures.
- **`elrender.lua`**: ST7789 SPI display driver. Implements drawRectF, drawTriangleF, drawLine, drawText using SPI commands. Includes initLCD() for display setup.
- **`elrender_st7735.lua`**: ST7735S SPI display driver. Implements drawRectF, drawLine, drawText using SPI commands for 128x128 displays. Includes initLCD() for display setup.
- **`elinput.lua`**: Dual-mode input system supporting Wii Nunchuk (I2C), Arduino Joystick Shield (I2C), and GPIO buttons. Provides get_input() and get_button() functions.
- **`elsound.lua`**: PWM audio output for sound effects. Maps Doom sound IDs to frequencies, plays via PWM pin.
- **`elnunchuk.lua`**: I2C protocol handler for Wii Nunchuk controller. Decodes analog stick and button data.

#### Engine Adaptation (`elengine.lua`):
- **Main Loop**: `onTick()` function handles data loading, initialization, thinker updates, collision detection, player movement, AI, and output.
- **Player Movement**: Uses `elinput.get_input()` for analog controls (moveX, moveY, look). Implements collision checking with `chkPs()` and BSP traversal.
- **Collision System**: Blockmap-based collision detection, ray casting for interactions, physics for falling/jumping.
- **AI System**: State machines for enemy behavior (idle, chase, attack), pathfinding using angle checks.
- **Weapon System**: Ammo management, firing logic, projectile creation, auto-aiming.
- **Data Structures**: Maintains M[] arrays for things, linedefs, sectors, BSP nodes, blockmap.

#### Data Format Adaptation:
- **Input**: Original Stormworks uses `property.getText()` for compressed data boxes.
- **Output**: ELM11 uses `io.open()` to read from flash files (e.g., `doom_data_1.txt`).
- **Format**: Maintains same packed binary encoding, parsed into Lua tables.
- **Level Loading**: `load_level(level_num)` returns level-specific data subset.

#### Rendering Pipeline:
- **Display**: 128x128 ST7735S SPI LCD (RGB565 color).
- **Commands**: SPI writes for column/row address set, memory write operations.
- **Primitives**: Filled rectangles, triangles (bounding box approximation), lines (Bresenham), text (monospaced).
- **Update**: `update_things()` called each frame to render player, enemies, HUD.

#### Input Mapping:
- **Nunchuk Mode**: Analog stick → movement/turning, C/Z buttons → shoot/interact.
- **Joystick Shield Mode**: PS2 joystick → movement/turning, 6 buttons → shoot/interact/weapon switching.
- **GPIO Mode**: Digital buttons for up/down/left/right/shoot.
- **Weapon Switching**: Button combinations map to weapon slots (1-8).

#### Sound System:
- **Output**: PWM pin to speaker for tone generation.
- **Effects**: Predefined frequencies for pistol, shotgun, pain, death, pickups.
- **Duration**: Fixed 200ms tones, triggered by engine output array.

#### Performance Considerations:
- **Resolution**: 128x128 vs original 320x200 (~12.5% of pixels).
- **Frame Rate**: Target 5-10 FPS on 66MHz CPU.
- **Memory**: 1MB heap for level data, optimized Lua tables.
- **CPU**: Hardware-accelerated Lua VM for math operations.
- **Optimizations**: Coordinate scaling, simplified collision, reduced AI complexity.

### Current Implementation Status
- ✅ **Math Library**: `elmath.lua` - Complete vector operations and utilities.
- ✅ **Data Loading**: `eldata.lua` - Flash file I/O, level data parsing.
- ✅ **Rendering Engine**: `elrender.lua` - ST7789 SPI commands, basic primitives.
- ✅ **ST7735S Rendering Engine**: `elrender_st7735.lua` - ST7735S SPI commands for 128x128 displays.
- ✅ **Input System**: `elinput.lua` + `elnunchuk.lua` + `eljoystick.lua` - Multi-mode controls with Arduino Joystick Shield support.
- ✅ **Sound System**: `elsound.lua` - PWM audio output.
- ✅ **Game Engine**: `elengine.lua` - Core loop, player movement, collision, AI.
- 🔄 **Data Generation**: `generate_eldata.py` - Basic structure, needs full adaptation.
- ⏳ **Integration**: Main script to tie all components together.
- ⏳ **Hardware Testing**: LCD, Nunchuk, speaker integration.

### File Structure
```
ELM11-Citrus-Doom/
├── elmath.lua          # Vector math utilities
├── eldata.lua          # Flash data loading
├── elrender.lua        # ST7789 SPI rendering
├── elrender_st7735.lua # ST7735S SPI rendering (128x128)
├── elinput.lua         # Input handling (GPIO/Nunchuk/Joystick Shield)
├── elnunchuk.lua       # Wii Nunchuk I2C protocol
├── eljoystick.lua      # Arduino Joystick Shield I2C protocol
├── elsound.lua         # PWM sound output
├── elengine.lua        # Main game engine
├── generate_eldata.py  # WAD to ELM11 data converter
├── ELM11plan.md        # This planning document
└── README.md           # Project documentation
```

## 6. Risks and Contingencies
- Performance: Reduce resolution/AI if slow; leverage VM acceleration for math-heavy code. Target 5-10 FPS for basic gameplay.
- Memory: Compress/stream assets; 1MB heap should suffice for small levels.
- Debugging: Use REPL logging; watchdog for hangs.
- Fallback: Simplify to "Doom-lite" (e.g., 2D top-down or minimal 3D) if full port is too demanding.

## Next Steps
- Acquire Hardware: Order 1.44" 128x128 ST7735S SPI TFT LCD (~$5), Arduino Joystick Shield (~$8), 2x18 female GPIO header pins (~$1), and basic components (buttons, speaker, wires).
- Set Up ELM11 Development Environment: Set up ELM11 with serial connection, install upload tools, and test REPL with basic Lua commands. First solder 2x18 GPIO header to ELM11 board.
- Prototype LCD Display: Wire ST7735S LCD to ELM11 SPI pins and test basic drawing (e.g., fill screen, draw rect) in REPL.
- Port Core Math/Data Structures: Adapt Citrus Doom's math functions (e.g., vector ops, BSP) to ELM11 Lua, test in REPL for performance.
- Adapt Data Loading: Create ELM11-compatible data loading from flash instead of Stormworks text boxes.
- Implement Rendering Engine: Replace Stormworks draw calls with SPI commands for ST7735S (e.g., map drawRectF to pixel fills).
- ✅ Add Input and Sound: Map input to GPIO interrupts and sound to PWM, test basic controls/audio.
- Full Integration and Testing: Integrate all components, load a simple level, and test gameplay loop at 5-10 FPS.
