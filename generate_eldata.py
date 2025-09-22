# ELM11 Data Generator
# Simplified version that only loads map geometry data (no textures/sprites)

import os
import sys
import struct
import json

# Simple WAD reader for basic map data
class SimpleWADReader:
    def __init__(self, wad_path):
        self.wad_file = open(wad_path, 'rb')
        self.header = self.read_header()
        self.directory = self.read_directory()

    def read_header(self):
        self.wad_file.seek(0)
        wad_type = self.wad_file.read(4).decode('ascii')
        num_lumps = struct.unpack('<I', self.wad_file.read(4))[0]
        dir_offset = struct.unpack('<I', self.wad_file.read(4))[0]
        return {'wad_type': wad_type, 'num_lumps': num_lumps, 'dir_offset': dir_offset}

    def read_directory(self):
        self.wad_file.seek(self.header['dir_offset'])
        directory = []
        for i in range(self.header['num_lumps']):
            offset = struct.unpack('<I', self.wad_file.read(4))[0]
            size = struct.unpack('<I', self.wad_file.read(4))[0]
            name = self.wad_file.read(8).decode('ascii').rstrip('\x00')
            directory.append({'lump_offset': offset, 'lump_size': size, 'lump_name': name})
        return directory

    def read_vertex(self, offset):
        self.wad_file.seek(offset)
        x = struct.unpack('<h', self.wad_file.read(2))[0]
        y = struct.unpack('<h', self.wad_file.read(2))[0]
        return {'x': x, 'y': y}

    def read_linedef(self, offset):
        self.wad_file.seek(offset)
        start_vertex = struct.unpack('<H', self.wad_file.read(2))[0]
        end_vertex = struct.unpack('<H', self.wad_file.read(2))[0]
        flags = struct.unpack('<H', self.wad_file.read(2))[0]
        line_type = struct.unpack('<H', self.wad_file.read(2))[0]
        sector_tag = struct.unpack('<H', self.wad_file.read(2))[0]
        front_sidedef = struct.unpack('<H', self.wad_file.read(2))[0]
        back_sidedef = struct.unpack('<H', self.wad_file.read(2))[0]
        return {
            'start_vertex_id': start_vertex,
            'end_vertex_id': end_vertex,
            'flags': flags,
            'line_type': line_type,
            'sector_tag': sector_tag,
            'front_sidedef_id': front_sidedef,
            'back_sidedef_id': back_sidedef
        }

    def read_sector(self, offset):
        self.wad_file.seek(offset)
        floor_height = struct.unpack('<h', self.wad_file.read(2))[0]
        ceil_height = struct.unpack('<h', self.wad_file.read(2))[0]
        floor_texture = self.wad_file.read(8).decode('ascii').rstrip('\x00')
        ceil_texture = self.wad_file.read(8).decode('ascii').rstrip('\x00')
        light_level = struct.unpack('<H', self.wad_file.read(2))[0]
        special_type = struct.unpack('<H', self.wad_file.read(2))[0]
        tag = struct.unpack('<H', self.wad_file.read(2))[0]
        return {
            'floor_height': floor_height,
            'ceil_height': ceil_height,
            'floor_texture': floor_texture,
            'ceil_texture': ceil_texture,
            'light_level': light_level,
            'special_type': special_type,
            'tag': tag
        }

    def read_thing(self, offset):
        self.wad_file.seek(offset)
        x = struct.unpack('<h', self.wad_file.read(2))[0]
        y = struct.unpack('<h', self.wad_file.read(2))[0]
        angle = struct.unpack('<H', self.wad_file.read(2))[0]
        thing_type = struct.unpack('<H', self.wad_file.read(2))[0]
        flags = struct.unpack('<H', self.wad_file.read(2))[0]
        return {'x': x, 'y': y, 'angle': angle, 'type': thing_type, 'flags': flags}

    def read_node(self, offset):
        self.wad_file.seek(offset)
        x = struct.unpack('<h', self.wad_file.read(2))[0]
        y = struct.unpack('<h', self.wad_file.read(2))[0]
        dx = struct.unpack('<h', self.wad_file.read(2))[0]
        dy = struct.unpack('<h', self.wad_file.read(2))[0]
        bbox_left = [struct.unpack('<h', self.wad_file.read(2))[0] for _ in range(4)]
        bbox_right = [struct.unpack('<h', self.wad_file.read(2))[0] for _ in range(4)]
        bbox_top = [struct.unpack('<h', self.wad_file.read(2))[0] for _ in range(4)]
        bbox_bottom = [struct.unpack('<h', self.wad_file.read(2))[0] for _ in range(4)]
        left_child = struct.unpack('<H', self.wad_file.read(2))[0]
        right_child = struct.unpack('<H', self.wad_file.read(2))[0]
        return {
            'x': x, 'y': y, 'dx': dx, 'dy': dy,
            'bbox_left': bbox_left, 'bbox_right': bbox_right,
            'bbox_top': bbox_top, 'bbox_bottom': bbox_bottom,
            'left_child': left_child, 'right_child': right_child
        }

    def read_sub_sector(self, offset):
        self.wad_file.seek(offset)
        first_seg = struct.unpack('<H', self.wad_file.read(2))[0]
        num_segs = struct.unpack('<H', self.wad_file.read(2))[0]
        return {'first_seg': first_seg, 'num_segs': num_segs}

    def read_segment(self, offset):
        self.wad_file.seek(offset)
        start_vertex = struct.unpack('<H', self.wad_file.read(2))[0]
        end_vertex = struct.unpack('<H', self.wad_file.read(2))[0]
        angle = struct.unpack('<H', self.wad_file.read(2))[0]
        linedef = struct.unpack('<H', self.wad_file.read(2))[0]
        direction = struct.unpack('<H', self.wad_file.read(2))[0]
        offset_val = struct.unpack('<H', self.wad_file.read(2))[0]
        return {
            'start_vertex_id': start_vertex,
            'end_vertex_id': end_vertex,
            'angle': angle,
            'linedef_id': linedef,
            'direction': direction,
            'offset': offset_val
        }

