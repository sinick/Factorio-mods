

-- do the minimum between distance value and maximum distance
function min (val1, val2)
  if val1 > val2 
  then
    return val2
  end
  return val1
end


-- area multiplier
local mult_area =  1 
if settings.startup["epdarea"]
then
  mult_area =  settings.startup["epdarea"].value
end

-- wire multiplier
local mult_wire =  1 
if settings.startup["epdwire"]
then
  mult_wire =  settings.startup["epdwire"].value
end

data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = min(7.5 * mult_wire, 64)
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = min(2.5 * mult_area, 64)

data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = min(9 * mult_wire, 64)
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = min(3.5 * mult_area, 64)

data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = min(30 * mult_wire, 64)
data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = min(2 * mult_area, 64)

data.raw["electric-pole"]["substation"].maximum_wire_distance = min(18 * mult_wire, 64)
data.raw["electric-pole"]["substation"].supply_area_distance = min(9 * mult_area, 64)
