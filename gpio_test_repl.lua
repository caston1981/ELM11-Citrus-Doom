-- Quick GPIO Button Test for ELM11 REPL
-- Run this in ELM11 REPL to test GPIO buttons

dofile("elinput.lua")
inputMode = "gpio"
initInputSound(false)

print("GPIO Button Quick Test")
print("Press buttons and run: test_input(false)")
print("Or check individual buttons:")
print("getButtonUp(), getButtonDown(), getButtonLeft(), getButtonRight(), getButtonShoot()")
print("")
print("For Doom input values, run:")
print("moveX, moveY, look, shoot, interact = get_input()")
print("Then print the values individually")