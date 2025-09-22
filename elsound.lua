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

return {
    init_sound = init_sound,
    play_sound = play_sound,
    update_sounds = update_sounds,
    test_sound = test_sound
}