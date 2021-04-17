data:extend({
    {
        type = "bool-setting",
        name = "NCA-Starter-starting-items",
        setting_type = "runtime-global",
        default_value = true,
        order = "aa"
    }
    ,
    {
        type = "bool-setting",
        name = "NCA-Starter-starting-robots",
        setting_type = "runtime-global",
        default_value = true,
        order = "ba"

    }
    ,
    {
        type = "int-setting",
        name = "NCA-Starter-robots-count",
        setting_type = "runtime-global",
        default_value = 50,
        minimum_value = 50,
        maximum_value = 500,
        order = "bb"
    }
    ,
    {
        type = "int-setting",
        name = "NCA-Starter-robots-speed",
        setting_type = "runtime-global",
        default_value = 0,
        minimum_value = 0,
        order = "bc"
    }
})