-- ELM11 Math Library for Citrus Doom
-- Adapted from Citrus Doom engine.lua
-- Pure Lua math functions for vector operations, trigonometry, etc.

m = math
mx = m.max
mn = m.min
flr = m.floor
pi = m.pi / 180
abs = m.abs

-- Vector addition
function add(a, b)
    return { (a[1] + b[1]), (a[2] + b[2]) }
end

-- Vector subtraction
function sub(a, b)
    return { (a[1] - b[1]), (a[2] - b[2]) }
end

-- Sine (degrees)
function s(a)
    return m.sin(a * pi)
end

-- Cosine (degrees)
function c(a)
    return m.cos(a * pi)
end

-- Atan2 (degrees)
function at2(a, b)
    return m.atan(b[2] - a[2], b[1] - a[1]) / pi
end

-- Clamp value
function clmp(a, b, c)
    return mx(mn(c, a), b)
end

-- Distance between points
function dist(a, b)
    return m.sqrt(((a[1] - b[1]) ^ 2) + ((a[2] - b[2]) ^ 2))
end

-- Directional vector
function dVec(a, b)
    return { c(a) * b, s(a) * b }
end

-- Additional utility functions (if needed)
function rnd(a)
    return flr(a + 0.5)
end

function wrap(a)
    return ((a + 180) % 360) - 180
end

-- Test functions (for REPL)
function test_math()
    print("Testing math functions...")
    local v1 = {1, 2}
    local v2 = {3, 4}
    local sum = add(v1, v2)
    print("add({1,2}, {3,4}) = {" .. sum[1] .. ", " .. sum[2] .. "}")
    print("dist({0,0}, {3,4}) = " .. dist({0,0}, {3,4}))
    print("s(90) = " .. s(90))  -- Should be 1
    print("c(0) = " .. c(0))    -- Should be 1
end