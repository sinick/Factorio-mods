

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
if settings.startup["NCA-Electric_pole_distance-area"]
then
  mult_area =  settings.startup["NCA-Electric_pole_distance-area"].value
end

-- wire multiplier
local mult_wire =  1 
if settings.startup["NCA-Electric_pole_distance-wire"]
then
  mult_wire =  settings.startup["NCA-Electric_pole_distance-wire"].value
end

data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = min(data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = min(data.raw["electric-pole"]["small-electric-pole"].supply_area_distance * mult_area, 64)

data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = min(data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = min(data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance * mult_area, 64)

data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = min(data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = min(data.raw["electric-pole"]["big-electric-pole"].supply_area_distance * mult_area, 64)

data.raw["electric-pole"]["substation"].maximum_wire_distance = min(data.raw["electric-pole"]["substation"].maximum_wire_distance * mult_wire, 64)
data.raw["electric-pole"]["substation"].supply_area_distance = min(data.raw["electric-pole"]["substation"].supply_area_distance * mult_area, 64)
