-- ELM11 Citrus Doom Engine
-- Adapted from Citrus Doom engine.lua for ELM11 microcontroller
-- Replaces Stormworks APIs with ELM11 libraries

local elmath = require("elmath")
local eldata = require("eldata")
local elrender = require("elrender")
local elinput = require("elinput")
local elsound = require("elsound")

-- Math shortcuts
local m = math
local mx = m.max
local mn = m.min
local flr = m.floor
local pi = m.pi / 180
local abs = m.abs
local sin = m.sin
local cos = m.cos
local atan2 = m.atan2
local sqrt = m.sqrt
local clamp = elmath.clamp
local dist = elmath.dist
local add = elmath.add
local sub = elmath.sub
local dVec = elmath.dVec
local at2 = elmath.at2

-- Constants
local trueVar = true
local falseVar = false
local ipairsVar = ipairs
local tableRemove = table.remove
local exp = table.unpack
local str = string

-- Global variables
local M = {}
local romCr = 1
local levelCr = 3
local init = trueVar
local weapon = 2
local weaponFireDelay = 0
local httpTk = 0
local tick = 0
local tickGlobal = 0
local timePassage = 0
local pRandom = 0
local stg = 1
local lookAcl = 0
local difficulty = 2

-- Cached references
local M1, M4, M8, M10, M101, M12, M15
local pTng
local thinkers = {}
local sndLst = 1
local loaded = false
local out = {}
local blockmapLim

-- BSP traversal function
function findMe(i, a, cr)
    if i < 2^15 then
        cr = M[7][i]
        return findMe(cr[cr[3] * (a[2] - cr[2]) - cr[4] * (a[1] - cr[1]) > 0 and 8 or 7], a)
    else
        i = M[5][M[6][i - 2^15][2]]
        return M8[M[3][M[2][i[4]][i[5] + 6]][6]]
    end
end

