

-- do the minimum between distance value and maximum distance
function min (val1, val2)
  if val1 > val2 
  then
    return val2
  end
  return val1
end

local mult_area =  settings.startup["NCA-Electric-pole-area"].value
local mult_wire =  settings.startup["NCA-Electric-pole-wire"].value

data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = min(data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = min(data.raw["electric-pole"]["small-electric-pole"].supply_area_distance * mult_area, 64)

data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = min(data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = min(data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance * mult_area, 64)

data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = min(data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = min(data.raw["electric-pole"]["big-electric-pole"].supply_area_distance * mult_area, 64)

data.raw["electric-pole"]["substation"].maximum_wire_distance = min(data.raw["electric-pole"]["substation"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["substation"].supply_area_distance = min(data.raw["electric-pole"]["substation"].supply_area_distance * mult_area, 64)
