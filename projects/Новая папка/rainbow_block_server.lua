-- Рабочий скрипт для Krnl (все игроки видят блок)
local s = Instance.new("Script")
s.Source = [[
local block = Instance.new("Part")
block.Size = Vector3.new(50, 50, 50)
block.Position = Vector3.new(0, 25, 0)
block.Anchored = true
block.Material = Enum.Material.SmoothPlastic
block.BrickColor = BrickColor.new("Bright red")
block.Parent = workspace

local hue = 0
spawn(function()
    while block and block.Parent do
        wait(0.03)
        hue = (hue + 0.005) % 1
        block.BrickColor = BrickColor.new(Color3.fromHSV(hue, 1, 1))
    end
end)
]]
s.Parent = workspace
