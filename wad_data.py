from clipboard import copy as SetC
from wad_reader import WADReader
from asset_data import AssetData
from math import dist, floor as flr
from code_compressor import compress
import pygame, time, json
from copy import deepcopy as dcopy
import os

def off_add(a,b):
    return (a[0],a[1]+b)

class WADData:
    LUMP_INDICES = {
        'THINGS': 1, 'LINEDEFS': 2, 'SIDEDEFS': 3, 'VERTEXES': 4, 'SEGS': 5,
        'SSECTORS': 6, 'NODES': 7, 'SECTORS': 8, 'REJECT': 9, 'BLOCKMAP': 10
    }
    LINEDEF_FLAGS = {
        'BLOCKING': 1, 'BLOCK_MONSTERS': 2, 'TWO_SIDED': 4, 'DONT_PEG_TOP': 8,
        'DONT_PEG_BOTTOM': 16, 'SECRET': 32, 'SOUND_BLOCK': 64, 'DONT_DRAW': 128, 'MAPPED': 256
    }

    def __init__(self, WAD, map_name, import_textures=True, skys=["SKY1"]):
        self.reader = WADReader(WAD)

        self.map_index = self.get_lump_index(lump_name=map_name)
        assert str(self.map_index) != str(False), "Map not in WAD"
            
        self.vertexes = self.get_lump_data(
            reader_func=self.reader.read_vertex,
            lump_index=self.map_index + self.LUMP_INDICES['VERTEXES'],
            num_bytes=4  # num bytes per vertex
        )
        self.linedefs = self.get_lump_data(
            reader_func=self.reader.read_linedef,
            lump_index=self.map_index + self.LUMP_INDICES['LINEDEFS'],
            num_bytes=14
        )
        self.nodes = self.get_lump_data(
            reader_func=self.reader.read_node,
            lump_index=self.map_index + self.LUMP_INDICES['NODES'],
            num_bytes=28
        )
        self.sub_sectors = self.get_lump_data(
            reader_func=self.reader.read_sub_sector,
            lump_index=self.map_index + self.LUMP_INDICES['SSECTORS'],
            num_bytes=4
        )
        self.segments = self.get_lump_data(
            reader_func=self.reader.read_segment,
            lump_index=self.map_index + self.LUMP_INDICES['SEGS'],
            num_bytes=12
        )
        self.things = self.get_lump_data(
            reader_func=self.reader.read_thing,
            lump_index=self.map_index + self.LUMP_INDICES['THINGS'],
            num_bytes=10
        )
        self.sidedefs = self.get_lump_data(
            reader_func=self.reader.read_sidedef,
            lump_index=self.map_index + self.LUMP_INDICES['SIDEDEFS'],
            num_bytes=30
        )
        self.sectors = self.get_lump_data(
            reader_func=self.reader.read_sector,
            lump_index=self.map_index + self.LUMP_INDICES['SECTORS'],
            num_bytes=26
        )
        self.blockmap = self.get_lump_data(
            reader_func=self.reader.read_blockmap,
            lump_index=self.map_index + self.LUMP_INDICES['BLOCKMAP'],
            num_bytes=2
        )
        #self.sound = self.get_lump_data(
        #    reader_func=self.reader.read_blockmap,
        #    lump_index=self.map_index + self.LUMP_INDICES['DPSGCOCK'],
        #    num_bytes=2
        #)

        

        self.update_data()
        # ------------------------------- #
        if import_textures:
            names = []
            for i in self.reader.directory:
                names.append(i["lump_name"])
            
            self.asset_data = AssetData(self,skys)
            self.sounds = {}
            for i in names:
                if i[0:2]=="DP":
                    self.sounds[i] = self.asset_data.load_sound(i)
        # ------------------------------- #
        self.reader.close()

    def update_data(self):
        self.update_linedefs()
        self.update_sidedefs()
        self.update_segs()

    def update_sidedefs(self):
        for sidedef in self.sidedefs:
            sidedef.sector = self.sectors[sidedef.sector_id]

    def update_linedefs(self):
        for linedef in self.linedefs:
            linedef.front_sidedef = self.sidedefs[linedef.front_sidedef_id]
            #
            if linedef.back_sidedef_id == 0xFFFF:  # undefined sidedef
                linedef.back_sidedef = None
            else:
                linedef.back_sidedef = self.sidedefs[linedef.back_sidedef_id]

    def update_segs(self):
        for seg in self.segments:
            seg.start_vertex = self.vertexes[seg.start_vertex_id]
            seg.end_vertex = self.vertexes[seg.end_vertex_id]
            seg.linedef = self.linedefs[seg.linedef_id]
            #
            if seg.direction:
                front_sidedef = seg.linedef.back_sidedef
                back_sidedef = seg.linedef.front_sidedef
            else:
                front_sidedef = seg.linedef.front_sidedef
                back_sidedef = seg.linedef.back_sidedef
            #
            seg.front_sector = front_sidedef.sector
            if self.LINEDEF_FLAGS['TWO_SIDED'] & seg.linedef.flags:
                seg.back_sector = back_sidedef.sector
            else:
                seg.back_sector = None

            # convert angles from BAMS to degrees
            seg.angle = (seg.angle << 16) * 8.38190317e-8
            seg.angle = seg.angle + 360 if seg.angle < 0 else seg.angle

            # texture special case
            if seg.front_sector and seg.back_sector and False: #do not want
                if front_sidedef.upper_texture == '-':
                    seg.linedef.front_sidedef.upper_texture = back_sidedef.upper_texture
                if front_sidedef.lower_texture == '-':
                    seg.linedef.front_sidedef.lower_texture = back_sidedef.lower_texture

    @staticmethod
    def print_attrs(obj):
        print()
        for attr in obj.__slots__:
            print(eval(f'obj.{attr}'), end=' ')

    def get_lump_data(self, reader_func, lump_index, num_bytes, header_length=0):
        lump_info = self.reader.directory[lump_index]
        if num_bytes != -1:
            count = lump_info['lump_size'] // num_bytes
            data = []
            for i in range(count):
                offset = off_add(lump_info['lump_offset'],i * num_bytes + header_length)
                data.append(reader_func(offset))
            return data
            

    def get_lump_index(self, lump_name, start=0):
        for index, lump_info in enumerate(self.reader.directory):
            #print(lump_info.values())
            if lump_name in lump_info.values() and index >= start:
                #print("OK")
                return index
        return False

def sq(a):
    factor=2.2
    return tuple([round((i**factor)/(255**(factor-1))) for i in a])

def add(a,b):
    return tuple([a[i]+b[i] for i in range(len(a))])

def sub(a,b):
    return tuple([a[i]-b[i] for i in range(len(a))])

def div(a,b):
    return tuple([i/b for i in a])

def cross(a,b):
    return a[0]*b[1]-a[1]*b[0]

def insert_thinker(thinker):
    global sector_thinkers, map_name

    assert len(thinker)==8, "thinker is "+str(len(thinker))+" long, should be 8 long"

    #print(map_name,thinker)
    
    if thinker in sector_thinkers:
        return sector_thinkers.index(thinker)+1
    else:
        sector_thinkers.append(thinker)
        return len(sector_thinkers)

def find_sector(tag):
    global level_wad,map_name

    return_val = []

    if tag != 0:
        for index in range(len(level_wad.sectors)):
            i = level_wad.sectors[index]
            if i.tag == tag:
                return_val.append(index+1)
    
    return return_val

def find_me(i,a):
    if i<32768:
        g=level_wad.nodes[i]
        if 0>cross([g.dx_partition,g.dy_partition],sub(a,[g.x_partition,g.y_partition])):
            return find_me(g.front_child_id,a)
        else:
            return find_me(g.back_child_id,a)
    else:
        return i-32768

def get_downsize_offset(sprite,res_scale_cur):
    header = sprite[0]
    return (header.left_offset % res_scale_cur, header.top_offset % res_scale_cur)

