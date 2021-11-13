-- * Technology *
data:extend(
{
  {
    type = "technology",
    name = "black-module-1",
    icon = "__BlackModule__/graphics/black-module-tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "black-module-1"		
      },
      {
        type = "unlock-recipe",
        recipe = "gray-module-1"		
      },	  
      {
        type = "unlock-recipe",
		recipe = "cyan-module-1"
      }	,
	  {
        type = "unlock-recipe",
		recipe = "blue-module-1"
      },	  	  
      {
        type = "unlock-recipe",
		recipe = "red-module-1"
      }	  
    },
    prerequisites = {},
    unit = {
      count = 1,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 1
    },
    order = "i-h-a"
  },
  
  {
    type = "technology",
    name = "black-module-2",
    icon = "__BlackModule__/graphics/black-module-tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "black-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gray-module-2"		
      },	  
	  {
        type = "unlock-recipe",
		recipe = "cyan-module-2"
      },
	  {
        type = "unlock-recipe",
		recipe = "blue-module-2"
      },	  	  
	  {
        type = "unlock-recipe",
		recipe = "red-module-2"
      }
    },
    prerequisites = {"electronics", "black-module-1"},
    unit = {
      count = 5,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 5
    },
    order = "i-h-b"
  },

  {
    type = "technology",
    name = "black-module-3",
    icon = "__BlackModule__/graphics/black-module-tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "black-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "gray-module-3"		
      },	  
	  {
        type = "unlock-recipe",
		recipe = "cyan-module-3"
      },
	  {
        type = "unlock-recipe",
		recipe = "blue-module-3"
      },	  	  
	  {
        type = "unlock-recipe",
		recipe = "red-module-3"
      }
    },
    prerequisites = {"advanced-electronics", "black-module-2"},
    unit = {
      count = 5,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 10
    },
    order = "i-h-c"
  },
  
  {
    type = "technology",
    name = "black-module-4",
    icon = "__BlackModule__/graphics/black-module-tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "black-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "gray-module-4"		
      },	  
	  {
        type = "unlock-recipe",
		recipe = "cyan-module-4"
      },
	  {
        type = "unlock-recipe",
		recipe = "blue-module-4"
      },	  
	  {
        type = "unlock-recipe",
		recipe = "red-module-4"
      }
    },
    prerequisites = {"modules", "black-module-3"},
    unit = {
      count = 10,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 20
    },
    order = "i-h-d"
  }
}
)