data:extend(
{
	{
		type = "bool-setting",
		name = "NCA-Electric-pole-alternative",
		setting_type = "startup",
		default_value = false,
		per_user = true,
		order = "aa"
	},
	{
		type = "int-setting",
		name = "NCA-Electric-pole-area",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 2,
		maximum_value = 4,
		order = "ba"
	},
	{
		type = "int-setting",
		name = "NCA-Electric-pole-wire",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 2,
		maximum_value = 4,
		order = "bb"
	}
})