# ELM11 Porting Plan for Citrus Doom

## Overview
This plan outlines the steps to port Citrus Doom (a Lua-based Doom engine/remake for Stormworks) to the ELM11 microcontroller board. The ELM11 runs Lua with hardware acceleration, GPIO, PWM, UART, SPI, I2C, interrupts, timers, and watchdog support. Key challenges include resource constraints (CPU, memory), API differences, and hardware integration for display, input, and sound. **Note: Due to ELM11's embedded nature, resolution will be significantly lower than original Doom (e.g., 320x200)—we'll target 160x128 on the ST7789 LCD for better detail.**

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
- Display: Use 1.8" 160x128 ST7789 SPI TFT LCD for 3D rendering. Configure pins as SPI_OUT for communication. Implement software rendering to draw pixels/rects via SPI commands, adapting Stormworks' draw calls. Resolution 160x128 (color) provides better detail than monochrome LCDs, suitable for low-res Doom gameplay.
- Input: Use Wii Nunchuk controller via I2C for analog stick (movement/turning) and buttons (shoot/interact). Configure pins as I2C for communication. Provides precise, reliable controls without ADC complexity. Alternatively, digital joystick with 4 directional switches + shoot button.
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

## 6. Risks and Contingencies
- Performance: Reduce resolution/AI if slow; leverage VM acceleration for math-heavy code. Target 5-10 FPS for basic gameplay.
- Memory: Compress/stream assets; 1MB heap should suffice for small levels.
- Debugging: Use REPL logging; watchdog for hangs.
- Fallback: Simplify to "Doom-lite" (e.g., 2D top-down or minimal 3D) if full port is too demanding.

## Next Steps
- Acquire Hardware: Order 1.8" 160x128 ST7789 SPI TFT LCD from AliExpress (~$5) and basic components (buttons, speaker, wires).
- Set Up ELM11 Development Environment: Set up ELM11 with serial connection, install upload tools, and test REPL with basic Lua commands.
- Prototype LCD Display: Wire ST7789 LCD to ELM11 SPI pins and test basic drawing (e.g., fill screen, draw rect) in REPL.
- Port Core Math/Data Structures: Adapt Citrus Doom's math functions (e.g., vector ops, BSP) to ELM11 Lua, test in REPL for performance.
- Adapt Data Loading: Create ELM11-compatible data loading from flash instead of Stormworks text boxes.
- Implement Rendering Engine: Replace Stormworks draw calls with SPI commands for ST7789 (e.g., map drawRectF to pixel fills).
- Add Input and Sound: Map input to GPIO interrupts and sound to PWM, test basic controls/audio.
- Full Integration and Testing: Integrate all components, load a simple level, and test gameplay loop at 5-10 FPS.