def round_to(number,round_val):
    return (number//round_val)*round_val

def get_text(file_name):
    file = open(file_name)
    text = file.read()
    file.close()
    
    text = text.replace("\n\n","\n").split("\n")
    out = []
    for i in text:
        out.append(i.split('"')[1])
    return out


if __name__ == '__main__':
    start_time=time.time()
    #,"weapons_at_start.wad","jump_to_crash_zone.wad","enemy_testing.wad"
    file_name=["DOOM.WAD","settings_map.wad","switches_for_666_tags.wad"] # more rightwards ones overwrite leftwards ones
    #map_order=["E"+str(1+i//9)+"M"+str(1+i%9) for i in range(3*9)]
    #map_order=["E1M2"]
    #map_order=["SET1"]+map_order
    #map_order=["SET1","E2M3","E1M1","E1M2","E1M3","E1M4","E1M5","E1M6","E1M7","E1M8"]
    map_order=["SET1"]+["E"+str(1+i//9)+"M"+str(1+i%9) for i in range(4*9)]
    #map_order=["SET1","E1M1","E2M3"] # self explanitory, first level is the settings one
    #map_order[1]="E1M3"
    skys = {"E1":"SKY1","E2":"SKY2","E3":"SKY3","E4":"SKY4"}
    sky_textures = [skys[i] for i in skys]
    sky_order = [(sky_textures.index(skys[i[:2]] if i[:2] in skys else sky_textures[0])+1) for i in map_order]
    #print(sky_order)
    wad = WADData(["wad/"+i for i in file_name], map_name=map_order[0], skys=sky_textures)
    [print("loaded "+i) for i in file_name]
    file = open("things.txt")
    text = file.read()
    file.close()
    thing_lookup = {}
    thing_sprites = []
    for i in text.split("\n"):
        i=i.split("\t")
        thing_lookup[int(i[0])]=i[5]
        if not i[5] in thing_sprites: thing_sprites.append(i[5])
    #print(thing_lookup)
    #print(thing_sprites)

    obj_name = "Citrus Doom"
    base_name = "base_doom"

    path_bits = [os.getenv('APPDATA')+"\\Stormworks\\data\\vehicles\\",".xml"]
    path_in = base_name+".xml"
    path_out = path_bits[0]+obj_name+path_bits[1]

    wall_overrides={"EXITSIGN":1,"EXITDOOR":2,"ORANGE_1":1,"KEYBOARD":1,"HOTAS2":1,"DIFFICUL":2,"LODLAB":2,"FLOORLAB":2} # used to make some walls higher quality than others
    sprite_overrides={"SHEL":1} # used to make some sprites higher quality than others, mostly generated automatically
                                # manually adjusted the shotgun shell pickup since it looks weird at 1/2
    
    orange = pygame.image.load("Orange.png")

    
    

    #print(wad.sound)
    #halt
    force_new_cache = False

    packets = []
    curmax = 8192
    res_scale_walls = 4
    res_scale_flats = 4
    res_scale_sprites = 2
    res_scale_sprites_quality = 2
    res_scale_sprites_projectiles = 2
    res_scale_sprites_weapons = 2
    res_scale_sprites_face = 1
    res_scale_sky = 4
    sky_offset = 16

    TICKRATE = 35

    wall_textures = [*wad.asset_data.wall_textures]
    flat_textures = [*wad.asset_data.flat_textures]
    sprite_textures = [*wad.asset_data.sprites]
    face_textures = [*wad.asset_data.face]
    all_sprites = wad.asset_data.sprites | wad.asset_data.face
    all_sprite_textures = [*all_sprites]
    sound_names = [*wad.sounds]
    
    wall_avs = {}
    flat_avs = {}
    sprite_avs = {}
    sky_avs = {}
    wall_looker = ["-"]+wall_textures
    flat_looker = ["-"]+flat_textures
    pixels = 0
    num = 0

    monster_usable = 512

    blockmap_skip_first = False

    trans_colour = (152, 0, 136)

    for i in face_textures:
        sprite_overrides[i] = res_scale_sprites_face
    
    
    ammo_item_list = ["Bullet","Shell","Rocket","Cells","Fist","Pistol","Chainsaw","Shotgun","Chaingun","Rocket Launcher","Plasma Rifle",
                 "BFG","SSGun","Blue Key","Red Key","Yellow Key"
                 ]
    #print(len(ammo_item_list))
    
    ammo_pickup_list = [{"Bullet":50,"Fist":1,"Pistol":1},{"Bullet":200,"Shell":50,"Rocket":50,"Cells":300},
                   {"Bullet":10},{"Bullet":50},{"Bullet":20,"Chaingun":1},
                   {"Shell":4},{"Shell":20},{"Shell":8,"Shotgun":1},{"Shell":8,"SSGun":1},
                   {"Rocket":1},{"Rocket":5},{"Rocket":2,"Rocket Launcher":1},
                   {"Cells":20},{"Cells":100},{"Cells":40,"Plasma Rifle":1},{"Cells":40,"BFG":1},
                   {"Blue Key":1},{"Red Key":1},{"Yellow Key":1},
                   {"Chainsaw":1},
                   {"Bullet":10,"Shell":4,"Rocket":1,"Cells":20},
                   ]

    ammo_pickup_dict = {"MT_CLIP":3,"MT_MISC17":4,"MT_CHAINGUN":5,
                   "MT_MISC22":6,"MT_MISC23":7,"MT_SHOTGUN":8,"MT_SUPERSHOTGUN":9,
                   "MT_MISC18":10,"MT_MISC19":11,"MT_MISC27":12,
                   "MT_MISC20":13,"MT_MISC21":14,"MT_MISC28":15,"MT_MISC25":16,
                   "MT_MISC4":17,"MT_MISC5":18,"MT_MISC6":19,
                   "MT_MISC9":17,"MT_MISC8":18,"MT_MISC7":19,
                   "MT_MISC26":20,
                   "MT_MISC24":21,
                   }

    health_pickup_list = [("MT_MISC2",(1,200,0,0,0)), # health bonus/potion
                          ("MT_MISC10",(10,100,0,0,0)), # stimpack
                          ("MT_MISC11",(25,100,0,0,0)), # medkit
                          ("MT_MISC12",(100,200,0,0,0)), # sumpercharge/soul sphere
                          ("MT_MISC3",(0,0,1,200,0)), # armor bonus/helmet
                          ("MT_MISC0",(0,0,100,100,0.3)), # armor
                          ("MT_MISC1",(0,0,200,200,0.5)), # megaarmor/combat armor
                          ("MT_MEGA",(200,200,200,200,0.5)), # megasphere
                          ("MT_MISC13",(100,100,0,0,0)), # berserk, only heals
                          ]
    health_pickup_list_zip = [[health_pickup_list[j][i] for j in range(len(health_pickup_list))] for i in range(len(health_pickup_list[0]))]

    key_indexes = {}
    for i in ["red","blue","yellow"]:
        key_indexes[i] = ammo_item_list.index(i[0].upper()+i[1:]+" Key")+1
    
    for index in range(len(ammo_pickup_list)):
        i = ammo_pickup_list[index]
        ammo_pickup_list[index] = [i[j] if j in i else (1 if index==1 else 0) for j in ammo_item_list]

    #[print(i) for i in ammo_pickup_list]

    drop_dict = {"MT_POSSESSED":"MT_CLIP","MT_SHOTGUY":"MT_SHOTGUN"}
                 
    
    
    file = open(path_in)
    text = file.read()
    file.close()

    path_root = ".\\"+obj_name+"\\_build\\out\\release\\"
    print()

    for i in range(3):
        name = ["render.lua","engine.lua","sound.lua"][i]
        file = open(path_root+name)
        code = file.read()
        file.close()
        #print(code)

        if False:
            m_var=code[code.find("={}")-1]
            
            for j in range(0,30):
                cur=m_var+"["+str(j)+"]"
                
                if cur in code:
                    print(cur,"found",code.count(cur),"times")
                
        print(name)
        code = compress(code,print_vars=i==-1,delete_newlines=True)
        print()
        
        find_start = ["""<c type="56"><object id="4" script='""",
                      """<c type="56"><object id="130" script='""",
                      """<c type="56"><object id="139" script='""",
                      ][i]
        find_end = ["""'>""",
                    """'>""",
                    """'>"""
                    ][i]

        start = text.find(find_start)
        end = text.find(find_end,start)
        if i==2:
            None
            print(code.split("\n")[300-1])
            

        assert start>0 and end>0, "Code insertion search terms not in base doom file"
        
        text = text[:start+len(find_start)]+code+text[end:]
        
    
    
    
    flat_animations = {}
    flat_replacements = {}
    for i in ["NUKAGE","FWATER","LAVA","BLOOD"]:
        if i+"1" in flat_textures:
            cur = 2
            while i+str(cur) in flat_textures:
                flat_replacements[i+str(cur)] = i+"1"
                cur += 1
            cur -= 1
            #print(i+str(cur))
            flat_animations[i+"1"] = cur

    wall_animations = {}
    wall_replacements = {}
    for i in ["BLODGR","BLODRIP","FIREBLU","FIREMAG","GSTFONT","ROCKRED","SLADRIP","WFALL"]:
        if i+"1" in wall_textures:
            cur = 2
            while i+str(cur) in wall_textures:
                wall_replacements[i+str(cur)] = i+"1"
                cur += 1
            cur -= 1
            #print(i+str(cur))
            wall_animations[i+"1"] = cur
        
    
    
    
    sprites_map={}
    sprite_rotations=[]
    rotation_map={}
    new_thing = False
    
    index_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]"
    
    for index in range(len(sprite_textures)):
        i = sprite_textures[index]

        if i[5]=="0":
            sprite_rotations.append([index+1 for j in range(8)])
            rotation_map[i[:5]] = len(sprite_rotations)
        else:
            if not i[:5] in rotation_map:
                sprite_rotations.append([0 for j in range(8)])
                rotation_map[i[:5]]=len(sprite_rotations)

            cur_rotation = sprite_rotations[rotation_map[i[:5]]-1]
            
            cur_rotation[int(i[5])-1] = index+1
            if len(i)>6:
                cur_rotation[int(i[7])-1] = -(index+1)
                
        if i[:3]=="STF":
            print(i)

        if (i[:4] in thing_sprites and (i[4] == "A" or True) and (i[5] in "01" or True)):
            
            cur = wad.asset_data.sprites[i][1]
            if not i[:4] in sprite_overrides:
                sprite_overrides[i[:4]]=res_scale_sprites_quality
            pixels+=(cur.get_width()*cur.get_height())
            num+=1
            #pygame.image.save(cur,"./img/"+i+".png")

    #for i in rotation_map:
    #    if i[:4]=="HEAD":
    #        print(sprite_rotations[rotation_map[i]-1])

    char_sprite_lookup = {}
    for i in range(33,96):
        char_sprite_lookup[chr(i)]=i
    for i in range(26):
        char_sprite_lookup[chr(i+97)]=i+65

    for i in char_sprite_lookup:
        char_sprite_lookup[i] = all_sprite_textures.index("STCFN0"+str(char_sprite_lookup[i]))+1
        
    ammo_pickup_text = get_text("ammo_pickup_text.txt")
    health_pickup_text = get_text("health_pickup_text.txt")

    
    
    file = open("info_states.txt")
    info_states = file.read()
    file.close()
    for i in ["/","{","}","\t"," "]:
        info_states = info_states.replace(i,"")

    info_states = info_states.split("\n")
    info_states = [i.split(",") for i in info_states]
    info_states_zip = [*zip(*info_states)]
    info_states_processed = []
    sprite_numbering = [chr(i) for i in range(ord("A"),ord("~")+1)]

    state_actions = {'A_Explode':1,
                     'A_Look':2,
                     'A_Chase':3,
                     'A_FirePistol':4, # fist and chainsaw aren't included as they don't have muzzle flash
                     'A_FireShotgun':4,
                     'A_FireShotgun2':4,
                     'A_FireCGun':4,
                     'A_GunFlash':4,
                     'A_FirePlasma':4,
                     'A_BFGSpray':5,
                     'A_PosAttack':10, # for simplicity they use the same index as their weapons
                     'A_SPosAttack':11,
                     'A_TroopAttack':12,
                     'A_SargAttack':14,
                     'A_SkullAttack':16,
                     'A_HeadAttack':17,
                     'A_BruisAttack':19,
                     'A_CyberAttack':21,
                     'A_SkullKnockback':24,
                   }
    
    #print(info_states[5])
    for i in range(len(info_states)):
        state = info_states[i]
        cur = state[0][4:]
        if not cur in sprites_map:
            sprites_map[cur]=i+1

        if state[3] in state_actions:
            state[3]=state_actions[state[3]]
        else:
            state[3]=0
        
        frame = int(state[1])
        light = 1
        if int(state[1])>=(2**15)-100:
            frame-=2**15
            light=-1
        
        cur += sprite_numbering[int(frame)]
        #print(frame,state,cur)
        if cur in rotation_map:
            cur = rotation_map[cur]*light
        else:
            cur = 0

        info_states_processed.append([cur, #rotation index
                                      int(state[2]), #delay
                                      state[3], #action
                                      info_states_zip[7].index(state[4])+1, #next state
                                      0, #used for pickups
                                      ])


    file = open("info_spawn.txt")
    info_spawn = file.read()
    file.close()
    #print(info_states_processed[456])
    

    info_spawn = info_spawn.split("""
    },

""")

    spawn_flags = {'MF_NOTDMATCH':0,
                   'MF_COUNTITEM':0,
                   'MF_NOBLOCKMAP':0,
                   'MF_NOSECTOR':0,
                   'MF_SOLID':1,
                   'MF_NOGRAVITY':4,
                   'MF_DROPOFF':0,
                   'MF_FLOAT':0,
                   'MF_NOCLIP':0,
                   'MF_SPECIAL':0,
                   'MF_PICKUP':0,
                   'MF_SPAWNCEILING':0,
                   'MF_SHADOW':8,
                   'MF_NOBLOOD':0,
                   'MF_SHOOTABLE':2,
                   'MF_MISSILE':0,
                   'MF_COUNTKILL':0,
                   }
    
    for index in range(len(info_spawn)):
        i = info_spawn[index]
        cur = i.split("\n")

        
        
        for j in range(1,len(cur)):
            cur[j] = cur[j][1:]
            cur[j] = cur[j][:min(cur[j].find(",")%9999,cur[j].find("*")%9999,cur[j].find("\t")%9999)]
            try:
                cur[j] = int(cur[j])
            except:
                None
        
        
        cur[0]=cur[0][10:]
        if cur[0] in ammo_pickup_dict:
            cur.append(ammo_pickup_dict[cur[0]])
        else:
            cur.append(0)

        cur.append(0)
        cur.append(0)
        cur.append(0)
        if cur[0] in health_pickup_list_zip[0]:
            cur.append(health_pickup_list_zip[0].index(cur[0])+1)
            #print(health_pickup_list[cur[28]-1][1])
        else:
            cur.append(0)
        #print(len(cur))

        for j in [2,4,8,11,12,13,14,23]:
            if cur[j] != 0:
                cur[j] = info_states_zip[7].index(cur[j])+1

        #print(cur[0])
        #if cur[0]=="MT_TROOP":
        #    for j in range(len(cur)):
        #        print(j,cur[j])

        if cur[22] != 0:
            if "MF_MISSILE" in cur[22]: # this is used so missiles enter their seestate when they die, thus allowing lost souls to live upon impact
                cur[4]=cur[13]
            cur[22] = sum([spawn_flags[j] for j in cur[22].split("|")])
        
        #print(cur[17],cur[18])
        
        info_spawn[index] = cur
    info_spawn_zip = [*zip(*info_spawn)]

    for i in info_spawn:
        if i[0] in drop_dict:
            i[26] = info_spawn_zip[0].index(drop_dict[i[0]])+1
            i[27] = info_spawn[i[26]-1][2]

    text_index=2
    for i in ammo_pickup_dict:
        text_index+=1
        cur = info_spawn[info_spawn_zip[0].index(i)]
        info_states_processed[cur[2]-1][4] = text_index
        #print(cur[2],i)
            #print(i[26])

    for i in health_pickup_list_zip[0]:
        text_index+=1
        index = info_spawn[info_spawn_zip[0].index(i)][2]-1
        seen = []
        while not index in seen:
            cur = info_states_processed[index]
            cur[4] = text_index
            seen.append(index)
            if cur[1]>0:
                index=cur[3]-1
            

    for i in info_spawn:
        for j in range(len(i)):
            if type(i[j]) == type(""):
                i[j] = 0

    file = open("weapon_states.txt")
    weapon_states = file.read()
    file.close()

    weapon_states = weapon_states.split("""
    },
    {
""")
    for index in range(len(weapon_states)):
        i = weapon_states[index].split("\n")
        i = [j.replace("\t","").replace(" ","").replace("/","").replace(",","") for j in i]
        for j in range(2,7):
            #print(i[j])
            i[j] = info_states_zip[7].index(i[j])+1
        i=i[2:]
        weapon_states[index]=i
        #print(i)
    
    
    
        
        

    
    #print(pixels//(8**2)/(4000/3.5),pixels,num)
    #halt

    


    #print(wall_textures)
    #halt

    for map_name_index in range(len(map_order)):
        
        map_name = map_order[map_name_index]
        level_data_offset = (map_name_index+3)*10
        
        level_wad = WADData(["wad/"+i for i in file_name], map_name=map_name,import_textures=False)

        for index in range(len(level_wad.things)):
            i = level_wad.things[index]

            #print(i.type)
            if i.type == 1:
                player_index=index

        if player_index != 0:
            level_wad.things[player_index],level_wad.things[0] = level_wad.things[0],level_wad.things[player_index]


        blockmap = [level_wad.blockmap[0:4]]
        #print(blockmap)
        for i in range(4,4+level_wad.blockmap[2]*level_wad.blockmap[3]):
            index = level_wad.blockmap[i]
            cur = []
            while level_wad.blockmap[index] != 65535:
                cur.append(level_wad.blockmap[index]+1)
                index += 1
                
            if blockmap_skip_first:
                cur = cur[1:]
            blockmap.append(cur)

        for i in range(2):
            if blockmap[0][i]>2**15:
                blockmap[0][i]-=2**16

        og_blockmap = dcopy(blockmap)
        width, height = og_blockmap[0][2], og_blockmap[0][3]
        for i in range(width):       #adds neighbouring blocks into the current block
            for j in range(height):  #used since Citrus Doom only checks the block an object is in, not neighbouring ones
                curset=set()
                for k in [(0,0),(1,0),(1,1),(0,1),(-1,1),(-1,0),(-1,-1),(0,-1),(1,-1)]:
                    curx = (i+k[0])%width
                    cury = (j+k[1])%height
                    curset = set.union(curset,og_blockmap[1+curx+cury*width])
                
                blockmap[1+i+j*width] = list(curset)
        
        #line_type_repleacements = {32:32-18,33:33-18,34:34-18,
        #                           26:32-18,27:34-18,28:33-18, #open often to stay open, but treated as open often
        #                           31:1,
        #                           }

        for index in range(len(level_wad.sectors)):
            i=level_wad.sectors[index]
            
            if i.ceil_texture in flat_replacements:
                i.ceil_texture = flat_replacements[i.ceil_texture]
                
            if i.floor_texture in flat_replacements:
                i.floor_texture = flat_replacements[i.floor_texture]
            

            if i.ceil_texture != wad.asset_data.sky_id:
                i.ceil_texture = flat_looker.index(i.ceil_texture)
            else:
                i.ceil_texture = 0

            if i.floor_texture != wad.asset_data.sky_id:
                i.floor_texture = flat_looker.index(i.floor_texture)
            else:
                i.floor_texture = 0

            #if i.tag == 666:
            #    print(map_name)

        for index in range(len(level_wad.sidedefs)):
            i=level_wad.sidedefs[index]

            if i.lower_texture in wall_replacements:
                i.lower_texture = wall_replacements[i.lower_texture]
                
            if i.upper_texture in wall_replacements:
                i.upper_texture = wall_replacements[i.upper_texture]
                
            if i.middle_texture in wall_replacements:
                i.middle_texture = wall_replacements[i.middle_texture]
        

        for index in range(len(level_wad.linedefs)):
            i=level_wad.linedefs[index]
            i.front_sidedef_id=(i.front_sidedef_id+1)%65536
            i.back_sidedef_id=(i.back_sidedef_id+1)%65536

            if i.front_sidedef_id > 0 and i.back_sidedef_id > 0:
                
                s1i=level_wad.sidedefs[i.front_sidedef_id-1].sector_id
                s2i=level_wad.sidedefs[i.back_sidedef_id-1].sector_id
                
                s1=level_wad.sectors[s1i]
                s2=level_wad.sectors[s2i]

                #if i.line_type in line_type_repleacements:
                #    i.line_type = line_type_repleacements[i.line_type]

                if s1.neighbouring_highest_ceiling == None:
                    s1.neighbouring_highest_ceiling = s2.ceil_height
                else:
                    s1.neighbouring_highest_ceiling = max(s1.neighbouring_highest_ceiling,s2.ceil_height)

                if s2.neighbouring_highest_ceiling == None:
                    s2.neighbouring_highest_ceiling = s1.ceil_height
                else:
                    s2.neighbouring_highest_ceiling = max(s2.neighbouring_highest_ceiling,s1.ceil_height)
                

                if s1.neighbouring_lowest_ceiling == None:
                    s1.neighbouring_lowest_ceiling = s2.ceil_height
                else:
                    s1.neighbouring_lowest_ceiling = min(s1.neighbouring_lowest_ceiling,s2.ceil_height)

                if s2.neighbouring_lowest_ceiling == None:
                    s2.neighbouring_lowest_ceiling = s1.ceil_height
                else:
                    s2.neighbouring_lowest_ceiling = min(s2.neighbouring_lowest_ceiling,s1.ceil_height)


                if s1.neighbouring_highest_floor == None:
                    s1.neighbouring_highest_floor = s2.floor_height
                else:
                    s1.neighbouring_highest_floor = max(s1.neighbouring_highest_floor,s2.floor_height)

                if s2.neighbouring_highest_floor == None:
                    s2.neighbouring_highest_floor = s1.floor_height
                else:
                    s2.neighbouring_highest_floor = max(s2.neighbouring_highest_floor,s1.floor_height)


                if s1.neighbouring_lowest_floor == None:
                    s1.neighbouring_lowest_floor = s2.floor_height
                else:
                    s1.neighbouring_lowest_floor = min(s1.neighbouring_lowest_floor,s2.floor_height)

                if s2.neighbouring_lowest_floor == None:
                    s2.neighbouring_lowest_floor = s1.floor_height
                else:
                    s2.neighbouring_lowest_floor = min(s2.neighbouring_lowest_floor,s1.floor_height)


                if s1.neighbouring_lowest_light == None:
                    s1.neighbouring_lowest_light = s2.light_level
                else:
                    s1.neighbouring_lowest_light = min(s1.neighbouring_lowest_light,s2.light_level)

                if s2.neighbouring_lowest_light == None:
                    s2.neighbouring_lowest_light = s1.light_level
                else:
                    s2.neighbouring_lowest_light = min(s2.neighbouring_lowest_light,s1.light_level)

                s1.neighbouring_linedefs.append(index)
                s2.neighbouring_linedefs.append(index)
                s1.neighbouring_sectors.append(s2i+1)
                s2.neighbouring_sectors.append(s1i+1)
                

        for index in range(len(level_wad.things)):
            i = level_wad.things[index]

            #print(i.type)
            if i.type == 14:
                #print("wo")
                sub_sec = level_wad.sub_sectors[find_me(len(level_wad.nodes)-1,i.pos)]
                seg = level_wad.segments[sub_sec.first_seg_id]
                linedef = level_wad.linedefs[seg.linedef_id]
                #print(seg.direction)
                if seg.direction == 0:
                    sidedef = linedef.front_sidedef_id
                else:
                    sidedef = linedef.back_sidedef_id
                sidedef = level_wad.sidedefs[sidedef-1]
                #print(sidedef.sector_id)
                sector = level_wad.sectors[sidedef.sector_id]
                sector.things_inside.append(index)
                #print(sidedef.sector_id,map_name,index)
                
            

            

        sector_thinkers=[] # format for thinkers is (targ sec, value to change (1 for floor, 2 for ceil), targ height, movement per tick, end delay, next thinker, number to replace linedef's action with, thinker to summon when being summoned)
        for index in range(len(level_wad.linedefs)): # compiles the sector thinkers
            i=level_wad.linedefs[index]

            s1i=level_wad.sidedefs[i.front_sidedef_id-1].sector_id
            s2i=level_wad.sidedefs[i.back_sidedef_id-1].sector_id
            
            s1=level_wad.sectors[s1i]
            s2=level_wad.sectors[s2i]
            i.thinker_id = 0
    
            if i.line_type==1: #MR Door Also Monsters
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.floor_height, 2, 1, 0, 1, 0)
                next_thinker = insert_thinker(thinker)

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, 1, i.thinker_id)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=1

                i.flags+=monster_usable

            elif i.line_type==2: #W1 Door Stay Open
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==3: #W1 Door Close
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==5: #W1 Floor To Lowest Adjacent Ceiling
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_ceiling, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==7 or i.line_type==8 or i.line_type==127: #S1 stairs, W1 stairs, S1 stairs fast
                cur_secs = find_sector(i.sector_tag)
                step_size = 16 if i.line_type==127 else 8
                step_speed = 4 if i.line_type==127 else 0.25

                for sec in cur_secs:
                    previous_secs = [sec-1]
                    next_secs = [sec-1]
                    while len(next_secs)>0:
                        sec=next_secs[0]
                        for j in level_wad.sectors[sec].neighbouring_linedefs:
                            potential_sec = level_wad.sidedefs[level_wad.linedefs[j].back_sidedef_id-1].sector_id
                            if level_wad.sectors[sec].floor_texture == level_wad.sectors[potential_sec].floor_texture and not potential_sec in previous_secs:
                                previous_secs.append(potential_sec)
                                next_secs.append(potential_sec)
                        next_secs.pop(0)

                    floor_height = level_wad.sectors[previous_secs[0]].floor_height
                    next_thinker = 0
                    for j in range(len(previous_secs)-1,-1,-1):
                        cur_floor_height = floor_height+(j+1)*step_size
                        sec = previous_secs[j]+1
                        thinker = (sec, 1, cur_floor_height, step_speed, 1, 0, 0, i.thinker_id)
                        i.thinker_id = insert_thinker(thinker)

                i.line_type = {7:1,8:2,127:1}[i.line_type]

            elif i.line_type==9: #S1 Floor Donut (doesn't change type)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    sec2=0
                    sec3=0
                    for potential_sec in level_wad.sectors[sec-1].neighbouring_sectors:
                        if potential_sec!=sec:
                            sec2 = potential_sec

                    for potential_sec in level_wad.sectors[sec2-1].neighbouring_sectors:
                        if potential_sec!=sec and potential_sec!=sec2:
                            sec3 = potential_sec
                    assert sec2!=0
                    assert sec3!=0

                    thinker = (sec2, 1, level_wad.sectors[sec3-1].floor_height, 0.5, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec2, 3, level_wad.sectors[sec3-1].floor_texture, len(flat_textures), 1, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)
                        
                    thinker = (sec, 1, level_wad.sectors[sec3-1].floor_height, 0.5, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==10: #W1 Lift Also Monsters
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height, 4, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 4, TICKRATE*3, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

                i.flags+=monster_usable

            elif i.line_type==11: #Normal Exit
                secret_returns = {"E1M9":"E1M4","E2M9":"E2M6","E3M9":"E3M7","E4M9":"E4M3"}
                if map_name in secret_returns:
                    i.thinker_id = -(map_order.index(secret_returns[map_name])+3)
                elif i.sector_tag == 0:
                    i.thinker_id = -(map_name_index+4)
                else:
                    i.thinker_id = -(map_name_index+3+i.sector_tag)
                
                i.line_type=1

            elif i.line_type==51: #Secret Exit
                
                i.thinker_id = -(map_order.index(map_name[0:3]+"9")+3)
                
                i.line_type=1

            elif i.line_type==13: #W1 Light To 255
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 5, 255, 255, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==14: #S1 Floor Up 32 Change Texture (doesn't change texture)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height+32, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==16: #W1 Door Close Then Open 30 Sec Later
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, TICKRATE*30, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==18: #S1 Floor To Highest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==19: #W1 Floor To Heighest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==20: #S1 Floor To Higher Floor Change Text (highest floor)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    sec2=0
                    for potential_sec in level_wad.sectors[sec-1].neighbouring_sectors:
                        if potential_sec!=sec and level_wad.sectors[sec-1].neighbouring_highest_floor==level_wad.sectors[potential_sec-1].floor_height:
                            sec2=potential_sec
                    assert sec2!=0

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)
                            
                    thinker = (sec, 3, level_wad.sectors[sec2-1].floor_texture, len(flat_textures), 1, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==21: #S1 Lift
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height, 4, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 2, TICKRATE*3, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==22: #W1 Floor To Higher Floor Change Text (highest floor)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    for potential_sec in level_wad.sectors[sec-1].neighbouring_sectors:
                        if potential_sec!=sec and level_wad.sectors[sec-1].neighbouring_highest_floor==level_wad.sectors[potential_sec-1].floor_height:
                            sec2=potential_sec
                    
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 3, level_wad.sectors[sec2-1].floor_texture, len(flat_textures), 1, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==23: #S1 Floor To Lowest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==24: #G1 Floor To Lowest Adjacent Ceiling (not gun activated)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_ceiling, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==25: #W1 Start Slow Crusher
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs: # this doesn't use the normal insert_thinker because I couldn't think of a way to make a thinker loop with it
                    cur_sec = level_wad.sectors[sec-1]
                    
                    sector_thinkers.append((sec, 2, cur_sec.ceil_height, 1, 1, len(sector_thinkers)+2, 1, 0))
                    sector_thinkers.append((sec, 2, cur_sec.neighbouring_lowest_floor+8, 1, 1, len(sector_thinkers), 1, i.thinker_id))
                    i.thinker_id = len(sector_thinkers)
                    cur_sec.type = 18 # enables crushing

                i.line_type=2
            
            elif i.line_type==26: #MR Door Blue
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.floor_height, 2, 1, 0, key_indexes["blue"], 0)
                next_thinker = insert_thinker(thinker)

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, key_indexes["blue"], 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["blue"]

            elif i.line_type==27: #MR Door Yellow
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.floor_height, 2, 1, 0, key_indexes["yellow"], 0)
                next_thinker = insert_thinker(thinker)

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, key_indexes["yellow"], 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["yellow"]

            elif i.line_type==28: #MR Door Red
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.floor_height, 2, 1, 0, key_indexes["red"], 0)
                next_thinker = insert_thinker(thinker)

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, key_indexes["red"], 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["red"]

            elif i.line_type==29: #S1 Door
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 0, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==30: #W1 Floor Up Shortest Lower Texture (actually 64 units from floor)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, max(level_wad.sectors[sec-1].floor_height,level_wad.sectors[sec-1].neighbouring_highest_floor)+64, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==31: #M1 Door Stay Open

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, 1, 0, 0, 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==32: #M1 Door Stay Open Blue
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, 1, 0, 0, 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["blue"]

            elif i.line_type==33: #M1 Door Stay Open Red
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, 1, 0, 0, 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["red"]

            elif i.line_type==34: #M1 Door Stay Open Yellow
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 2, s2.neighbouring_lowest_ceiling-4, 2, 1, 0, 0, 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["yellow"]

            elif i.line_type==35: #W1 Light To 35
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 5, 35, 255, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==36: #W1 Floor To 8 Above Heighest Adjacent Floor Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor+8, 4, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==37: #W1 Floor To Lowest Adjacent Floor Change Texture and Type (doesn't change type)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    sec2=0
                    for potential_sec in level_wad.sectors[sec-1].neighbouring_sectors:
                        if potential_sec!=sec and level_wad.sectors[sec-1].neighbouring_lowest_floor==level_wad.sectors[potential_sec-1].floor_height:
                            sec2=potential_sec
                    assert sec2!=0
                    
                    thinker = (sec, 3, level_wad.sectors[sec2-1].floor_texture, len(flat_textures), 1, 0, 0, i.thinker_id)
                    next_thinker = insert_thinker(thinker)
                    
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 1, 1, next_thinker, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==38: #W1 Floor To Lowest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==39: #W1 Teleporter Also Monsters
                cur_secs = find_sector(i.sector_tag)

                i.line_type=0
                
                if len(cur_secs)>0:
                    targs=[]
                    for sec in cur_secs:
                        cur_sec = level_wad.sectors[sec-1]
                        targs+=cur_sec.things_inside
                    
                    if len(targs)>0:
                        cur_thing = level_wad.things[targs[0]]
                        for j in [(1,cur_thing.pos[0]),(2,cur_thing.pos[1]),(3,cur_thing.angle),(9,cur_sec.floor_height)]:
                            thinker = (0, j[0], j[1], 9999999, 1, 0, 0, i.thinker_id)
                            i.thinker_id = insert_thinker(thinker)
                        #print("found tp targ")

                        i.line_type=2

                        i.flags+=monster_usable

            elif i.line_type==40: # W1 Ceiling To Highest Adjacent Ceiling
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_highest_ceiling, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==42: #SR Door Close
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==44: #W1 Ceiling To 8 Above Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height+8, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==45: #SR Floor To Heighest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==46: #GR Door (not gun activated)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==47: #G1 Floor To Highest Adjacent Floor (not gun activated)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==52: #Walkover Exit
                i.thinker_id = -(map_name_index+4)
                
                i.line_type=2

            elif i.line_type==56: #W1 Floor To 8 Below Lowest Adjacent Ceiling and Crush
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    cur_sec = level_wad.sectors[sec-1]
                    
                    thinker = (sec, 1, min(cur_sec.ceil_height,cur_sec.neighbouring_highest_ceiling)-8, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)
                    cur_sec.type = 18 # enables crushing

                i.line_type=2

            elif i.line_type==58: #W1 Floor Up 24
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height+24, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==59: #W1 Floor Up 24 Change Texture And Type (doesn't change texture or type)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height+24, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==60: #SR Floor To Lowest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 1, 1, 0, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==61: #SR Door Stay Open
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, 1, 0, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==62: #SR Lift
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height, 4, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 4, TICKRATE*3, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==63: #SR Door
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==65: #SR Floor To 8 Below Lowest Adjacent Ceiling and Crush
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    cur_sec = level_wad.sectors[sec-1]
                    
                    thinker = (sec, 1, min(cur_sec.ceil_height,cur_sec.neighbouring_highest_ceiling)-8, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)
                    cur_sec.type = 18 # enables crushing

                i.line_type=1

            elif i.line_type==70: #SR Floor To 8 Above Higher Adjacent Floor Fast (uses highest)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor+8, 4, 1, 0, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==71: #S1 Floor To 8 Above Higher Adjacent Floor Fast (uses highest)
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor+8, 4, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==73: #WR Start Slow Crusher
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs: # this doesn't use the normal insert_thinker because I couldn't think of a way to make a thinker loop with it
                    cur_sec = level_wad.sectors[sec-1]
                    
                    sector_thinkers.append((sec, 2, cur_sec.ceil_height, 1, 1, len(sector_thinkers)+2, 2, 0))
                    sector_thinkers.append((sec, 2, cur_sec.neighbouring_lowest_floor+8, 1, 1, len(sector_thinkers), 2, i.thinker_id))
                    i.thinker_id = len(sector_thinkers)
                    cur_sec.type = 18 # enables crushing

                i.line_type=2

            elif i.line_type==75: #WR Door Close
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==76: #WR Door Close Then Open 30 Sec Later
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, 1, 0, 2, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, TICKRATE*30, next_thinker, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==77: #WR Start Fast Crusher
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs: # this doesn't use the normal insert_thinker because I couldn't think of a way to make a thinker loop with it
                    cur_sec = level_wad.sectors[sec-1]
                    
                    sector_thinkers.append((sec, 2, cur_sec.ceil_height, 2, 1, len(sector_thinkers)+2, 2, 0))
                    sector_thinkers.append((sec, 2, cur_sec.neighbouring_lowest_floor+8, 2, 1, len(sector_thinkers), 2, i.thinker_id))
                    i.thinker_id = len(sector_thinkers)
                    cur_sec.type = 18 # enables crushing

                i.line_type=2

            elif i.line_type==82: #WR Floor To Lowest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 1, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==83: #WR Floor To Heighest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==86: #WR Door Stay Open
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==87: #WR Start Lowest And Highest Moving Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs: # this doesn't use the normal insert_thinker because I couldn't think of a way to make a thinker loop with it
                    
                    sector_thinkers.append((sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, TICKRATE*3, len(sector_thinkers)+2, 2, 0))
                    sector_thinkers.append((sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 1, TICKRATE*3, len(sector_thinkers), 2, i.thinker_id))
                    i.thinker_id = len(sector_thinkers)

                i.line_type=2

            elif i.line_type==88: #WR Lift Also Monsters
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height, 4, 1, 0, 2, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 4, TICKRATE*3, next_thinker, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

                i.flags+=monster_usable

            elif i.line_type==89: #WR Stop Moving Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs: # this is intended to overwrite the moving floor thinker, then delete itself after changing nothing about the sector
                                     # also it's nice for the doom devs to include these in E2M3, the constant movment would be quite bad for my doom given the low bandwidth for object updates
                    thinker = (sec, 7, level_wad.sectors[sec-1].tag, 2, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==90: #WR Door
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 2, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==91: #WR Floor To Lowest Adjacent Ceiling
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_ceiling, 1, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==97: #WR Teleporter Also Monsters
                cur_secs = find_sector(i.sector_tag)

                i.line_type=0
                
                if len(cur_secs)>0:
                    targs=[]
                    for sec in cur_secs:
                        cur_sec = level_wad.sectors[sec-1]
                        targs+=cur_sec.things_inside
                    
                    if len(targs)>0:
                        cur_thing = level_wad.things[targs[0]]
                        for j in [(1,cur_thing.pos[0]),(2,cur_thing.pos[1]),(3,cur_thing.angle),(9,cur_sec.floor_height)]:
                            thinker = (0, j[0], j[1], 9999999, 1, 0, 2, i.thinker_id)
                            i.thinker_id = insert_thinker(thinker)
                        #print("found tp targ")

                        i.line_type=2

                        i.flags+=monster_usable

                if i.line_type==0:
                    print("tp targ not found in",map_name,"linedef",index,"sector tag",i.sector_tag)
                    

            elif i.line_type==98: #WR Floor To 8 Above Heighest Adjacent Floor Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor+8, 4, 1, 0, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==101: #S1 Floor To Lowest Adjacent Ceiling
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_ceiling, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==102: #S1 Floor To Heighest Adjacent Floor
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_highest_floor, 1, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==103: #S1 Door Stay Open
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 2, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==104: #W1 Light To Lowest Adjacent Level
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    targ = level_wad.sectors[sec-1].neighbouring_lowest_light
                    thinker = (sec, 5, targ, 255, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==105: #WR Door Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 8, 1, 0, 2, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, TICKRATE*4, next_thinker, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==109: #W1 Door Stay Open Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==112: #S1 Door Stay Open Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==114: #SR Door Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 8, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, TICKRATE*4, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==115: #SR Door Stay Open Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, 1, 0, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==117: #MR Door Fast
                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 8, s2.floor_height, 2, 1, 0, 1, 0)
                next_thinker = insert_thinker(thinker)

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 8, s2.neighbouring_lowest_ceiling-4, 2, TICKRATE*4, next_thinker, 1, i.thinker_id)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==118: #M1 Door Stay Open Fast

                thinker = (level_wad.sidedefs[i.back_sidedef_id-1].sector_id+1, 8, s2.neighbouring_lowest_ceiling-4, 2, 1, 0, 0, 0)
                i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==120: #WR Lift Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height, 8, 1, 0, 2, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 8, TICKRATE*3, next_thinker, 2, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=2

            elif i.line_type==123: #SR Lift Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 1, level_wad.sectors[sec-1].floor_height, 8, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 1, level_wad.sectors[sec-1].neighbouring_lowest_floor, 8, TICKRATE*3, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=1

            elif i.line_type==125: #W1 Teleporter Monsters Only
                cur_secs = find_sector(i.sector_tag)

                i.line_type=0
                
                if len(cur_secs)>0:
                    targs=[]
                    for sec in cur_secs:
                        cur_sec = level_wad.sectors[sec-1]
                        targs+=cur_sec.things_inside
                    
                    if len(targs)>0:
                        cur_thing = level_wad.things[cur_sec.things_inside[0]]
                        for j in [(1,cur_thing.pos[0]),(2,cur_thing.pos[1]),(3,cur_thing.angle),(9,cur_sec.floor_height)]:
                            thinker = (0, j[0], j[1], 9999999, 1, 0, 0, i.thinker_id)
                            i.thinker_id = insert_thinker(thinker)
                        #print("found tp targ")

                        i.line_type=3 # monsters only care if a linedef is tagged as monster usable

                        i.flags+=monster_usable
                        
                if i.line_type==0:
                    print("tp targ not found in",map_name,"linedef",index,"sector tag",i.sector_tag)

            elif i.line_type==126: #WR Teleporter Monsters Only
                cur_secs = find_sector(i.sector_tag)

                i.line_type=0
                
                if len(cur_secs)>0:                    
                    targs=[]
                    for sec in cur_secs:
                        cur_sec = level_wad.sectors[sec-1]
                        targs+=cur_sec.things_inside
                    
                    if len(targs)>0:
                        cur_thing = level_wad.things[targs[0]]
                        for j in [(1,cur_thing.pos[0]),(2,cur_thing.pos[1]),(3,cur_thing.angle),(9,cur_sec.floor_height)]:
                            thinker = (0, j[0], j[1], 9999999, 1, 0, 2, i.thinker_id)
                            i.thinker_id = insert_thinker(thinker)
                        #print("found tp targ")

                        i.line_type=3

                        i.flags+=monster_usable
                        
                if i.line_type==0:
                    print("tp targ not found in",map_name,"linedef",index,"sector tag",i.sector_tag)

            elif i.line_type==133: #S1 Door Stay Open Blue Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["blue"]

            elif i.line_type==134: #S1 Door Red Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 2, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, TICKRATE*4, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["red"]

            elif i.line_type==135: #S1 Door Stay Open Red Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["red"]

            elif i.line_type==136: #SR Door Yellow Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].floor_height, 8, 1, 0, 1, 0)
                    next_thinker = insert_thinker(thinker)

                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, TICKRATE*4, next_thinker, 1, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["yellow"]

            elif i.line_type==137: #S1 Door Stay Open Yellow Key Fast
                cur_secs = find_sector(i.sector_tag)
                
                for sec in cur_secs:
                    thinker = (sec, 2, level_wad.sectors[sec-1].neighbouring_lowest_ceiling-4, 8, 1, 0, 0, i.thinker_id)
                    i.thinker_id = insert_thinker(thinker)

                i.line_type=key_indexes["yellow"]

            elif i.line_type>=3000:
                i.thinker_id = i.sector_tag

            elif i.line_type>0 and not i.line_type in [48,#moving texture
                                                            74,#crush stop
                                                            ]:
                print("unknown linedef type",i.line_type,"in level",map_name)
                None

            
        
                
        
        cur=""
        curnum=0
        
        for index in range(len(level_wad.things)):
            i=level_wad.things[index]
            
            
            if i.type in info_spawn_zip[1] and i.flags&16==0:
                begining = info_spawn_zip[1].index(i.type)+1
                state = info_spawn_zip[2][begining-1]

                curnum+=1
                #print(state,len(sprite_textures))
            
                packets.append((level_data_offset+1,[i.pos[0],i.pos[1],i.angle,begining,i.flags,state]))


        
        cur=""
        curnum=0 
        for index in range(len(level_wad.linedefs)):
            i=level_wad.linedefs[index]
            
            curnum+=1
            #[start_vert,end_vert,flag,type,tag,front_sidedef,back_sidedef,floor_height,ceil_height]
            #if (i.flags & 4 == 0):
            #    temp=((i.back_sidedef_id+1)%65536)+((i.front_sidedef_id+1)%65536)
            #    temp=level_wad.sidedefs[temp-1]
            #    print(index,temp.lower_texture,temp.upper_texture)

            
            
                
            
            packets.append((level_data_offset+2,[i.start_vertex_id+1,i.end_vertex_id+1,i.flags,i.line_type,i.thinker_id,i.front_sidedef_id,i.back_sidedef_id]))


        cur=""
        curnum=0 
        for index in range(len(level_wad.sidedefs)):
            i=level_wad.sidedefs[index]
            
            curnum+=1
            
            packets.append((level_data_offset+3,[i.x_offset,i.y_offset,wall_looker.index(i.upper_texture),wall_looker.index(i.lower_texture),wall_looker.index(i.middle_texture),i.sector_id+1]))

        
        cur=""
        curnum=0 
        for index in range(len(level_wad.vertexes)):
            i=level_wad.vertexes[index]

            curnum+=1
            
            packets.append((level_data_offset+4,i))


        cur=""
        curnum=0 
        for index in range(len(level_wad.segments)):
            i=level_wad.segments[index]
            
            curnum+=1
            
            packets.append((level_data_offset+5,[i.start_vertex_id+1,i.end_vertex_id+1,round(i.angle),i.linedef_id+1,i.direction,i.offset]))
            
        
        cur=""
        curnum=0 
        for index in range(len(level_wad.sub_sectors)):
            i=level_wad.sub_sectors[index]
            
            curnum+=1
            
            packets.append((level_data_offset+6,[i.seg_count,round(i.first_seg_id+1)]))

        
        cur=""
        curnum=0 
        for index in range(len(level_wad.nodes)):
            i=level_wad.nodes[index]
            
            curnum+=1
            
            packets.append((level_data_offset+7,[i.x_partition,i.y_partition,i.dx_partition,i.dy_partition,0,0,i.front_child_id+1,i.back_child_id+1]))

        
        cur=""
        curnum=0 
        for index in range(len(level_wad.sectors)):
            i=level_wad.sectors[index]
            
            curnum+=1


            #[floor_h, ceil_h, floor_t, ceil_t, light, type, tag, refresh, surrounding_ceil_h, stage, timer]
            
            packets.append((level_data_offset+8,[i.floor_height,i.ceil_height,i.floor_texture,i.ceil_texture,i.light_level,i.type,i.tag]))


        cur=""
        curnum=0 
        for i in sector_thinkers:

            curnum+=1
            #print(len(i))
            packets.append((level_data_offset+9,i))


        cur=""
        curnum=0
        curlen=len(blockmap[0])
        #print(blockmap)
        #halt
        for index in range(len(blockmap)):
            i=blockmap[index]
            
            curnum+=1

            if len(i)>0:
                packets.append((level_data_offset+10,i))
            else:
                new=""
                print("DSFSDFDFS")
            


    cur=""
    curnum=0 
    for index in range(len(health_pickup_list)):
        i=health_pickup_list[index][1]
        curnum+=1
        
        packets.append((11,i))
    
    
    cur=""
    curnum=0 
    for index in range(len(ammo_pickup_list)):
        i=ammo_pickup_list[index]
        curnum+=1
        
        packets.append((12,i))


    file = open("random.txt")
    random = file.read()
    file.close()

    random = random.split("\n")
    cur = []
    for i in random:
        i = i.split(" ")
        cur.append(int(i[1]))
    packets.append((13,cur))


    file = open("fuzz.txt")
    fuzz = file.read()
    file.close()

    fuzz = fuzz.replace("\n    ","")

    fuzz = fuzz.split(",")
    cur = []
    darkness = 1
    for i in fuzz:
        if not "-" in i:
            darkness = 1
        cur.append(darkness)
        darkness += 1
    #print(cur)

    packets.append((13,cur))

    for i in ammo_pickup_text:
        packets.append((13,[(char_sprite_lookup[j] if j!=" " else 0) for j in i]))

    for i in health_pickup_text:
        packets.append((13,[(char_sprite_lookup[j] if j!=" " else 0) for j in i]))

    

    file = open("weapons.txt")
    weapons = file.read()
    file.close()
    weapons = weapons.split("\n")
    weapons = [i.split("\t") for i in weapons]
    cur=""
    curnum=0
    curlen=len(weapons[0])-1
    #print(blockmap)
    #halt
    for index in range(len(weapons)):
        i=weapons[index]
        
        curnum+=1

        
        new = i[1:]
        
        if new[7]!="0":
            #print(temp,info_spawn_zip[0])
            #print(new[7])
            temp = info_spawn_zip[0].index(new[7])
            temp_spawn = info_spawn[temp]
            if int(new[6])>0:
                if not new[7].find("SKULL")>0:
                    new[5]=temp_spawn[16]
                #print(new[6])
            for k in [2,13]:
                
                temp_sprite = info_states_processed[temp_spawn[k]-1][0]
                if temp_sprite != 0:
                    sprite_name = sprite_textures[abs(temp_sprite)-1][:4]
                    
                    if not sprite_name in sprite_overrides:
                        sprite_overrides[sprite_name] = res_scale_sprites_projectiles
            new[7] = temp+1


        #if new[12] in sprite_textures:
        #    if not new[12] in sprite_overrides:
        #        sprite_overrides[new[12]] = res_scale_sprites_weapons
        #    new[12] = sprite_textures.index(new[12])+1
        #else:
        #    new[12] = 0
        
        for j in range(len(new)):
            if type(new[j]) != type(""):
                None
            elif new[j].count(".")>0:
                new[j] = float(new[j])
            else:
                new[j] = int(new[j])
        #print(new)
        #halt
        packets.append((14,new))

    ""
    cur=""
    curnum=0 
    for index in range(len(info_spawn)):
        i=info_spawn[index]
        curnum+=1
        
        packets.append((15,i))

    
    cur=""
    curnum=0 
    for index in range(len(info_states_processed)):
        i=info_states_processed[index]
        if len(i) != 5:
            print(i)
            halt

        curnum+=1
        
        packets.append((16,i))
    
    
    cur=""
    curnum=0 
    for index in range(len(sprite_rotations)):
        i=sprite_rotations[index]
        
        curnum+=1
        
        packets.append((17,i))

    
    for index in sound_names:
        i=wad.sounds[index]

        packets.append((18,i))
    
    

    misc_additions = [[1,2,9,6,11,12,19,3], #1
                      [0,45,-45,90,-90], #2
                      [all_sprite_textures.index("STFST01")+1,], #3
                      [0,0,7,8,0,1,2,9,3], #4
                      [0,0,255], #5
                      [255,0,0], #6
                      [200,200,0], #7
                      sky_order, #8
                      [-20]+[4 for i in range(10)], #9
                      [0,5,0,-5,-3,0,0,-5,3,0,0,-5], #10
                      [sound_names.index("DPITEMUP")+1], #11
                      ]
    for index in range(len(misc_additions)):
        i=misc_additions[index]
        
        packets.append((19,i))

    
    cur=""
    curnum=0 
    for index in range(len(weapon_states)):
        i=weapon_states[index]
        
        curnum+=1
        
        packets.append((29,i))
    
    

    #print(sprite_overrides)

    checksum = str(wall_overrides)+str(sprite_overrides)
    checksum += str(res_scale_walls)+str(res_scale_flats)+str(res_scale_sprites)+str(res_scale_sky)+str(file_name)+str(sky_offset)
    
    try:
        file = open("cache.txt")
        cache = json.load(file)
        file.close()
        last_checksum = cache[0]
    except:
        last_checksum = ""

    if last_checksum != checksum or force_new_cache:
        print("cache invalid, regenerating cache...")
        
        colourmap=[]
        colourmap_useage=[]
        temp_packets=[]

        i=orange
        width=i.get_width()
        height=i.get_height()

        av=(0,0,0)
        av_num=0
        
        for j in range(width):
            for k in range(height):

                colour=i.get_at((j,k))
                colour=colour[:3]
                av=add(av,colour)
                av_num+=1
                if colour != trans_colour:
                    if not (colour in colourmap):
                        colourmap.append(colour)
                        colourmap_useage.append(1)
                    else:
                        colourmap_useage[colourmap.index(colour)] += 1
        av=div(av,av_num)
        
        av=tuple([flr(i) for i in av])
        if not (av in colourmap):
            colourmap.append(av)
            colourmap_useage.append(1)
        else:
            colourmap_useage[colourmap.index(av)] += 1

        orange_av=colourmap.index(av)
        

        for index in wall_textures:
            if index in wall_overrides:
                res_scale_cur = wall_overrides[index]
            else:
                res_scale_cur = res_scale_walls

            
            i=wad.asset_data.wall_textures[index]
            width=len(i)//res_scale_cur
            height=len(i[0])//res_scale_cur

            av=(0,0,0)
            av_num=0
            
            for j in range(width):
                for k in range(height):
                    colour=tuple(i[j*res_scale_cur][k*res_scale_cur])
                    if colour != trans_colour:
                        av=add(av,colour)
                        av_num+=1
                        if not (colour in colourmap):
                            colourmap.append(colour)
                            colourmap_useage.append(1)
                        else:
                            colourmap_useage[colourmap.index(colour)] += 1
            av=div(av,av_num)
            
            av=tuple([flr(i) for i in av])
            if not (av in colourmap):
                colourmap.append(av)
                colourmap_useage.append(1)
            else:
                colourmap_useage[colourmap.index(av)] += 1

            wall_avs[index]=colourmap.index(av)

        for index in flat_textures:
            i=wad.asset_data.flat_textures[index]
            width=len(i)//res_scale_flats
            height=len(i[0])//res_scale_flats

            av=(0,0,0)
            av_num=0
            
            for j in range(width):
                for k in range(height):
                    colour=tuple(i[j*res_scale_flats][k*res_scale_flats])
                    av=add(av,colour)
                    av_num+=1
                    if not (colour in colourmap):
                        colourmap.append(colour)
                        colourmap_useage.append(1)
                    else:
                        colourmap_useage[colourmap.index(colour)] += 1
            av=div(av,av_num)
            
            av=tuple([flr(i) for i in av])
            if not (av in colourmap):
                colourmap.append(av)
                colourmap_useage.append(1)
            else:
                colourmap_useage[colourmap.index(av)] += 1

            flat_avs[index]=colourmap.index(av)

        for index in all_sprite_textures:
            if index in sprite_overrides:
                res_scale_cur = sprite_overrides[index]
            elif index[:4] in sprite_overrides:
                res_scale_cur = sprite_overrides[index[:4]]
            else:
                res_scale_cur = res_scale_sprites

            cur_sprite = all_sprites[index]
            i = cur_sprite[1]
            
            cur_offset = get_downsize_offset(cur_sprite,res_scale_cur)
            
            width=(i.get_width()+res_scale_cur-1-cur_offset[0])//res_scale_cur
            height=(i.get_height()+res_scale_cur-1-cur_offset[1])//res_scale_cur


            av=(0,0,0)
            av_num=0
            
            for j in range(width):
                for k in range(height):
                    
                    colour=i.get_at((j*res_scale_cur+cur_offset[0],k*res_scale_cur+cur_offset[1]))
                    colour=colour[:3]
                    if colour != trans_colour:
                        av=add(av,colour)
                        av_num+=1
                        if not (colour in colourmap):
                            colourmap.append(colour)
                            colourmap_useage.append(1)
                        else:
                            colourmap_useage[colourmap.index(colour)] += 1
            if av_num != 0:
                av=div(av,av_num)
            
            av=tuple([flr(i) for i in av])
            if not (av in colourmap):
                colourmap.append(av)
                colourmap_useage.append(1)
            else:
                colourmap_useage[colourmap.index(av)] += 1

            sprite_avs[index]=colourmap.index(av)
            

        
        for index in range(len(sky_textures)):
            i=wad.asset_data.sky_textures[index]
            width=len(i)//res_scale_sky
            height=len(i[0])//res_scale_sky

            av=(0,0,0)
            av_num=0
            
            for j in range(width):
                for k in range(height):

                    colour=tuple(i[j*res_scale_sky][k*res_scale_sky])
                    av=add(av,colour)
                    av_num+=1
                    if not (colour in colourmap):
                        colourmap.append(colour)
                        colourmap_useage.append(1)
                    else:
                        colourmap_useage[colourmap.index(colour)] += 1
            av=div(av,av_num)
            
            av=tuple([flr(i) for i in av])
            if not (av in colourmap):
                colourmap.append(av)
                colourmap_useage.append(1)
            else:
                colourmap_useage[colourmap.index(av)] += 1

            sky_avs[index]=colourmap.index(av)

        

        colourmap = [*zip(colourmap_useage,colourmap,[*range(len(colourmap))])]
        colourmap.sort(reverse=True) # more frequently used colours get priory, as smaller numbers take up less space
        colourmap = [[colourmap[j][i] for j in range(len(colourmap))] for i in range(len(colourmap[0]))]
        
        for i in wall_avs:
            wall_avs[i] = colourmap[2].index(wall_avs[i])
        for i in flat_avs:
            flat_avs[i] = colourmap[2].index(flat_avs[i])
        for i in sprite_avs:
            sprite_avs[i] = colourmap[2].index(sprite_avs[i])
        for i in sky_avs:
            sky_avs[i] = colourmap[2].index(sky_avs[i])
        
        colourmap = colourmap[1]

        print("colourmap complete")

        print(len(colourmap),"colours")
        
            
        cur=""
        curnum=0 
        for index in range(len(colourmap)):
            i=sq(colourmap[index])
            
            curnum+=1
            
            temp_packets.append((20,i))


        t=0
        i=orange
        width=i.get_width()
        height=i.get_height()
        cur=[width,height,1,orange_av]
        
        for j in range(width):
            for k in range(height):
                colour=i.get_at((j,k))
                colour=colour[:3]
                if colour != trans_colour:
                    cur.append(colourmap.index(colour)+1)
                else:
                    cur.append(0)
        temp_packets.append((25,cur))        
        
        t=0
        for index in wall_textures:
            if index in wall_overrides:
                res_scale_cur = wall_overrides[index]
            else:
                res_scale_cur = res_scale_walls

            if index in wall_animations:
                frames = wall_animations[index]
            else:
                frames = 1
                
            i=wad.asset_data.wall_textures[index]
            switch1=((wall_textures.index("SW2"+index[3:])+1) if index[0:3]=="SW1" else 0)
            switch2=((wall_textures.index("SW1"+index[3:])+1) if index[0:3]=="SW2" else 0)
            switch=switch1+switch2
            
            width=len(i)//res_scale_cur
            height=len(i[0])//res_scale_cur
            cur = [width,height,res_scale_cur,switch,frames,wall_avs[index]+1]

            
            
            for j in range(width):
                for k in range(height):
                    colour=tuple(i[j*res_scale_cur][k*res_scale_cur])
                    if colour != trans_colour:
                        cur.append(colourmap.index(colour)+1)
                    else:
                        cur.append(0)
                    
            temp_packets.append((21,cur))
        
        t=0
        for index in flat_textures:
                
            i=wad.asset_data.flat_textures[index]
            if index in flat_animations:
                frames = flat_animations[index]
            else:
                frames = 1
            
            width=len(i)//res_scale_flats
            height=len(i[0])//res_scale_flats
            cur=[width,height,res_scale_flats,frames,flat_avs[index]+1]

            
            for j in range(width):
                for k in range(height):
                    colour=tuple(i[j*res_scale_flats][k*res_scale_flats])
                    if colour != trans_colour:
                        cur.append(colourmap.index(colour)+1)
                    else:
                        cur.append(0)

            temp_packets.append((22,cur))

        
        
        t=0
        for index in all_sprite_textures:
            if index in sprite_overrides:
                res_scale_cur = sprite_overrides[index]
            elif index[:4] in sprite_overrides:
                res_scale_cur = sprite_overrides[index[:4]]
            else:
                res_scale_cur = res_scale_sprites

            cur_sprite = all_sprites[index]
            i = cur_sprite[1]
            header = cur_sprite[0]

            cur_offset = get_downsize_offset(cur_sprite,res_scale_cur)
            
            width=(i.get_width()+res_scale_cur-1-cur_offset[0])//res_scale_cur
            height=(i.get_height()+res_scale_cur-1-cur_offset[1])//res_scale_cur
            cur=[width,height,res_scale_cur,
                 round_to(header.left_offset,res_scale_cur),round_to(header.top_offset,res_scale_cur),
                 sprite_avs[index]+1]
            
            #if index=="TROOH5" or True:
            #    #print(header.left_offset,header.top_offset)
            #    print(res_scale_cur,(width,height),(i.get_width(),i.get_height()),(header.width,header.height))

            
            for j in range(width):
                for k in range(height):
                    colour=i.get_at((j*res_scale_cur+cur_offset[0],k*res_scale_cur+cur_offset[1]))
                    colour=colour[:3]
                    if colour != trans_colour:
                        cur.append(colourmap.index(colour)+1)
                    else:
                        cur.append(0)
            temp_packets.append((23,cur))
        
        t=0
        for index in range(len(sky_textures)):
            i=wad.asset_data.sky_textures[index]
            width=len(i)//res_scale_sky
            height=len(i[0])//res_scale_sky-(sky_offset//res_scale_sky)-(8//res_scale_sky)#bottom pixels are just purple
            cur=[width,height,res_scale_sky,sky_avs[index]]


            for j in range(width):
                for k in range(height):
                    colour=tuple(i[j*res_scale_sky][k*res_scale_sky+sky_offset])
                    cur.append(colourmap.index(colour)+1)
                    
            temp_packets.append((24,cur))
        
        
        
            

        #halt

        
                
        
        cache = [checksum,temp_packets]

        
        
        file = open("cache.txt",mode="w", newline='\n')
        json.dump(cache,file)
        file.close()
        print("textures cached")

    packets = cache[1] + packets + [(0,[])]

    #big_packet = []
    #for i in packets:
    #    big_packet += [len(str(int(j))+",") for j in i[1]]
    #print(max(big_packet))
    #print(min(big_packet))
    #print(sum(big_packet)/len(big_packet))
    #print(sum(big_packet),len(big_packet))

    type_map = {20:"colours",21:"wall textures",22:"flat textures",23:"sprites",24:"sky textures",25:"orange"}
    parts = []
    cur=[]
    t=0
    tt=0
    tl=0
    tg=0
    for index in range(len(packets)):
        i = packets[index]
        #if i[0]==31:
        #    print(i)
        if len(cur)==0 or len(cur[0][1])!=len(i[1]) or cur[0][0]!=i[0] or index==len(packets)-1:
            if len(cur)>0:
                out_numbs = [cur[0][0],len(cur[0][1]),len(cur)]
                for j in cur:
                    for k in j[1]:
                        out_numbs.append(k)

                for j in out_numbs:
                    temp = str(j)
                    temp = temp[:-1]+chr(ord(temp[-1])+17)
                    temp_len = len(temp)
                    if len(parts)==0 or len(parts[-1])+temp_len>curmax:
                        if len(parts)>0:
                            parts[-1]=parts[-1]
                        parts.append(temp)
                    else:
                        parts[-1] = parts[-1]+temp
                    t+=temp_len
                    
                
                if i[0]!=cur[0][0]:
                    tt+=t
                    if cur[0][0] in type_map:
                        tg+=t
                        print(t//1024,"KiB of "+type_map[cur[0][0]])
                    if cur[0][0]>30:
                        tl+=t
                    t=0
            cur=[i]
        else:
            cur.append(i)

    print()
    print(tg//1024,"KiB of graphics")
    print(tl//1024,"KiB of level data")
    print((tt-tg-tl)//1024,"KiB of misc")
    print(tt//1024,"KiB total")
    print()
    
    
    sizes = [len(i) for i in parts]
    
    print(len(parts),"text boxes total")
    print("hypothetically could be",sum(sizes)/curmax,"text boxes")
    print("largest text box is",max(sizes))
    print("average text box is",sum(sizes)/len(sizes))
    
    
    #[(print(i) if (len(i)==largest) else 0) for i in packets]
    
    

    text_block= ['''<c type="58"><object id="85" n="''',
                 '''" v="''',
                 '''"><pos x="-8.25" y="''',
                 '''"/></object></c>''']
    contents = ""
    
    
    for i in range(len(parts)):
        contents += (text_block[0]+str(i+1)+text_block[1]+parts[i]+text_block[2]+str((i+1)*0.5)+text_block[3])

    

    

    find_start1 = '''<c type="58"><object id="84" n="text block start"><pos x="-8.25"/></object></c>'''
    find_end1 = '''<c type="57">'''

    
    start1 = text.find(find_start1)
    end1 = text.find(find_end1)
    text = text[:start1+len(find_start1)]+contents+text[end1:]

    
    
    file = open(path_out,mode="w", newline='\n')
    file.write(text)
    file.close()

    print()
    print("actual file is",len(text)//1024,"KiB")
    print()

    print("took",time.time()-start_time,"seconds")
    
    
