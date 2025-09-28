import matplotlib.pyplot as plt
import matplotlib.patches as patches

# Create figure and axis
fig, ax = plt.subplots(figsize=(12, 8))
ax.set_xlim(-1, 15)
ax.set_ylim(-1, 20)
ax.axis('off')

# Draw ELM11 board outline
board = patches.Rectangle((0, 0), 3, 18, linewidth=2, edgecolor='black', facecolor='lightblue')
ax.add_patch(board)
ax.text(1.5, 19, 'ELM11 Board', ha='center', va='bottom', fontsize=12, fontweight='bold')

# Draw GPIO header (2x18 pins)
header_x = 3
header_y = 0
header_width = 0.5
header_height = 18
header = patches.Rectangle((header_x, header_y), header_width, header_height, linewidth=1, edgecolor='black', facecolor='gray')
ax.add_patch(header)

# Label header pins (simplified - showing GPIO 0-15)
for i in range(18):
    if i < 16:
        pin_label = f'GPIO{i}'
    elif i == 16:
        pin_label = 'GND'
    else:
        pin_label = 'VCC'
    ax.text(header_x + header_width/2, i + 0.5, pin_label, ha='center', va='center', fontsize=8)

# Draw breadboard
breadboard_x = 6
breadboard_y = 0
breadboard_width = 6
breadboard_height = 18
breadboard = patches.Rectangle((breadboard_x, breadboard_y), breadboard_width, breadboard_height, linewidth=2, edgecolor='black', facecolor='lightgreen')
ax.add_patch(breadboard)
ax.text(breadboard_x + breadboard_width/2, 19, 'Breadboard', ha='center', va='bottom', fontsize=12, fontweight='bold')

# Draw LEDs and resistors on breadboard
led_spacing = 1
for i in range(16):
    y_pos = i + 1

    # LED (circle)
    led = patches.Circle((breadboard_x + 1, y_pos), 0.2, linewidth=1, edgecolor='black', facecolor='red')
    ax.add_patch(led)
    ax.text(breadboard_x + 1, y_pos - 0.5, f'LED{i}', ha='center', fontsize=6)

    # Resistor (rectangle)
    resistor = patches.Rectangle((breadboard_x + 2.5, y_pos - 0.1), 1, 0.2, linewidth=1, edgecolor='black', facecolor='orange')
    ax.add_patch(resistor)
    ax.text(breadboard_x + 3, y_pos - 0.5, '330Ω', ha='center', fontsize=6)

# Draw wires from header to breadboard
for i in range(16):
    y_pos = i + 0.5
    # Wire from GPIO pin to LED anode
    ax.plot([header_x + header_width, breadboard_x], [y_pos, y_pos], 'blue', linewidth=1)

# Draw ground connection
# Wire from GND pin to breadboard ground rail
ax.plot([header_x + header_width, breadboard_x + breadboard_width], [16.5, 16.5], 'black', linewidth=2)
ax.text(breadboard_x + breadboard_width - 0.5, 16, 'GND Rail', ha='right', fontsize=8)

# Draw ground rail on breadboard
ground_rail = patches.Rectangle((breadboard_x, 16), breadboard_width, 0.5, linewidth=1, edgecolor='black', facecolor='silver')
ax.add_patch(ground_rail)

# Connect resistors to ground rail
for i in range(16):
    y_pos = i + 1
    ax.plot([breadboard_x + 3.5, breadboard_x + breadboard_width], [y_pos, 16.25], 'black', linewidth=1)

# Add title
ax.text(7.5, 20.5, 'ELM11 GPIO LED Test Wiring Diagram', ha='center', fontsize=14, fontweight='bold')

plt.tight_layout()
plt.savefig('/home/chris/ELM11-Citrus-Doom/gpio_wiring_diagram.png', dpi=150, bbox_inches='tight')
print("Wiring diagram saved as gpio_wiring_diagram.png")