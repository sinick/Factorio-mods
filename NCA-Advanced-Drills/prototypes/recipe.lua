data:extend({
    {
    type = "recipe",
    name = "advanced-mining-drill",
    enabled = false,
	energy_required = 2,
	ingredients =
		{
			{"electric-mining-drill", 2},
			{"electronic-circuit", 10},
			{"steel-plate", 10}
		},
	result = "advanced-mining-drill"
	},
	{
    type = "recipe",
    name = "elite-mining-drill",
    enabled = false,
	energy_required = 2,
	ingredients =
		{
			{"advanced-mining-drill", 2},
			{"advanced-circuit", 5},
			{"battery", 5}
		},
	result = "elite-mining-drill"
	},
	{
    type = "recipe",
    name = "ultimate-mining-drill",
    enabled = false,
	energy_required = 2,
	ingredients =
		{
			{"elite-mining-drill", 2},
			{"processing-unit", 2},
			{"speed-module", 4}
		},
	result = "ultimate-mining-drill"
	},
})