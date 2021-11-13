-- * Item *
data:extend(
{
  {
    type = "module",
    name = "black-module-1",
    icon = "__BlackModule__/graphics/black-module-1.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 0,
    order = "L-z-f[bm]-a[black-module-1]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.25},
      consumption = {bonus = -0.5},
      speed = {bonus = 0.35},
	  pollution = {bonus = -0.35}
    },
    beacon_tint =
    {
      primary = {r = 0.247, g = 0.247, b = 0.247, a = 1.000},
      secondary = {r = 0.059, g = 0.059, b = 0.059, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "black-module-2",
    icon = "__BlackModule__/graphics/black-module-2.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 1,
    order = "L-z-f[bm]-b[black-module-2]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.35},
      consumption = {bonus = -0.75},
      speed = {bonus = 0.65},
	  pollution = {bonus = -0.65}
    },
    beacon_tint =
    {
      primary = {r = 0.247, g = 0.247, b = 0.247, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "black-module-3",
    icon = "__BlackModule__/graphics/black-module-3.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 2,
    order = "L-z-f[bm]-c[black-module-3]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.45},
      consumption = {bonus = -0.95},
      speed = {bonus = 0.95},
	  pollution = {bonus = -0.95}
    },
    beacon_tint =
    {
      primary = {r = 0.247, g = 0.247, b = 0.247, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "black-module-4",
    icon = "__BlackModule__/graphics/black-module-4.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 3,
    order = "L-z-f[bm]-d[black-module-4]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.5},
      consumption = {bonus = -1.25},
      speed = {bonus = 1.50},
	  pollution = {bonus = -1.25}
    },
    beacon_tint =
    {
      primary = {r = 0.247, g = 0.247, b = 0.247, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "gray-module-1",
    icon = "__BlackModule__/graphics/gray-module-1.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 0,
    order = "L-z-f[bgm]-a[gray-module-1]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.25}
    },
    beacon_tint =
    {
      primary = {r = 0.550, g = 0.550, b = 0.550, a = 1.000},
      secondary = {r = 0.059, g = 0.059, b = 0.059, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "gray-module-2",
    icon = "__BlackModule__/graphics/gray-module-2.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 1,
    order = "L-z-f[bgm]-b[gray-module-2]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.35}
    },
    beacon_tint =
    {
      primary = {r = 0.550, g = 0.550, b = 0.550, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "gray-module-3",
    icon = "__BlackModule__/graphics/gray-module-3.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 2,
    order = "L-z-f[bgm]-c[gray-module-3]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.45}
    },
    beacon_tint =
    {
      primary = {r = 0.550, g = 0.550, b = 0.550, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "gray-module-4",
    icon = "__BlackModule__/graphics/gray-module-4.png",
	icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 3,
    order = "L-z-f[bgm]-d[gray-module-4]",
    stack_size = 100,
    default_request_amount = 10,
    effect = 
    {
      productivity = {bonus = 0.5}
    },
    beacon_tint =
    {
      primary = {r = 0.550, g = 0.550, b = 0.550, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
	limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },  
  {
    type = "module",
    name = "cyan-module-1",
    icon = "__BlackModule__/graphics/cyan-module-1.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 0,
    order = "L-z-f[bcm]-a[cyan-module-1]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{ 
	  speed = {bonus = 1.75},
	  consumption = {bonus = -0.5},
      pollution = {bonus = -0.33}
	},
    beacon_tint =
    {
      primary = {r = 0.22, g = 0.635, b = 0.761, a = 1.000},
      secondary = {r = 0.000, g = 0.045, b = 0.065, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "cyan-module-2",
    icon = "__BlackModule__/graphics/cyan-module-2.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 1,
    order = "L-z-f[bcm]-b[cyan-module-2]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{ 
	  speed = {bonus = 2.5 },
	  consumption = {bonus = -0.65},
      pollution = {bonus = -0.65}
	},
    beacon_tint =
    {
      primary = {r = 0.22, g = 0.635, b = 0.761, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "cyan-module-3",
    icon = "__BlackModule__/graphics/cyan-module-3.png",
    icon_size = 32,

    subgroup = "module",
    category = "speed",
    tier = 2,
    order = "L-z-f[bcm]-c[cyan-module-3]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{
	  speed = {bonus = 3.75},
	  consumption = {bonus = -0.95},
      pollution = {bonus = -0.95}
	},
    beacon_tint =
    {
      primary = {r = 0.22, g = 0.635, b = 0.761, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "cyan-module-4",
    icon = "__BlackModule__/graphics/cyan-module-4.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 3,
    order = "L-z-f[bcm]-d[cyan-module-4]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{
	  speed = {bonus = 5.},
	  consumption = {bonus = -1.25},
      pollution = {bonus = -1.25}
	},
    beacon_tint =
    {
      primary = {r = 0.22, g = 0.635, b = 0.761, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "blue-module-1",
    icon = "__BlackModule__/graphics/blue-module-1.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 0,
    order = "L-z-f[bbm]-a[blue-module-1]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{ 
	  speed = {bonus = 1.75}
	},
    beacon_tint =
    {
      primary = {r = 0.0, g = 0.122, b = 0.961, a = 1.000},
      secondary = {r = 0.000, g = 0.045, b = 0.065, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "blue-module-2",
    icon = "__BlackModule__/graphics/blue-module-2.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 1,
    order = "L-z-f[bbm]-b[blue-module-2]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{ 
	  speed = {bonus = 2.5 }
	},
    beacon_tint =
    {
      primary = {r = 0.0, g = 0.122, b = 0.961, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "blue-module-3",
    icon = "__BlackModule__/graphics/blue-module-3.png",
    icon_size = 32,

    subgroup = "module",
    category = "speed",
    tier = 2,
    order = "L-z-f[bbm]-c[blue-module-3]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{
	  speed = {bonus = 3.75}
	},
    beacon_tint =
    {
      primary = {r = 0.0, g = 0.122, b = 0.961, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "blue-module-4",
    icon = "__BlackModule__/graphics/blue-module-4.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 3,
    order = "L-z-f[bbm]-d[blue-module-4]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{
	  speed = {bonus = 5.}
	},
    beacon_tint =
    {
      primary = {r = 0.0, g = 0.122, b = 0.961, a = 1.000},
      secondary = {r = 1.000, g = 0.850, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },  
  {
    type = "module",
    name = "red-module-1",
    icon = "__BlackModule__/graphics/red-module-1.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 0,
    order = "L-z-f[brm]-a[red-module-1]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{ 
	  speed = {bonus = 1.75},
	  consumption = {bonus = 0.5},
	  pollution = {bonus = 0.75}
	},
    beacon_tint =
    {
      primary = {r = 0.765, g = 0.192, b = 0.204, a = 1.000},
      secondary = {r = 0.063, g = 0.004, b = 0.000, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,		
  },
  {
    type = "module",
    name = "red-module-2",
    icon = "__BlackModule__/graphics/red-module-2.png",
    icon_size = 32,

    subgroup = "module",
    category = "effectivity",
    tier = 1,
    order = "L-z-f[brm]-b[red-module-2]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{ 
	  speed = {bonus = 2.5 },
	  consumption = {bonus = 0.65},
	  pollution = {bonus = 1.45}
	},
    beacon_tint =
    {
      primary = {r = 0.765, g = 0.192, b = 0.204, a = 1.000},
      secondary = {r = 0.824, g = 0.475, b = 0.176, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
  {
    type = "module",
    name = "red-module-3",
    icon = "__BlackModule__/graphics/red-module-3.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 2,
    order = "L-z-f[brm]-c[red-module-3]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{
	  speed = {bonus = 3.75},
	  consumption = {bonus = 0.95},
	  pollution = {bonus = 2.15}
	},
    beacon_tint =
    {
      primary = {r = 0.765, g = 0.192, b = 0.204, a = 1.000},
      secondary = {r = 0.824, g = 0.475, b = 0.176, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,		
  },
  {
    type = "module",
    name = "red-module-4",
    icon = "__BlackModule__/graphics/red-module-4.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 3,
    order = "L-z-f[brm]-d[red-module-4]",
    stack_size = 100,
    default_request_amount = 10,
    effect =
	{
	  speed = {bonus = 5.},
	  consumption = {bonus = 1.25},
	  pollution = {bonus = 3.5}
	},
    beacon_tint =
    {
      primary = {r = 0.765, g = 0.192, b = 0.204, a = 1.000},
      secondary = {r = 0.824, g = 0.475, b = 0.176, a = 1.000},
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,	
  },
}  
)