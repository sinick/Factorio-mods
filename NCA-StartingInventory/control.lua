
local function set_stack(e)
    local player = game.players[e.player_index]
    if not player.get_main_inventory() then return end
    local itemproto = game.item_prototypes
    local is_module_0 = false
    local inventory = {
        -- basic resource
        "coal", "iron-plate", "copper-plate", "steel-plate",
        -- Power
        "burner-inserter", "steam-engine", "boiler", "small-electric-pole",
        -- Other
        "wooden-chest", "small-lamp",        
        -- Fluid
        "pipe", "pipe-to-ground", "offshore-pump" , "pump", "storage-tank",
        -- Machine
        "electric-mining-drill", "electric-furnace", "assembling-machine-1", "lab",
        -- Logistic
        "transport-belt", "underground-belt", "splitter", "loader",
    }
    -- Find if module list exist in item prototype
    for name,prototype in pairs(itemproto) do
        if prototype.type == "module" then
            if string.find(name, "module%-0") then
                is_module_0 = true
                break
            end
        end
    end
    -- Create list of module
    if is_module_0 then
        for name,prototype in pairs(itemproto) do
            if string.find(name, "module%-0") then
                table.insert(inventory, name)
            end
        end
    else
        table.insert(inventory, "speed-module")
        table.insert(inventory, "effectivity-module")
        table.insert(inventory, "productivity-module")
    end
    -- Insert all element
    for i, name in pairs(inventory) do
        if itemproto[name] then
            player.print("Try to add " .. itemproto[name].stack_size " of ".. name .. ".")
            player.insert{ name = name, count = itemproto[name].stack_size }
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
