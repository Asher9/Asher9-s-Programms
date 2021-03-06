-- pastebin run -f p5hEA53L
-- from Asher9
-- https://github.com/Asher9/Asher9-s-Programms

local function standby(text)
  local component   = require("component")
  if component.isAvailable("screen") and component.isAvailable("gpu") then
    local computer  = require("computer")
    local standby   = 0.90
    local display   = standby
    local wartezeit = 2
    local screen    = component.getPrimary("screen")
    local gpu       = component.getPrimary("gpu")
    local hinten    = gpu.getBackground()
    local vorne     = gpu.getForeground()
    
    local function energie()
      return computer.energy() / computer.maxEnergy()
    end
    
    while energie() < standby do
      if energie() < display then
        screen.turnOff()
        os.sleep(wartezeit * 5)
      else
        screen.turnOn()
        if text then
          gpu.setBackground(0x000000)
          gpu.setForeground(0xFFFFFF)
          os.sleep(0.1)
          require("term").clear()
          os.sleep(0.1)
          gpu.set(1, 1, string.format("Standby Energie: %.f%%", energie() * 100))
        end
        os.sleep(wartezeit)
      end
    end
    
    screen.turnOn()
    gpu.setBackground(hinten)
    gpu.setForeground(vorne)
    os.sleep(0.1)
  end
end

return standby
