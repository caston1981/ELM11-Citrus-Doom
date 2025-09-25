#!/usr/bin/env python3
# ELM11 Interactive Interface
# Provides a menu-driven interface to interact with ELM11 via serial
# Allows running Lua code and has a placeholder for Citrus Doom

import serial
import time
import sys
import glob
import questionary

# Serial configuration
SERIAL_PORTS = glob.glob('/dev/ttyUSB*') + glob.glob('/dev/ttyACM*')
if not SERIAL_PORTS:
    SERIAL_PORTS = ['/dev/ttyUSB0']  # fallback
BAUD_RATES = [115200, 9600, 19200, 38400, 57600]
TIMEOUT = 2

def connect_serial():
    """Connect to ELM11 serial port"""
    for port in SERIAL_PORTS:
        for baud in BAUD_RATES:
            try:
                ser = serial.Serial(port, baud, timeout=TIMEOUT)
                print(f"Connected to {port} at {baud} baud")
                # Wait for ELM11 to be ready
                time.sleep(2)
                # Clear any pending data
                ser.read(1024)
                # Ensure we're in REPL mode (exit command mode if in it)
                ser.write(b'q\r\n')  # Exit any listing mode
                ser.flush()
                time.sleep(0.5)
                ser.read(256)  # Clear response
                ser.write(b'exit\r\n')
                ser.flush()
                time.sleep(0.5)
                ser.read(256)  # Clear response
                ser.write(b'exit\r\n')  # Send again just in case
                ser.flush()
                time.sleep(0.5)
                ser.read(256)  # Clear response
                # Send newline to get prompt
                ser.write(b'\r\n')
                ser.flush()
                time.sleep(0.5)
                ser.read(256)  # Clear prompt
                return ser
            except Exception as e:
                continue
    print("Failed to connect to ELM11")
    return None

def send_lua_code(ser, code):
    """Send Lua code to ELM11 and return response"""
    try:
        ser.write((code + '\r\n').encode())
        ser.flush()
        time.sleep(0.5)
        response = ser.read(1024)
        return response.decode(errors='replace')
    except Exception as e:
        return f"Error: {e}"

def run_lua_interactive(ser):
    """Interactive Lua code runner"""
    examples = {
        "Print Hello World": 'print("Hello, World!")',
        "Simple Math": 'print(2 + 3 * 4)',
        "Variable Assignment": 'x = 42; print("x =", x)',
        "Loop Example": 'for i = 1, 5 do print("Count:", i) end',
        "Function Example": 'function greet(name) return "Hello, " .. name end; print(greet("ELM11"))',
        "Table Example": 't = {a=1, b=2}; print(t.a, t.b)',
        "ELM11 Specific - GPIO": 'print("GPIO functions: pin_mode, digital_write, etc.")',
        "ELM11 Specific - Time": 'print("Current time:", os.time())'
    }

    while True:
        choice = questionary.select(
            "Lua Code Runner:",
            choices=[
                "Enter Custom Code",
                "Choose Example",
                "Back to Main Menu"
            ]
        ).ask()

        if choice == "Enter Custom Code":
            code = questionary.text("Enter Lua code:").ask()
            if code and code.strip():
                print("Sending to ELM11...")
                response = send_lua_code(ser, code)
                print("Response:")
                print(response)
                print("-" * 40)
        elif choice == "Choose Example":
            example_choice = questionary.select(
                "Select an example:",
                choices=list(examples.keys()) + ["Back"]
            ).ask()
            if example_choice != "Back":
                code = examples[example_choice]
                print(f"Example code: {code}")
                confirm = questionary.confirm("Send this code to ELM11?").ask()
                if confirm:
                    print("Sending to ELM11...")
                    response = send_lua_code(ser, code)
                    print("Response:")
                    print(response)
                    print("-" * 40)
        elif choice == "Back to Main Menu":
            break

