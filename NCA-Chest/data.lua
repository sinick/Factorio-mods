local chest_list = require("config")

-- Create Chest
local function create_chest(index) 
	local chest_data = table.deepcopy(data.raw["linked-container"]["linked-chest"])
	chest_data.name =  chest_list.chests[index].name
	chest_data.icon_size = 64
	chest_data.icons = {
		{
			icon = "__NCA-Chest__/graphics/icons/chest.png",
		}, 
		{
			icon = "__NCA-Chest__/graphics/icons/chest-mask.png",
			tint = chest_list.chests[index].tint
		}
	}
	chest_data.icon_mipmaps = 4
	chest_data.inventory_size = 80

	chest_data.allow_copy_paste = false
	chest_data.minable = {hardness = 0.2, mining_time = 0.2, result = chest_list.chests[index].name }
	chest_data.gui_mode = "none"

	chest_data.picture.layers[1].filename = "__NCA-Chest__/graphics/entity/chest.png"
	chest_data.picture.layers[1].hr_version.filename = "__NCA-Chest__/graphics/entity/hr-chest.png"

	local color_layer = table.deepcopy(chest_data.picture.layers[1])
	table.insert(chest_data.picture.layers, 2, color_layer)

	color_layer.tint = chest_list.chests[index].tint
	color_layer.apply_runtime_tint = true
	color_layer.filename = "__NCA-Chest__/graphics/entity/chest-mask.png"

	color_layer.hr_version.tint = chest_list.chests[index].tint
	color_layer.hr_version.apply_runtime_tint = true
	color_layer.hr_version.filename = "__NCA-Chest__/graphics/entity/hr-chest-mask.png"

	data:extend
	{
		chest_data,
		{
			type = "item",
			name = chest_list.chests[index].name,
			icon_size = 64, 
			icons = {
				{
					icon = "__NCA-Chest__/graphics/icons/chest.png",
				}, 
				{
					icon = "__NCA-Chest__/graphics/icons/chest-mask.png",
					tint = chest_list.chests[index].tint
				}
			},
			icon_mipmaps = 4,
			subgroup = "storage",
			order = "[" .. chest_list.chests[index].name .. "]",
			place_result = chest_list.chests[index].name,
			stack_size = 10
		},
		{
			type = "recipe",
			name = chest_list.chests[index].name,
			enabled = false,
			ingredients =
			{
			  {"iron-plate", 20},
			  {"steel-plate", 10},
			  {"electronic-circuit", 5},
			  {"copper-cable", 10}
			},
			result = chest_list.chests[index].name
		}
	}
end

local recipe_effects = {}
local names = {}
for i=0, #chest_list.chests do
	create_chest(i)
	table.insert(names, chest_list.chests[i].name)
	table.insert(recipe_effects, { type = "unlock-recipe", recipe = chest_list.chests[i].name })
end

data:extend(	
	{
		{
			type = "technology",
			name = "NCA-Chest",
			icon = "__NCA-Chest__/graphics/icons/chest.png",
			icon_size = 64,
			effects = recipe_effects,
			prerequisites = { "steel-processing", "electronics" },
			unit =
			{
			  count = 100,
			  ingredients =
			  {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1 }
			  },
			  time = 10
			},
			order = "a-b-b"
		}
	}
)

-- Add Merging tool
data:extend 
{ 
    {

        type = "selection-tool",
        name = "sc-merge-tool",
        icon = "__NCA-Chest__/graphics/icons/merge-tool.png",
        icon_size = 32,
        selection_color = { r=1, g=0, b=0 },
        alt_selection_color = { r=1, g=1, b=0 },
        selection_mode = {"same-force", "buildable-type" },
        alt_selection_mode = {"same-force"},
        selection_cursor_box_type = "entity",
        alt_selection_cursor_box_type =  "entity",
        flags = {"hidden", "not-stackable", "only-in-cursor", "spawnable"},
        subgroup = "other",
        stack_size = 1,
        entity_filters = names,
        alt_entity_filters = {},
        stackable = false,
        show_in_library = false
    }
}

-- Add Shortcut
data:extend
{
  {
    type = "shortcut",
    name = "NCA-Chest-shortcut",
    order = "h[hotkeys]-s[c-chest]",
    action = "spawn-item",
    technology_to_unlock = "NCA-Chest",
    item_to_spawn = "sc-merge-tool",
    icon =
    {
      filename = "__NCA-Chest__/graphics/icons/merge-tool-x32.png",
      priority = "extra-high-no-scale",
      size = 32,
      scale = 1,
      flags = {"gui-icon"}
    },
    small_icon =
    {
      filename = "__NCA-Chest__/graphics/icons/merge-tool-x24.png",
      priority = "extra-high-no-scale",
      size = 24,
      scale = 1,
      flags = {"gui-icon"}
    },
  },
}
