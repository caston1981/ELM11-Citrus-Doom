# Love2D Examples for ELM11

This folder contains Love2D-inspired examples adapted for the ELM11 microcontroller platform. Each example demonstrates fundamental game development concepts while being constrained to ELM11's capabilities (288x160 monochrome display, property-based input system, Lua 5.x runtime).

## Available Examples

### Hello World (`hello_world.lua`)
- **Concept**: Basic text display and screen rendering
- **Love2D Equivalent**: `love.graphics.print()`
- **ELM11 Adaptation**: `screen.drawText()`
- **Learning Focus**: Screen coordinates, basic drawing API

### Shapes (`shapes.lua`)
- **Concept**: Drawing geometric primitives
- **Love2D Equivalent**: `love.graphics.rectangle()`, `love.graphics.circle()`
- **ELM11 Adaptation**: `screen.drawRectF()` (rectangles only, circles approximated)
- **Learning Focus**: Shape rendering, color setting, basic geometry

### Animation (`animation.lua`)
- **Concept**: Frame-based animation and object movement
- **Love2D Equivalent**: `love.update()`, `love.draw()` with position updates
- **ELM11 Adaptation**: `onTick()` and `onDraw()` callbacks with time-based movement
- **Learning Focus**: Game loops, smooth animation, input-driven movement

### Input Demo (`input_demo.lua`)
- **Concept**: Input detection and response
- **Love2D Equivalent**: `love.keyboard.isDown()`, `love.mouse.getPosition()`
- **ELM11 Adaptation**: `property.getBool()` for buttons, simulated mouse position
- **Learning Focus**: Input polling, state management, user interaction

### Particles (`particles.lua`)
- **Concept**: Particle systems for visual effects
- **Love2D Equivalent**: `love.graphics.draw(particleSystem)`
- **ELM11 Adaptation**: Custom particle class with manual update/render loops
- **Learning Focus**: Object-oriented Lua, lifetime management, emitter systems

## API Translation Reference

| Love2D API | ELM11 Equivalent | Notes |
|------------|------------------|-------|
| `love.graphics.print()` | `screen.drawText(x, y, text)` | Text rendering |
| `love.graphics.rectangle()` | `screen.drawRectF(x, y, w, h)` | Filled rectangles |
| `love.graphics.setColor()` | `screen.setColor(r, g, b)` | RGB color (0-255) |
| `love.keyboard.isDown()` | `property.getBool("button_*")` | Button input |
| `love.update(dt)` | `onTick()` | Game logic update |
| `love.draw()` | `onDraw()` | Screen rendering |
| `love.graphics.clear()` | `screen.drawRectF(0,0,SCREEN_WIDTH,SCREEN_HEIGHT)` | Clear screen |

## Running Examples

Use the ELM11 Interface (`python3 elm11_interface.py`) and select "Love2D Examples" from the main menu. Choose any example to load and run it directly on your ELM11 device.

## Educational Value

These examples serve as:
- **API Learning**: Understanding ELM11's screen and input APIs
- **Concept Translation**: How Love2D concepts map to embedded systems
- **Game Development Basics**: Fundamental patterns for creating interactive applications
- **Lua Programming**: Object-oriented patterns, callbacks, and state management

## Constraints and Adaptations

- **Display**: 288x160 monochrome (no alpha blending, limited colors)
- **Input**: Property-based button system (no mouse, no keyboard events)
- **Performance**: 66MHz processor, limited memory
- **Graphics**: Rectangle-based drawing only (no circles, lines, or complex shapes)

Each example includes comments explaining the Love2D origins and ELM11 adaptations to help developers understand the translation process.