def enter_command_mode(ser):
    """Enter Command Mode and provide interactive interface"""
    print("Entering Command Mode...")
    ser.write(b'command\r\n')
    ser.flush()
    time.sleep(0.5)
    response = ser.read(512)
    print("Command Mode response:")
    print(response.decode(errors='replace'))
    
    while True:
        choice = questionary.select(
            "Command Mode:",
            choices=[
                "List Commands",
                "Show Help",
                "Send Custom Command",
                "Exit to REPL"
            ]
        ).ask()

        if choice == "List Commands":
            ser.write(b'list|commands\r\n')
            ser.flush()
            time.sleep(1)
            response = ser.read(2048)
            print("Commands list:")
            print(response.decode(errors='replace'))
        elif choice == "Show Help":
            ser.write(b'list|help\r\n')
            ser.flush()
            time.sleep(1)
            response = ser.read(4096)  # Help is long
            print("Help:")
            print(response.decode(errors='replace'))
            # Note: This might require scrolling, but we'll capture what we can
        elif choice == "Send Custom Command":
            cmd = questionary.text("Enter command (e.g., 'list|programs'):").ask()
            if cmd.strip():
                ser.write((cmd + '\r\n').encode())
                ser.flush()
                time.sleep(1)
                response = ser.read(2048)
                print("Response:")
                print(response.decode(errors='replace'))
        elif choice == "Exit to REPL":
            ser.write(b'exit\r\n')
            ser.flush()
            time.sleep(0.5)
            response = ser.read(256)
            print("Exited to REPL")
            break

def show_boot_log(ser):
    """Attempt to show boot log by resetting device"""
    print("To show the boot log, the ELM11 needs to be reset.")
    print("This will disconnect the serial connection.")
    confirm = questionary.confirm("Proceed with reset? (You may need to restart the interface afterward)").ask()
    if confirm:
        # Try to send a reset command if available
        ser.write(b'reset\r\n')  # Assuming there's a reset command
        ser.flush()
        time.sleep(1)
        ser.close()
        print("Device reset. Please unplug/replug or press RST button to see boot log.")
        print("Restart the interface after the device reboots.")
        return True  # Indicate we closed the connection
    return False

def run_games_menu(ser):
    """Menu for selecting different games to run"""
    while True:
        game_choice = questionary.select(
            "Select a game to run:",
            choices=[
                "Citrus Doom",
                "Pong",
                "Snake",
                "Pac-Man", 
                "Space Invaders",
                "Back to Main Menu"
            ]
        ).ask()

        if game_choice == "Citrus Doom":
            print("Citrus Doom - A Doom port for ELM11")
            print("This would load the full Doom engine and level data")
            print("Status: Not implemented yet.")
        elif game_choice == "Pong":
            print("Pong - Classic paddle ball game")
            print("Player vs AI paddle with scoring system")
            print("Status: Code written (games/pong/pong.lua)")
            print("To run: Upload games/pong/pong.lua to ELM11 and execute")
            print("Controls: Use Up/Down inputs to move paddle, Start to begin")
        elif game_choice == "Snake":
            print("Snake - Guide the snake to eat food and grow")
            print("Classic arcade game with increasing difficulty")
            print("Status: Code written (games/snake/snake.lua)")
            print("To run: Upload games/snake/snake.lua to ELM11 and execute")
            print("Controls: Use Up/Down/Left/Right inputs, Start to begin/restart")
        elif game_choice == "Pac-Man":
            print("Pac-Man - Navigate mazes eating dots while avoiding ghosts")
            print("Collect power pellets to turn the tables on ghosts")
            print("Status: Code written (games/pacman/pacman.lua)")
            print("To run: Upload games/pacman/pacman.lua to ELM11 and execute")
            print("Controls: Up/Down/Left/Right to move Pac-Man")
        elif game_choice == "Space Invaders":
            print("Space Invaders - Defend Earth from alien invaders")
            print("Shoot aliens while avoiding their fire")
            print("Status: Code written (games/space_invaders/space_invaders.lua)")
            print("To run: Upload games/space_invaders/space_invaders.lua to ELM11 and execute")
            print("Controls: Left/Right to move, Shoot to fire")
        elif game_choice == "Back to Main Menu":
            break
        
        input("Press Enter to continue...")

