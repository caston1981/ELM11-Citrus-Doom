-- ELM11 Input Library - Love2D Compatible Version

local M = {}

-- Get input state (returns moveX, moveY, look, shoot, interact)
function M.get_input()
    local moveX = 0
    local moveY = 0

    if property.getBool("Left") then moveX = moveX - 1 end
    if property.getBool("Right") then moveX = moveX + 1 end
    if property.getBool("Up") then moveY = moveY - 1 end
    if property.getBool("Down") then moveY = moveY + 1 end

    local look = property.getBool("A")  -- A button for look
    local shoot = property.getBool("A")  -- A button for shoot
    local interact = property.getBool("Start")  -- Start for interact

    return moveX, moveY, look, shoot, interact
end

-- Get button state by index
function M.get_button(index)
    if index == 1 then return property.getBool("A")
    elseif index == 2 then return property.getBool("B")
    elseif index == 3 then return property.getBool("Start")
    else return false
    end
end

return M