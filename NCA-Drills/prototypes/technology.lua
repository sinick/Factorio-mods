data:extend({
	{
    type = "technology",
    name = "advanced-mining-drill",
	icon_size = 256, icon_mipmaps = 1,
    icon = "__NCA-Drills__/graphics/technology/advanced-mining-drill.png",
    prerequisites = {"steel-processing", "logistic-science-pack"},
    unit =
		{
		count = 100,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 15
    },
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "advanced-mining-drill"
			},
		},
    order = "c-b-a"
	},
	{
    type = "technology",
    name = "elite-mining-drill",
	icon_size = 256, icon_mipmaps = 1,
    icon = "__NCA-Drills__/graphics/technology/elite-mining-drill.png",
    prerequisites = {"advanced-mining-drill", "battery", "chemical-science-pack"},
    unit =
		{
		count = 150,
		ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
		time = 30
		},
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "elite-mining-drill"
			},
		},
    order = "c-b-b",
	},
	{
    type = "technology",
    name = "ultimate-mining-drill",
	icon_size = 256, icon_mipmaps = 1,
    icon = "__NCA-Drills__/graphics/technology/ultimate-mining-drill.png",
    prerequisites = {"elite-mining-drill", "advanced-electronics-2", "speed-module"},
    unit =
		{
		count = 250,
		ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
		time = 30
		},
	effects =
    {
		{
        type = "unlock-recipe",
        recipe = "ultimate-mining-drill"
		},
    },
    order = "c-b-c",
	}
})