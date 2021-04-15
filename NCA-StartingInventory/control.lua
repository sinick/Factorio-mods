
local function set_stack(e)
    local player = game.players[e.player_index]
    if not player.get_main_inventory() then return end
    local itemproto = game.item_prototypes
    local inventory = {
        -- basic resource
        {name="coal", stack=1}, {name="iron-plate", stack=1}, {name="copper-plate", stack=1}, {name="steel-plate", stack=1},
        -- Power
        {name="burner-inserter", stack=1}, {name="steam-engine", stack=1}, {name="boiler", stack=1}, {name="small-electric-pole", stack=2},
        -- Other
        {name="wooden-chest", stack=1}, {name="small-lamp", stack=2},        
        -- Fluid
        {name="pipe", stack=1}, {name="pipe-to-ground", stack=1}, {name="offshore-pump", stack=1}, {name="pump", stack=1}, {name="storage-tank", stack=1},
        -- Machine
        {name="electric-mining-drill", stack=2}, {name="electric-furnace", stack=4}, {name="assembling-machine-1", stack=2}, {name="lab", stack=1},
        -- Logistic
        {name="transport-belt", stack=4}, {name="underground-belt", stack=1}, {name="splitter", stack=1}, {name="loader", stack=1},
    }
    -- Find if module list exist in item prototype
    local is_module_0 = false
    for name,proto in pairs(itemproto) do
        if proto.type == "module" then
            if string.find(name, "module%-0") then
                is_module_0 = true
                break
            end
        end
    end
    -- Create list of module
    local module_stack = 2
    if is_module_0 then
        inventory["speed-module-0"] = {stack=module_stack}
        inventory["effectivity-module-0"] = {stack=module_stack}
        inventory["productivity-module-0"] = {stack=module_stack}
    else
        inventory["speed-module"] = {stack=module_stack}
        inventory["effectivity-module"] = {stack=module_stack}
        inventory["productivity-module"] = {stack=module_stack}
    end
    -- Insert all element
    for name, proto in pairs(inventory) do
        if itemproto[name] then
            player.print("Add " .. itemproto[name].stack_size * proto.stack .. " of ".. name .. ".")
            player.insert{ name = name, count = itemproto[name].stack_size * proto.stack }
        end
    end
end

local function player_created(e)
    set_stack(e)
end

local function cutscene_cancelled(e)
if remote.interfaces["freeplay"] then   -- Added for 1.0 freeplay cutscene
    set_stack(e)
end
end

script.on_event(defines.events.on_player_created,                       player_created)
script.on_event(defines.events.on_cutscene_cancelled,                   cutscene_cancelled)
