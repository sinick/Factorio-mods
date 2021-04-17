if settings.startup["NCA-Electric-pole-alternative"].value == false then
	data.raw.technology["electric-energy-distribution-1"].effects = {
		{recipe = "medium-electric-pole", type = "unlock-recipe"},
		{recipe = "medium-electric-pole-alternative", type = "unlock-recipe"},
		{recipe = "big-electric-pole", type = "unlock-recipe"},
		{recipe = "big-electric-pole-alternative", type = "unlock-recipe"}
	}
	data.raw.technology["electric-energy-distribution-2"].effects = {
		{recipe = "substation", type = "unlock-recipe"},
		{recipe = "substation-alternative", type = "unlock-recipe"}
	}
	data:extend({
	-- medium-electric-pole-alternative
	{	type = "recipe",
		name = "medium-electric-pole-alternative",
		icon = "__base__/graphics/icons/medium-electric-pole.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "energy-pipe-distribution",
		energy_required = 0.5,
		order = "a[energy]-b[medium-electric-pole]-a",
		enabled = "false",
		ingredients = 
			{
				{type = "item", name = "iron-stick", amount = 2},
				{type = "item", name = "steel-plate", amount = 1},
				{type = "item", name = "copper-plate", amount = 1},
				{type = "item", name = "small-electric-pole", amount = 1},
			},
		results = {{type = "item", name = "medium-electric-pole", amount = 1}}
	},
	-- big-electric-pole-alternative
	{	type = "recipe",
		name = "big-electric-pole-alternative",
		icon = "__base__/graphics/icons/big-electric-pole.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "energy-pipe-distribution",
		energy_required = 0.5,
		order = "a[energy]-c[big-electric-pole]-a",
		enabled = "false",
		ingredients = 
			{
				{type = "item", name = "iron-stick", amount = 4},
				{type = "item", name = "steel-plate", amount = 3},
				{type = "item", name = "copper-plate", amount = 3},
				{type = "item", name = "medium-electric-pole", amount = 1},
			},
		results ={{type = "item", name = "big-electric-pole", amount = 1}}
	},
	-- substation-alternative
	{	type = "recipe",
		name = "substation-alternative",
		icon = "__base__/graphics/icons/substation.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "energy-pipe-distribution",
		energy_required = 0.5,
		order = "a[energy]-d[substation]-a",
		enabled = "false",
		ingredients = 
			{
				{type = "item", name = "steel-plate", amount = 5},
				{type = "item", name = "copper-plate", amount = 3},
				{type = "item", name = "advanced-circuit", amount = 5},
				{type = "item", name = "big-electric-pole", amount = 1},
			},
		results ={{type = "item", name = "substation", amount = 1}}
	}
	})
else
	data.raw.recipe["medium-electric-pole"].ingredients = {{"copper-plate", 2}, {"iron-stick", 4}, {"steel-plate", 2}, {"small-electric-pole", 1}}
	data.raw.recipe["big-electric-pole"].ingredients = {{"copper-plate", 5}, {"steel-plate", 5}, {"iron-stick", 8}, {"medium-electric-pole", 1}}
	data.raw.recipe["substation"].ingredients = {{"advanced-circuit", 5}, {"copper-plate", 5}, {"steel-plate", 10}, {"big-electric-pole", 1}}
end