-- ELM11 Sound Library
-- PWM audio output for Doom sounds

-- Assume PWM functions from ELM11
-- import("set_pwm")
-- import("timer_delay")

local PIN_SPEAKER = 6  -- PWM pin for speaker

-- Sound frequencies (Hz) for Doom sounds
local SOUND_FREQUENCIES = {
    [1] = 440,   -- Pistol
    [2] = 330,   -- Shotgun
    [3] = 220,   -- Chaingun
    [4] = 550,   -- Rocket
    [5] = 660,   -- Plasma
    [6] = 880,   -- BFG
    [7] = 200,   -- Pain
    [8] = 150,   -- Death
    [9] = 300,   -- Pickup
    [10] = 400, -- Door
    -- Add more as needed
}

-- Initialize sound system
function init_sound()
    -- Configure speaker pin as PWM
    set_io_type_cfg(PIN_SPEAKER, PWM)
    print("Sound system initialized")
end

-- Play sound by ID
function play_sound(sound_id)
    local freq = SOUND_FREQUENCIES[sound_id] or 440
    local duration = 200  -- ms, adjust as needed

    -- Set PWM frequency (simplified)
    -- In ELM11, PWM might need duty cycle and frequency setup
    set_pwm(PIN_SPEAKER, 128)  -- 50% duty cycle

    -- Delay for duration
    timer_delay(duration)

    -- Stop sound
    set_pwm(PIN_SPEAKER, 0)
end

-- Update sounds from engine output
function update_sounds(out)
    -- Check for sound triggers in out array
    for i = 12, 32 do  -- Sound outputs typically in higher indices
        if out[i] and out[i] > 0 then
            play_sound(out[i])
            out[i] = 0  -- Clear after playing
        end
    end
end

-- Test sound
function test_sound()
    init_sound()
    play_sound(1)  -- Test pistol sound
end

-- ELM11 Sound Module API wrapper for Citrus Doom compatibility
-- Provides output.setNumber and output.setBool functions

local output = {}

-- Output channel mappings
local sound_channels = {
    [1] = {active = false, frequency = 0, duty = 0},
    [2] = {active = false, frequency = 0, duty = 0},
    [3] = {active = false, frequency = 0, duty = 0},
    [4] = {active = false, frequency = 0, duty = 0},
    [5] = {active = false, frequency = 0, duty = 0},
}

-- Set number output (sound generation via PWM)
function output.setNumber(channel, value)
    local sound = sound_channels[channel]
    if not sound then return end

    if value == 0 then
        -- Stop sound
        sound.active = false
        sound.duty = 0
        -- In ELM11: set_pwm(PIN_SPEAKER, 0)
    else
        -- Start/play sound
        sound.active = true
        sound.frequency = math.abs(value) * 10 -- Scale frequency
        sound.duty = 128 -- 50% duty cycle for square wave
        -- In ELM11: set_pwm(PIN_SPEAKER, sound.duty)
        -- pwm.setclock would set frequency
    end
end

-- Set boolean output (not used for sound)
function output.setBool(channel, value)
    -- Boolean outputs not used in sound system
end

-- Initialize sound system
function output.init()
    init_sound()
end

return {
    init_sound = init_sound,
    play_sound = play_sound,
    update_sounds = update_sounds,
    test_sound = test_sound,
    output = output
}