local chest_list = {}

chest_list.prefix = "NCA-Chest-"
chest_list.chests = {}
-- Function to create 1 chest
local function create_chest (color_name, tint_value)
    table.insert(chest_list.chests, {name=chest_list.prefix .. color_name, color=color_name, tint=tint_value}
end

-- Create list of chest an its information
create_chest("red",         {1, 0, 0, 1})
create_chest("orange",      {1, 0.5, 0, 1})
create_chest("yellow",      {1, 1, 0, 1})
create_chest("pink",        {1, 0, 1, 1})
create_chest("green",       {0, 1, 0, 1})
create_chest("purple",      {0.5, 0, 0.25, 1})
create_chest("blue",        {0, 0, 1, 1})
create_chest("cyan",        {0, 1, 1, 1})
create_chest("black",       {0, 0, 0, 1})
create_chest("white",       {1, 1, 1, 1})
create_chest("grey",        {0.5, 0.5, 0.5, 1})
create_chest("brown",       {0.64, 0.64, 0.64, 1})


return chest_list