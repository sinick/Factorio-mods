local more_module_slots_defines = require('defines')
local module_list = {}


if settings.startup[more_module_slots_defines.names.settings.extra_modules].value then
    require('prototypes.modules')
    for k, v in pairs(data.raw.module) do
        if str.find(v.name, "module-0") then
            table.insert(module_list, v.name)
        end
    end
end