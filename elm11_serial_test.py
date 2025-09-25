#!/usr/bin/env python3
# ELM11 Serial Communication Test Script
# This script opens a serial connection to the ELM11 and sends a test command.
# It prints any response from the ELM11 to verify communication.

import serial
import time
import sys

import glob

# Adjust these as needed for your system
SERIAL_PORTS = glob.glob('/dev/ttyUSB*') + glob.glob('/dev/ttyACM*')
if not SERIAL_PORTS:
    SERIAL_PORTS = ['/dev/ttyUSB0']  # fallback
BAUD_RATES = [115200, 9600, 19200, 38400, 57600]  # Try different bauds
TIMEOUT = 2                   # seconds

ser = None
for SERIAL_PORT in SERIAL_PORTS:
    for BAUD_RATE in BAUD_RATES:
        try:
            ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=TIMEOUT)
            print(f"Opened serial port {SERIAL_PORT} at {BAUD_RATE} baud.")
            break
        except Exception as e:
            print(f"Failed to open {SERIAL_PORT} at {BAUD_RATE}: {e}")
            continue
    if ser:
        break
else:
    print("Failed to open any serial port.")
    sys.exit(1)

# Give ELM11 time to boot/reset
print("Waiting for ELM11 to be ready...")
time.sleep(5)

# Send a newline to trigger menu/REPL prompt
ser.write(b'\r\n')
ser.flush()

# Wait for response
print("Reading response from ELM11...")
response = ser.read(256)
print("Received (raw):", repr(response))
print("Received (decoded):")
print(response.decode(errors='replace'))

# Optionally, send a Lua command to test REPL
test_cmd = 'print("ELM11 OK")\r\n'
ser.write(test_cmd.encode())
ser.flush()
time.sleep(0.5)
response2 = ser.read(256)
print("Lua REPL response (raw):", repr(response2))
print("Lua REPL response (decoded):")
print(response2.decode(errors='replace'))

# Enter Command Mode
print("Entering Command Mode...")
ser.write(b'command\r\n')
ser.flush()
time.sleep(0.5)
response3 = ser.read(256)
print("Command Mode entry (raw):", repr(response3))
print("Command Mode entry (decoded):")
print(response3.decode(errors='replace'))

# Show commands menu
print("Requesting commands list...")
ser.write(b'list|commands\r\n')
ser.flush()
time.sleep(0.5)
response4 = ser.read(1024)  # Larger buffer for menu
print("Commands menu (raw):", repr(response4))
print("Commands menu (decoded):")
print(response4.decode(errors='replace'))

ser.close()
print("Test complete. If you see 'ELM11 OK' above, serial and REPL are working!")
