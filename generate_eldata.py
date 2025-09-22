# ELM11 Data Generator
# Modified from wad_data.py to output data files for ELM11 flash loading

import os
from wad_reader import WADReader
from asset_data import AssetData
from math import dist, floor as flr, ceil
from code_compressor import compress
import json

# Output directory for data files
OUTPUT_DIR = "eldata"

def ensure_output_dir():
    if not os.path.exists(OUTPUT_DIR):
        os.makedirs(OUTPUT_DIR)

def write_data_file(filename, data):
    """Write packed data to a file"""
    with open(os.path.join(OUTPUT_DIR, filename), 'w') as f:
        f.write(data)

# ... (rest of WADData class from wad_data.py, with modifications)

# In the __init__ or generate method, instead of setting clipboard, write to files
# Example modification:
# self.generate_data()
# write_data_file("doom_data_1.txt", self.rom_data[0])
# etc.

# For now, placeholder
def generate_eldata(wad_path, map_name):
    ensure_output_dir()
    # Load WAD and process as in original
    # Output packed data to files
    print("Generating ELM11 data files...")
    # Placeholder: copy original logic and modify output
    write_data_file("doom_data_1.txt", "sample packed data")
    print("Data files generated in", OUTPUT_DIR)

if __name__ == "__main__":
    generate_eldata("wad/DOOM.WAD", "E1M1")