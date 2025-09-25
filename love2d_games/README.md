# Love2D Games for ELM11

This folder contains complete Love2D games adapted for the ELM11 microcontroller platform. Each game has been ported from the [Love2D-Simple-Games repository](https://github.com/danielnaoexiste/Love2D-Simple-Games) and adapted to work within ELM11's constraints.

## Available Games

### LovePong (`love_pong.lua`)
- **Original**: Complete Pong clone with paddle physics, ball mechanics, and scoring
- **ELM11 Adaptation**: Two-player Pong with property-based controls
- **Controls**:
  - Player 1 (Left): UP/DOWN buttons to move paddle
  - Player 2 (Right): A/B buttons to move paddle
  - START: Begin game / restart after win
- **Features**: Ball physics, paddle collision, scoring to 5, win detection
- **Gameplay**: First to 5 points wins

### LoveBirb (`love_birb.lua`)
- **Original**: Flappy Bird clone with procedural pipe generation
- **ELM11 Adaptation**: Bird physics with gravity, pipe obstacles, and scoring
- **Controls**:
  - A or START: Flap (jump)
- **Features**: Gravity physics, pipe generation, collision detection, scoring system
- **Gameplay**: Navigate through pipes without hitting them, score by passing pipes

### Love2D Snake (`love2d_snake.lua`)
- **Original**: Classic Snake game with grid-based movement
- **Love2D Adaptation**: Full Love2D-style implementation with `love.load()`, `love.update()`, `love.draw()`
- **Controls**:
  - LEFT/RIGHT/UP/DOWN: Change snake direction
  - START: Begin game / restart after game over
- **Features**: Grid-based movement, food spawning, collision detection, score tracking
- **Gameplay**: Eat food to grow, avoid walls and self-collision

### Love2D Pac-Man (`love2d_pacman.lua`)
- **Original**: Classic Pac-Man with maze navigation and ghost AI
- **Love2D Adaptation**: Love2D-style game structure with proper initialization and update loops
- **Controls**:
  - LEFT/RIGHT/UP/DOWN: Move Pac-Man
  - START: Begin game / restart / next level
- **Features**: Maze layout, pellet collection, ghost AI, lives system, level progression
- **Gameplay**: Navigate maze, eat all pellets, avoid ghosts

### Love2D Space Invaders (`love2d_space_invaders.lua`)
- **Original**: Classic Space Invaders with alien formations and shooting
- **Love2D Adaptation**: Complete Love2D pattern implementation with game states and rendering
- **Controls**:
  - LEFT/RIGHT: Move player
  - A: Shoot bullets
  - START: Begin game / restart after game over
- **Features**: Alien formations, bullet physics, collision detection, scoring, lives
- **Gameplay**: Shoot aliens while avoiding their bullets, survive waves

## Technical Adaptations

### Display Constraints
- **Resolution**: Adapted from various resolutions (432x243, 340x388, etc.) to 288x160
- **Colors**: Full RGB565 color display - games can use rich color palettes
- **Drawing**: Rectangle-based rendering only (no circles, lines, or complex shapes)

### Input System
- **Love2D**: `love.keyboard.isDown()` for real-time input
- **ELM11**: `property.getBool()` for button states
- **Control Mapping**:
  - Arrow keys → UP/DOWN/LEFT/RIGHT buttons
  - Space/A → A button
  - Enter/Start → START button

### Audio
- **Love2D**: Sound effects using `love.audio.newSource()`
- **ELM11**: No audio support - sound effects removed

### Libraries
- **Love2D**: Uses external libraries (Classic, Push, Bump)
- **ELM11**: All code rewritten to work without external dependencies

### Physics & Collision
- **Love2D**: Advanced physics libraries (Bump.lua)
- **ELM11**: Custom collision detection and simple physics
- **Simplifications**: Axis-aligned bounding box collision, basic gravity

## API Translation Reference

| Love2D API | ELM11 Equivalent | Notes |
|------------|------------------|-------|
| `love.load()` | *(Called in script)* | Game initialization |
| `love.update(dt)` | `onTick()` | Game logic updates |
| `love.draw()` | `onDraw()` | Screen rendering |
| `love.keypressed(key)` | `property.getBool()` | Input handling |
| `love.graphics.rectangle()` | `screen.drawRectF()` | Rectangle drawing |
| `love.graphics.print()` | `screen.drawText()` | Text rendering |
| `love.graphics.clear()` | `screen.drawRectF()` | Screen clearing |
| `love.window.setMode()` | *(Fixed 288x160)* | Display resolution |
| `love.keyboard.isDown()` | `property.getBool()` | Real-time input |
| `love.timer.getDelta()` | *(Fixed 1/60)* | Frame timing |

## Running the Games

Use the ELM11 Interface (`python3 elm11_interface.py`) and select "Love2D Games" from the main menu. Choose any game to load and run it directly on your ELM11 device.

## Educational Value

These games demonstrate:
- **Game Architecture**: State management, game loops, input handling
- **Physics Simulation**: Gravity, collision detection, movement
- **Game Mechanics**: Scoring, win/lose conditions, procedural generation
- **Code Adaptation**: Porting concepts between different platforms
- **Embedded Development**: Working within hardware constraints

## Development Notes

- All games maintain core gameplay from originals while adapting to ELM11 limitations
- Physics and collision detection simplified for performance
- Visual design optimized for 288x160 color TFT display
- Input controls mapped to available ELM11 buttons
- Games designed to run at 60 FPS with basic timing assumptions

Each game includes comments explaining the Love2D origins and ELM11 adaptations, making them useful for learning cross-platform game development.