def run_love2d_examples(ser):
    """Menu for selecting Love2D-style examples adapted for ELM11"""
    while True:
        example_choice = questionary.select(
            "Select a Love2D Example (adapted for ELM11):",
            choices=[
                "Hello World",
                "Shapes",
                "Animation",
                "Input Demo",
                "Particles",
                "Back to Main Menu"
            ]
        ).ask()

        if example_choice == "Back to Main Menu":
            break

        # Map menu choices to file names
        file_map = {
            "Hello World": "hello_world.lua",
            "Shapes": "shapes.lua",
            "Animation": "animation.lua",
            "Input Demo": "input_demo.lua",
            "Particles": "particles.lua"
        }

        filename = file_map.get(example_choice)
        if filename:
            filepath = f"love2d_examples/{filename}"
            try:
                with open(filepath, 'r') as f:
                    lua_code = f.read()

                print(f"\nLoading {example_choice} example...")
                print(f"Running {filepath} on ELM11...")

                # Send the Lua code to ELM11
                response = send_lua_code(ser, lua_code)

                print(f"\n{example_choice} example loaded successfully!")
                print("The example should now be running on your ELM11 device.")

            except FileNotFoundError:
                print(f"Error: {filepath} not found. Please ensure the example files exist.")
            except Exception as e:
                print(f"Error loading example: {e}")

        input("\nPress Enter to continue...")

def run_love2d_games(ser):
    """Menu for selecting Love2D games adapted for ELM11"""
    while True:
        game_choice = questionary.select(
            "Select a Love2D Game (adapted for ELM11):",
            choices=[
                "LovePong - Pong Clone",
                "LoveBirb - Flappy Bird Clone",
                "LovePlatform - Platformer Prototype",
                "Love2D Snake - Snake Game",
                "Love2D Pac-Man - Pac-Man Game",
                "Love2D Space Invaders - Space Invaders Game",
                "Back to Main Menu"
            ]
        ).ask()

        if game_choice == "Back to Main Menu":
            break

        # Map menu choices to file names
        file_map = {
            "LovePong - Pong Clone": "love_pong.lua",
            "LoveBirb - Flappy Bird Clone": "love_birb.lua",
            "LovePlatform - Platformer Prototype": "love_platform.lua",
            "Love2D Snake - Snake Game": "love2d_snake.lua",
            "Love2D Pac-Man - Pac-Man Game": "love2d_pacman.lua",
            "Love2D Space Invaders - Space Invaders Game": "love2d_space_invaders.lua"
        }

        filename = file_map.get(game_choice.split(" - ")[0])
        if filename:
            filepath = f"love2d_games/{filename}"
            try:
                with open(filepath, 'r') as f:
                    lua_code = f.read()

                print(f"\nLoading {game_choice}...")
                print(f"Running {filepath} on ELM11...")

                # Send the Lua code to ELM11
                response = send_lua_code(ser, lua_code)

                print(f"\n{game_choice} loaded successfully!")
                print("The game should now be running on your ELM11 device.")

            except FileNotFoundError:
                print(f"Error: {filepath} not found. Please ensure the game files exist.")
            except Exception as e:
                print(f"Error loading game: {e}")

        input("\nPress Enter to continue...")

def main():
    print("ELM11 Interactive Interface")
    print("=" * 40)

    ser = connect_serial()
    if not ser:
        sys.exit(1)

    while True:
        choice = questionary.select(
            "Choose an option:",
            choices=[
                "Run Lua Code",
                "Enter Command Mode",
                "Show Boot Log",
                "Run Games",
                "Love2D Examples",
                "Love2D Games",
                "Exit"
            ]
        ).ask()

        if choice == "Run Lua Code":
            run_lua_interactive(ser)
        elif choice == "Enter Command Mode":
            enter_command_mode(ser)
        elif choice == "Show Boot Log":
            if show_boot_log(ser):
                break  # Connection closed, exit loop
        elif choice == "Run Games":
            run_games_menu(ser)
        elif choice == "Love2D Examples":
            run_love2d_examples(ser)
        elif choice == "Love2D Games":
            run_love2d_games(ser)
        elif choice == "Exit":
            break

    ser.close()
    print("Goodbye!")

if __name__ == "__main__":
    main()