-- Rainbow Huge Block - Krnl script
-- Everyone can see it

local block = Instance.new("Part")
block.Size = Vector3.new(50, 50, 50)
block.Position = Vector3.new(0, 25, 0)
block.Anchored = true
block.Material = Enum.Material.SmoothPlastic
block.BrickColor = BrickColor.new("Bright red")
block.TopSurface = Enum.SurfaceType.Smooth
block.BottomSurface = Enum.SurfaceType.Smooth

local mesh = Instance.new("SpecialMesh")
mesh.MeshType = Enum.MeshType.Brick
mesh.Scale = Vector3.new(1, 1, 1)
mesh.Parent = block

local weld = Instance.new("Weld")
weld.Part0 = block
weld.Part1 = block
weld.Parent = block

block.Parent = workspace

-- Rainbow color cycling
local hue = 0
game:GetService("RunService").RenderStepped:Connect(function()
    hue = (hue + 0.005) % 1
    block.BrickColor = BrickColor.new(Color3.fromHSV(hue, 1, 1))
end)
