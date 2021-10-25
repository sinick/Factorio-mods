

for i = 1, 25 do
	data:extend({
		{
			type = "int-setting",
			name = "sc-chest-slot-" .. i,
			setting_type = "startup",
			default_value = 80,
			minimum_value=1,
			maximum_value=2000
		}
	})
end


data:extend({
	{
		type = "string-setting",
		name = "sc-overflow-type",
		setting_type = "runtime-per-user",
		default_value = "destroy",
		allowed_values = {"abort", "destroy","spill", "to_player", "to_item" }
	},
	{
		type = "string-setting",
		name = "sc-mining-type",
		setting_type = "runtime-global",
		default_value = "item_with_tag",
		allowed_values = {"to_player", "item_with_tag"}
	},
	{
		type = "bool-setting",
		name = "sc-use-generic",
		setting_type = "startup",
		default_value = false
	},
	{
		type = "int-setting",
		name = "sc-reader-count",
		setting_type = "startup",
		default_value = 20,
		minimum_value=20,
		maximum_value=128
	}
})
