# ELM11 GPIO LED Test Wiring Guide

This guide explains how to wire LEDs and resistors to the ELM11 GPIO header for software testing of the soldered pins.

## Materials Needed
- ELM11 board with soldered 2x18 GPIO header
- 16x standard LEDs (any color)
- 16x 330Ω resistors (or 220Ω-1kΩ range)
- Breadboard
- Jumper wires (male-to-male)
- Power supply for ELM11

## ELM11 GPIO Pin Layout
The ELM11 uses a 2x18 GPIO header with the following pin assignments:
- Pins 0-15: Configurable GPIO pins (used for testing)
- Pin 16: Ground (GND)
- Pin 17: +3.3V or +5V (VCC) - check your board documentation

```
ELM11 GPIO Header (Top View):
  2  4  6  8 10 12 14 16 18 20 22 24 26 28 30 32 34 36
┌─────────────────────────────────────────────────────────┐
│ ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○ │ Pin 17 (VCC)
└─────────────────────────────────────────────────────────┘
  1  3  5  7  9 11 13 15 17 19 21 23 25 27 29 31 33 35
┌─────────────────────────────────────────────────────────┐
│ ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○  ○ │ Pin 16 (GND)
└─────────────────────────────────────────────────────────┘
  GPIO15 GPIO14 ... GPIO1 GPIO0 GND VCC (example layout)
```

*Note: Exact pin mapping may vary. Refer to ELM11 documentation for precise GPIO pin locations.*

## Wiring Instructions

1. **Prepare the Breadboard:**
   - Place the breadboard next to your ELM11 board
   - Identify the ground rail on the breadboard (usually marked with blue or black stripe)

2. **Connect Ground:**
   - Connect ELM11 GND pin (typically pin 16) to the breadboard ground rail using a jumper wire

3. **Wire Each GPIO Pin:**
   For each GPIO pin 0-15:
   - Connect a jumper wire from the GPIO pin to a row on the breadboard
   - Insert an LED into the same row (anode/cathode orientation: longer leg is anode)
   - Connect a 330Ω resistor from the LED cathode (shorter leg) to the ground rail

4. **Power the ELM11:**
   - Connect power to your ELM11 board according to its specifications
   - Do not power the board yet

## Wiring Diagram (Text-based)

```
ELM11 Board                    Breadboard
┌─────────────────┐           ┌─────────────────────┐
│ GPIO0  ○───────┼──────────►│ ○──LED0──┤330Ω├────┼──GND
│ GPIO1  ○───────┼──────────►│ ○──LED1──┤330Ω├────┼──
│ GPIO2  ○───────┼──────────►│ ○──LED2──┤330Ω├────┼──
│ ...            │           │ ...                  │
│ GPIO15 ○───────┼──────────►│ ○──LED15─┤330Ω├────┼──
│ GND    ○───────┼──────────►│ ━━━━━━━━━━━━━━━━━━━━┼──
└─────────────────┘           └─────────────────────┘
```

## Visual Wiring Diagram

A visual diagram can be generated using the provided Python script with matplotlib:

1. Install matplotlib: `pip install matplotlib`
2. Run the diagram generator: `python3 gpio_wiring_diagram.py`
3. The diagram will be saved as `gpio_wiring_diagram.png`

The visual diagram shows:
- ELM11 board with GPIO header
- Breadboard with LEDs and resistors
- Wire connections between GPIO pins and LEDs
- Ground connections

## Safety Notes
- **Current Limiting:** The 330Ω resistors limit current to ~10mA per LED (safe for GPIO pins)
- **Polarity:** LEDs are polarized - connect anode to GPIO, cathode to resistor
- **Power:** Ensure ELM11 is powered correctly before running tests
- **Heat:** GPIO pins can get warm during testing - monitor temperature

## Running the Test
1. Upload `gpio_led_test.lua` to your ELM11 board
2. Power on the ELM11
3. Run the script: `lua gpio_led_test.lua`
4. Observe LEDs lighting up sequentially (1 second each)
5. Press Ctrl+C in the serial terminal to stop the test

## Troubleshooting
- **LED not lighting:** Check wiring polarity and connections
- **Multiple LEDs lit:** Check for short circuits on breadboard
- **Script errors:** Verify GPIO pin numbers match your board's layout
- **Overheating:** Reduce test duration or add heat sinks

## Expected Behavior
- LEDs should light up one at a time in sequence (GPIO0 to GPIO15)
- Each LED stays lit for 1 second, then turns off
- Cycle repeats continuously until stopped
- Serial output shows which pin is being tested

This test verifies that all GPIO pins are properly soldered and functioning as outputs.