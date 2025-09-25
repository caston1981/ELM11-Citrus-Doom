#!/usr/bin/env python3
# ELM11 Serial Communication Test Script
# This script opens a serial connection to the ELM11 and sends a test command.
# It prints any response from the ELM11 to verify communication.

import serial
import time
import sys

# Adjust these as needed for your system
SERIAL_PORT = '/dev/ttyUSB0'  # Or /dev/ttyACM0, check with 'ls /dev/tty*'
BAUD_RATE = 115200             # ELM11 default baud rate
TIMEOUT = 2                   # seconds

try:
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=TIMEOUT)
    print(f"Opened serial port {SERIAL_PORT} at {BAUD_RATE} baud.")
except Exception as e:
    print(f"Failed to open serial port: {e}")
    sys.exit(1)

# Give ELM11 time to boot/reset
print("Waiting for ELM11 to be ready...")
time.sleep(2)

# Send a newline to trigger menu/REPL prompt
ser.write(b'\r\n')
ser.flush()

# Wait for response
print("Reading response from ELM11...")
response = ser.read(256)
print("Received:")
print(response.decode(errors='replace'))

# Optionally, send a Lua command to test REPL
test_cmd = 'print("ELM11 OK")\r\n'
ser.write(test_cmd.encode())
ser.flush()
time.sleep(0.5)
response2 = ser.read(256)
print("Lua REPL response:")
print(response2.decode(errors='replace'))

ser.close()
print("Test complete. If you see 'ELM11 OK' above, serial and REPL are working!")
