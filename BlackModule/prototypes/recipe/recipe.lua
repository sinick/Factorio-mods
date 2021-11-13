-- * Recipe *
data:extend(
{
  {
    type = "recipe",
    name = "black-module-1",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 10},
	  {"wood", 5},
    },
    energy_required = 1.5,
    result = "black-module-1"
  },
  {
    type = "recipe",
    name = "black-module-2",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
	  {"black-module-1", 2}
    },
    energy_required = 5,
    result = "black-module-2"
  },
  {
    type = "recipe",
    name = "black-module-3",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 1},
	  {"black-module-2", 2}
    },
    energy_required = 10,
    result = "black-module-3"
  },
  {
	type = "recipe",
	name = "black-module-4",
	enabled = false,
	ingredients =
	{
	  {"black-module-3", 2},
	  {"advanced-circuit", 2},
	  {"processing-unit", 2}
	},
	energy_required = 15,
	result = "black-module-4"
  },
  {
    type = "recipe",
    name = "gray-module-1",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 5},
	  {"wood", 5},
    },
    energy_required = 1.5,
    result = "gray-module-1",
    result_count = 2	
  },
  {
    type = "recipe",
    name = "gray-module-2",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
	  {"gray-module-1", 2}
    },
    energy_required = 5,
    result = "gray-module-2"
  },
  {
    type = "recipe",
    name = "gray-module-3",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 1},
	  {"gray-module-2", 2}
    },
    energy_required = 10,
    result = "gray-module-3"
  },
  {
	type = "recipe",
	name = "gray-module-4",
	enabled = false,
	ingredients =
	{
	  {"gray-module-3", 2},
	  {"advanced-circuit", 1},
	  {"processing-unit", 1}
	},
	energy_required = 15,
	result = "gray-module-4"
  },  
  {
    type = "recipe",
    name = "cyan-module-1",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 5},
	  {"wood", 5},
    },
    energy_required = 1.5,
    result = "cyan-module-1"
  },
  {
    type = "recipe",
    name = "cyan-module-2",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
	  {"cyan-module-1", 2}
    },
    energy_required = 5,
    result = "cyan-module-2"
  },
  {
    type = "recipe",
    name = "cyan-module-3",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 1},
	  {"cyan-module-2", 2}
    },
    energy_required = 10,
    result = "cyan-module-3"
  },
  {
	type = "recipe",
	name = "cyan-module-4",
	enabled = false,
	ingredients =
	{
	  {"cyan-module-3", 2},
	  {"advanced-circuit", 2},
	  {"processing-unit", 2}
	},
	energy_required = 15,
	result = "cyan-module-4"
  },
  {
    type = "recipe",
    name = "blue-module-1",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 5},
	  {"wood", 5},
    },
    energy_required = 1.5,
    result = "blue-module-1",
    result_count = 2	
  },
  {
    type = "recipe",
    name = "blue-module-2",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
	  {"blue-module-1", 2}
    },
    energy_required = 5,
    result = "blue-module-2"
  },
  {
    type = "recipe",
    name = "blue-module-3",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 1},
	  {"blue-module-2", 2}
    },
    energy_required = 10,
    result = "blue-module-3"
  },
  {
	type = "recipe",
	name = "blue-module-4",
	enabled = false,
	ingredients =
	{
	  {"blue-module-3", 2},
	  {"advanced-circuit", 1},
	  {"processing-unit", 1}
	},
	energy_required = 15,
	result = "blue-module-4"
  },  
  {
    type = "recipe",
    name = "red-module-1",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 5},
	  {"wood", 5},
    },
    energy_required = 1.5,
    result = "red-module-1"
  },
  {
    type = "recipe",
    name = "red-module-2",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
	  {"red-module-1", 2}
    },
    energy_required = 5,
    result = "red-module-2"
  },
  {
    type = "recipe",
    name = "red-module-3",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 1},
	  {"red-module-2", 2}
    },
    energy_required = 10,
    result = "red-module-3"
  },
  {
	type = "recipe",
	name = "red-module-4",
	enabled = false,
	ingredients =
	{
	  {"red-module-3", 2},
	  {"advanced-circuit", 2},
	  {"processing-unit", 2}
	},
	energy_required = 15,
	result = "red-module-4"
  },  
}
)