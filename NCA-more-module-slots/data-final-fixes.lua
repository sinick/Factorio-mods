local function starts_with(str, start)
    return str:sub(1, #start) == start
end

local more_module_slots_defines = require('defines')

local can_have_modules = {
    ['assembling-machine'] = settings.startup[more_module_slots_defines.names.settings.assembling_machine].value,
    ['furnace'] = settings.startup[more_module_slots_defines.names.settings.furnace].value,
    ['mining-drill'] = settings.startup[more_module_slots_defines.names.settings.mining_drill].value,
    ['rocket-silo'] = settings.startup[more_module_slots_defines.names.settings.rocket_silo].value,
    ['beacon'] = settings.startup[more_module_slots_defines.names.settings.beacon].value,
    ['lab'] = settings.startup[more_module_slots_defines.names.settings.lab].value
}

local max_slots = 65535

for name, add_more_modules in pairs(can_have_modules) do
    if add_more_modules then
        for _, k in pairs(data.raw[name]) do
            if not starts_with(k.name, 'creative') then
                if (not k.allowed_effects) or (#k.allowed_effects > 0) then
                    log(k.name)

                    -- check if has module slots
                    if k.module_specification and k.module_specification.module_slots and k.module_specification.module_slots > 0 then
                        --log(serpent.block(k.module_specification))
                        -- has module slots, add more
                        local num_slots = k.module_specification.module_slots
                        local factor = settings.startup[more_module_slots_defines.names.settings.factor].value
                        if settings.startup[more_module_slots_defines.names.settings.multiplicative_module_slots].value then
                            num_slots = num_slots * factor
                        else
                            num_slots = num_slots + factor
                        end
                        if num_slots > max_slots then
                            num_slots = max_slots
                        end
                        data.raw[name][k.name].module_specification.module_slots = num_slots
                    else
                        -- does not have module slots, check to add
                        if settings.startup[more_module_slots_defines.names.settings.add_to_nonmoduled_entities].value then
                            local num_slots = settings.startup[more_module_slots_defines.names.settings.factor].value

                            local raw = table.deepcopy(data.raw[name][k.name])
                            raw.module_specification = {
                                module_slots = num_slots
                            }
                            raw.allowed_effects = {
                                'consumption',
                                'speed',
                                'productivity',
                                'pollution'
                            }
                            data:extend(
                                {
                                    raw
                                }
                            )
                        end
                    end
                end
            end
        end
    end
end

-- Multiply bonus effect of all module
local multiplier_effect = settings.startup[more_module_slots_defines.names.settings.multiplier].value
if multiplier_effect ~= 1 then
    for k,v in pairs(data.raw.module) do
        if v.effect["productivity"] then
            if v.effect["productivity"]["bonus"] and v.effect["productivity"]["bonus"] > 0 then
                v.effect["productivity"]["bonus"] = v.effect["productivity"]["bonus"] * multiplier_effect
            end
        end
        if v.effect["speed"] then
            if v.effect["speed"]["bonus"] and v.effect["speed"]["bonus"] > 0  then
                v.effect["speed"]["bonus"] = v.effect["speed"]["bonus"] * multiplier_effect
            end
        end
        if v.effect["consumption"] then
            if v.effect["consumption"]["bonus"] and v.effect["consumption"]["bonus"] < 0  then
                v.effect["consumption"]["bonus"] = v.effect["consumption"]["bonus"] * multiplier_effect
            end
        end
        if v.effect["pollution"] then
            if v.effect["pollution"]["bonus"] and v.effect["pollution"]["bonus"] < 0  then
                v.effect["pollution"]["bonus"] = v.effect["pollution"]["bonus"] * multiplier_effect
            end
        end
    end
end

-- Removed limit of production if wanted
local production_limit = settings.startup[more_module_slots_defines.names.settings.production].value
if not production_limit then
    for k,v in pairs(data.raw.module) do
        if v.limitation then
            v.limitation = nil -- empty limitation table
            v.limitation_message_key = nil
        end
    end
end



-- Change category of module if item group exist
function generate_group(subgroupname, counter, subname, element_list)
    data:extend ({
          {
            type = "item-subgroup",
            name = subgroupname,
            group = "a-modules",
            order = "f-" .. (counter+8),
          }
        })
    for i in element_list do
        data.raw.module[subname .. i].subgroup = subgroupname
    end
    return counter + 1
end

if data.raw["a-modules"] then
    counter = 1;
    if data.raw["module"]["black-module-1"] then
        counter = generate_group("a-black", counter, "black-module-", {1,2,3,4})
    end
    if data.raw["module"]["gray-module-1"] then
        counter = generate_group("a-gray", counter, "gray-module-", {1,2,3,4})
    end
    if data.raw["module"]["red-module-1"] then
        counter = generate_group("a-red", counter, "red-module-", {1,2,3,4})
    end
end