class ELM11WADData:
    LUMP_INDICES = {
        'THINGS': 1, 'LINEDEFS': 2, 'SIDEDEFS': 3, 'VERTEXES': 4, 'SEGS': 5,
        'SSECTORS': 6, 'NODES': 7, 'SECTORS': 8, 'REJECT': 9, 'BLOCKMAP': 10
    }

    def __init__(self, wad_path, map_name):
        self.reader = SimpleWADReader(wad_path)
        self.map_name = map_name

        self.map_index = self.get_lump_index(map_name)
        if self.map_index is False:
            raise ValueError(f"Map {map_name} not found in WAD")

        print(f"Loading map {map_name} at index {self.map_index}")

        # Load basic map data
        self.vertexes = self.get_lump_data('VERTEXES', self.reader.read_vertex, 4)
        self.linedefs = self.get_lump_data('LINEDEFS', self.reader.read_linedef, 14)
        self.sectors = self.get_lump_data('SECTORS', self.reader.read_sector, 26)
        self.things = self.get_lump_data('THINGS', self.reader.read_thing, 10)
        self.nodes = self.get_lump_data('NODES', self.reader.read_node, 28)
        self.sub_sectors = self.get_lump_data('SSECTORS', self.reader.read_sub_sector, 4)
        self.segments = self.get_lump_data('SEGS', self.reader.read_segment, 12)

        print(f"Loaded: {len(self.vertexes)} verts, {len(self.linedefs)} lines, {len(self.things)} things, {len(self.nodes)} nodes")

    def get_lump_index(self, lump_name):
        for i, lump in enumerate(self.reader.directory):
            if lump['lump_name'] == lump_name:
                return i
        return False

    def get_lump_data(self, lump_type, reader_func, num_bytes):
        lump_index = self.map_index + self.LUMP_INDICES[lump_type]
        if lump_index >= len(self.reader.directory):
            return []

        lump_info = self.reader.directory[lump_index]
        if lump_info['lump_name'] != lump_type:
            return []

        count = lump_info['lump_size'] // num_bytes
        data = []
        for i in range(count):
            offset = lump_info['lump_offset'] + i * num_bytes
            data.append(reader_func(offset))
        return data

