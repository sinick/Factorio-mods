if settings.startup["bm-bacon"].value == true then
  for i, beacon in pairs(data.raw.beacon) do
	table.insert(beacon.allowed_effects, "productivity")
	end
end

require("prototypes.item.module")
require("prototypes.recipe.recipe")
require("prototypes.technology.technology")