-- Collision detection function
function chkPs(p, mv, index, checkPlayerPosLoop, cr)
    collObject = M1[index]
    s1 = M15[collObject[4]]
    r, h = s1[18], s1[19]
    bstDst, hitThing = r
    bounds = findMe(#M[7], p)
    bt, tp = exp(bounds)
    blkPs = sub(p, M101)
    blkCr = M10[2 + math.floor(blkPs[1] / 128) + math.floor(blkPs[2] / 128) * blockmapLim] or {}
    for i, cr in ipairsVar(blkCr[0] or {}) do
        pos = M1[cr]
        if cr ~= index and pos and collObject[14] ~= pos then
            dst = dist(pos, p)
            s2 = M15[pos[4]]
            if pos[20] then
                x1 = dst - s2[18]
                if x1 < bstDst and s2[23] & 1 > 0 and (s1[23] & 1 > 0 or clamp(p[9], pos[9] - h, pos[9] + s2[19]) == p[9]) then
                    hitThing = pos
                    bstDst = x1
                    bstA = at2(p, pos)
                end
            end
            if index < 2 and dst < 50 then
                a = s2[25]
                if a > 0 then
                    for n, v in ipairsVar(M12[a]) do
                        if v > 0 and M12[1][n] < M12[2][n] then
                            pos = M12
                            M1[cr] = falseVar
                            pos[1][n] = flr(mn(pos[1][n] + v, pos[2][n]))
                            if clamp(n, 5, 12) == n then
                                weapon = n - 4
                            end
                        end
                    end
                end
                a = s2[29]
                if a > 0 then
                    a = M[11][a]
                    for n = 7, 8 do
                        pTng[n] = clamp(pTng[n] + a[n * 2 - 13], pTng[n], a[n * 2 - 12])
                    end
                    M1[cr] = falseVar
                end
            end
        end
    end

    cr = checkPlayerPosLoop < 8
    if tp - bt < h then
        -- Handle floor/ceiling collision
        if p[9] < bt + h then
            p[9] = bt + h
            if mv then
                p[13] = 0
            end
        elseif p[9] > tp - h then
            p[9] = tp - h
            if mv then
                p[13] = 0
            end
            if cr[9] ~= bounds[1] and not flying then
                cr[9] = bounds[1]
                cr[10] = true
            end
        end
    end
    return bstDst > 0, hitThing
end

-- Fall physics
function fall(cr)
    flying = M15[cr[4]][23] & 4 > 0
    if not flying then
        bounds = findMe(#M[7], cr)
        bt = bounds[1]
        if cr[9] > bt then
            cr[13] = cr[13] - 1
        else
            cr[9] = bt
            cr[13] = 0
        end
    end
end

-- Damage function
function damageThing(stg, nm, attacker)
    stg[7] = stg[7] - nm
    if attacker then
        stg[14] = attacker
    end
end

-- Ray collision check
function chkRayCol(from, to, mode, linedef)
    -- Simplified ray collision for ELM11
    -- In full implementation, would need BSP traversal
    return false, 0
end

-- Summon thinker for doors/switches
function summonThinker(cr, action)
    thinkers[#thinkers + 1] = {cr[5], 1, cr}
end

-- Auto aim for weapons
function autoAim()
    -- Simplified auto aim
end

-- Fire weapon
function fireWeapon(shooter, index)
    -- Weapon firing logic
    -- Would create projectile
end

-- Main game loop
function onTick()
    -- Initialize output array
    for i = 1, 32 do
        out[i] = 0
    end
    tickGlobal = tickGlobal + 1

    -- Load data if not loaded
    if not loaded then
        -- Use eldata to load level data
        local data = eldata.load_level(levelCr)
        if data then
            M = data
            loaded = true
            init = true
        end
    end

    if loaded then
        if init then
            thinkers = {}
            sndLst = 1
            for i = 1, 10 do
                M[i] = M[i + 10 * levelCr]
            end
            M1 = M[1]
            M4 = M[4]
            M8 = M[8]
            M10 = M[10]
            M101, M10[1] = M10[1]
            M12 = M[12]
            M15 = M[15]
            for i = 14, 16 do
                M12[1][i] = 0
            end
            levelCr = levelCr + 1

            -- Initialize things
            for i = #M1, 1, -1 do
                local cr = M1[i]
                for j = 7, 32 do
                    cr[j] = 0
                end
                cr[7] = M15[cr[4]][4] -- health
                cr[9], cr[10] = findMe(#M[7], cr)[1] -- vertical position
                if cr[5] & difficulty < 1 then
                    tableRemove(M1, i)
                elseif cr[4] == 1 then -- identify player
                    if pTng then
                        cr[7] = pTng[7]
                        cr[8] = pTng[8]
                    end
                    pTng = cr
                end
            end
            blockmapLim = M101[3]
            init = false
        end

        -- Update time
        timePassage = mn(timePassage + 1 / 35, 2 / 35) -- Assuming 35 FPS target
        if timePassage >= 0 then
            timePassage = timePassage - 1 / 35
            tick = tick + 1

            -- Clear blockmap
            for i = 2, #M10 do
                M10[i][0] = {}
            end

            -- Update thinkers
            for i, v in ipairsVar(thinkers) do
                local cr = M[9][v[1]]
                local pos = v[3]
                local a = cr[2]
                local s1 = pos[a]
                pos[a] = clamp(cr[3], s1 - cr[4], s1 + cr[4]) + 0
                s1 = pos[a]
                if s1 == cr[3] then
                    thinkers[i] = v[2] == cr[5] and {cr[6], 1, pos} or {v[1], v[2] + 1, pos}
                    if cr[6] == 0 then
                        tableRemove(thinkers, i)
                    end
                end
                pos[10] = pos[10] or s1 ~= v
                pos[30] = i
            end

            -- Populate blockmap
            for i, cr in ipairsVar(M1) do
                if cr then
                    blkPs = sub(cr, M101)
                    blkCr = M10[2 + math.floor(blkPs[1] / 128) + math.floor(blkPs[2] / 128) * blockmapLim]
                    if blkCr then
                        blkCr[0][#blkCr[0] + 1] = i
                    end
                end
            end

            -- Update all things
            for i, cr in ipairsVar(M1) do
                if cr then
                    -- Update position based on velocity
                    for j, v in ipairsVar({1, 2, 9}) do
                        cr[v] = cr[v] + cr[v + 10]
                    end
                    cr[15] = cr[15] + 1
                    s1 = M15[cr[4]]
                    if cr[7] <= 0 and cr[20] then
                        cr[15] = 0
                        cr[6] = s1[cr[7] < -s1[4] and s1[15] > 1 and 15 or 14]
                        cr[10], cr[20] = trueVar
                        out[12] = s1[16] -- death sound
                        -- Item drop logic would go here
                    end

                    -- State machine logic (simplified)
                    local state = M[16][cr[6]]
                    cr[33] = cr[33] and (cr[33][20] and cr[33] or pTng)

                    if cr[15] >= state[2] and state[2] ~= -1 then
                        cr[6] = state[4]
                        cr[15] = 0
                        local state3 = M[16][cr[6]][3]
                        flying = s1[23] & 4 > 0

                        if state3 == 2 then -- view logic
                            chkPs(cr, falseVar, i, 8)
                            fall(cr)
                        elseif state3 == 3 then -- chase logic
                            -- Simplified chase logic
                            chkPs(cr, falseVar, i, 8)
                            fall(cr)
                        end
                    end

                    if cr[6] == 1 then
                        M1[i] = falseVar
                    end
                end
            end

            -- Player input and movement
            if pTng then
                -- Get input from elinput
                local moveX, moveY, look, shoot, interact = elinput.get_input()

                -- Look up/down
                pTng[3] = pTng[3] - look * (clamp(lookAcl, 5, 6) * 1.5 - 6)
                lookAcl = abs(look) * lookAcl + 1

                -- Movement
                local pp = add(pTng, dVec(pTng[3] - 180 + 90, moveY * 8.33))
                pp = add(pp, dVec(pTng[3] - 180, moveX * 8.33))
                pp[9] = pTng[9]

                -- Collision check
                local valid = chkPs(pp, trueVar, 1, 8)
                if valid then
                    for i = 1, 2 do
                        pTng[30 + i] = pp[i] - pTng[i]
                        pTng[i] = pp[i]
                    end
                    local bounds = findMe(#M[7], pTng)
                    if pTng[9] > bounds[1] then
                        pTng[19] = pTng[19] - 1
                    else
                        pTng[9] = mn(bounds[1], pTng[9] + 4)
                        pTng[19] = mx(0, pTng[19])
                    end
                else
                    pTng[19] = 0
                    pTng[9] = findMe(#M[7], pTng)[1]
                end

                -- Weapon switching
                for i = 1, 8 do
                    if elinput.get_button(i) and M12[1][i + 4] > 0 then
                        weapon = i
                    end
                end

                -- Shooting
                local crWeapon = M[14][weapon]
                M12[1][18] = M12[1][18] - 1

                local ammo = M12[1]
                local pos = crWeapon[1]
                if shoot and weaponFireDelay <= 0 and ammo[pos] >= crWeapon[2] then
                    weaponFireDelay = crWeapon[3]
                    if pos > 0 then
                        ammo[pos] = ammo[pos] - crWeapon[2]
                    end
                    autoAim()
                    fireWeapon(pTng, 1)
                    -- Play shoot sound
                    elsound.play_sound(crWeapon[4])
                end
                weaponFireDelay = weaponFireDelay - 1

                -- Interaction
                if interact then
                    local cr = add(pTng, dVec(pTng[3], 64))
                    cr[9] = pTng[9]
                    local thingExists, wall = chkRayCol(pTng, cr, 2, 1)
                    if not thingExists then
                        out[2] = wall
                        local linedef = M[2][wall]
                        if linedef then
                            local pos, valid = linedef[4]
                            for i = 14, 16 do
                                valid = valid or M12[1][i] > 0 and pos == i
                            end
                            if pos == 1 or valid then
                                summonThinker(linedef, linedef[5])
                            elseif pos > 3000 and pos < 3005 then
                                difficulty = flr(pos - 3000)
                            end
                        end
                    end
                end
            end
        end

        -- Prepare output for render/sound
        out[1] = weapon
        if pTng then
            for i = 3, 14 do
                out[i] = pTng[M[19][4][i]] or out[i]
            end
        end
        out[11] = M12[1][tickGlobal % #M12[1] + 1]

        -- Send updates to render
        elrender.update_things(M1, M8, pTng, out)
        elsound.update_sounds(out)
    end
end

return {
    onTick = onTick,
    init = function() init = true end,
    get_player = function() return pTng end,
    get_level_data = function() return M end
}