# Output directory for data files
OUTPUT_DIR = "eldata"

def ensure_output_dir():
    if not os.path.exists(OUTPUT_DIR):
        os.makedirs(OUTPUT_DIR)

def generate_lua_table(data):
    """Convert data dictionary to Lua table format"""
    lines = ["return {"]

    for key, value in data.items():
        lines.append(f"    {key} = {{")
        if isinstance(value, list) and value and isinstance(value[0], list):
            # 2D array
            for item in value:
                lines.append(f"        {{{', '.join(str(x) for x in item)}}},")
        else:
            # 1D array or other
            for item in value:
                if isinstance(item, list):
                    lines.append(f"        {{{', '.join(str(x) for x in item)}}},")
                else:
                    lines.append(f"        {item},")
        lines.append("    },")

    lines.append("}")
    return "\n".join(lines)

def write_data_file(filename, content):
    """Write data to a file"""
    with open(os.path.join(OUTPUT_DIR, filename), 'w') as f:
        f.write(content)

OUTPUT_DIR = "eldata"

def ensure_output_dir():
    """Ensure output directory exists"""
    if not os.path.exists(OUTPUT_DIR):
        os.makedirs(OUTPUT_DIR)

def generate_eldata(wad_path, map_name):
    ensure_output_dir()

    print(f"Loading {wad_path} map {map_name}...")

    try:
        wad = ELM11WADData(wad_path, map_name)

        # Convert data to simple format for ELM11
        level_data = {
            'vertexes': [[v['x'], v['y']] for v in wad.vertexes],
            'linedefs': [[l['start_vertex_id'], l['end_vertex_id'], l['flags'], l['line_type'],
                         l['front_sidedef_id'], l['back_sidedef_id']] for l in wad.linedefs],
            'sectors': [[s['floor_height'], s['ceil_height'], s['floor_texture'], s['ceil_texture'],
                        s['light_level'], s['special_type'], s['tag']] for s in wad.sectors],
            'things': [[t['x'], t['y'], t['angle'], t['type'], t['flags']] for t in wad.things],
            'nodes': [[n['x'], n['y'], n['dx'], n['dy'],
                      n['left_child'], n['right_child']] for n in wad.nodes],
            'sub_sectors': [[ss['first_seg'], ss['num_segs']] for ss in wad.sub_sectors],
            'segments': [[s['start_vertex_id'], s['end_vertex_id'], s['angle'], s['linedef_id'],
                         s['direction'], s['offset']] for s in wad.segments]
        }

        # Save as Lua table for ELM11
        lua_data = generate_lua_table(level_data)
        filename = f"doom_data_{map_name.lower()}.lua"
        write_data_file(filename, lua_data)

        print(f"Generated {filename} ({len(lua_data)} chars)")
        print(f"Level data: {len(level_data['vertexes'])} verts, {len(level_data['linedefs'])} lines, {len(level_data['things'])} things")

    except Exception as e:
        print(f"Error processing WAD: {e}")
        import traceback
        traceback.print_exc()
        return False

    return True

if __name__ == "__main__":
    if len(sys.argv) >= 3:
        wad_path = sys.argv[1]
        map_name = sys.argv[2]
    else:
        # Default to DOOM1.WAD E1M1
        wad_path = "wad/DOOM1.WAD"
        map_name = "E1M1"

    print(f"Generating ELM11 data from {wad_path} map {map_name}")
    success = generate_eldata(wad_path, map_name)

    if success:
        print("Data generation complete!")
        print(f"Files saved in {OUTPUT_DIR}/ directory")
    else:
        print("Data generation failed!")
        sys.exit(1)