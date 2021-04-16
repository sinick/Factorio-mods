
local function set_stack(e)
    local player = game.players[e.player_index]
    if not player.get_main_inventory() then return end
    local itemproto = game.item_prototypes
    local inventory = {}

    -- basic resource
    inventory["coal"]={stack=1}
    inventory["iron-plate"]={stack=1}
    inventory["copper-plate"]={stack=1}
    inventory["steel-plate"]={stack=1}
    inventory["stone-brick"]={stack=1}
    
    -- Power
    -- inventory["burner-inserter"]={stack=1}
    -- inventory["steam-engine"]={stack=1}
    -- inventory["boiler"]={stack=1}
    -- inventory["small-electric-pole"]={stack=2}
    inventory["medium-electric-pole"]={stack=2}
    inventory["solar-panel"]={stack=2}
    inventory["solar-accumulator"]={stack=2}
    
    -- Other
    inventory["steel-chest"]={stack=1}
    inventory["small-lamp"]={stack=2}
            
    -- Fluid
    inventory["pipe"]={stack=1}
    inventory["pipe-to-ground"]={stack=1}
    inventory["offshore-pump"]={stack=1}
    inventory["pump"]={stack=1}
    inventory["pump-inland"]={stack=1} -- case inland pump
    inventory["storage-tank"]={stack=1}
    
    -- Machine
    inventory["electric-mining-drill"]={stack=2}
    inventory["electric-furnace"]={stack=4}
    inventory["assembling-machine-1"]={stack=2}
    inventory["lab"]={stack=1}
    
    -- Logistic
    inventory["transport-belt"]={stack=4}
    inventory["underground-belt"]={stack=1}
    inventory["splitter"]={stack=1}
    inventory["loader"]={stack=1}
    inventory["inserter"]={stack=4}

    -- Train
    inventory["locomotive"]={stack=1}
    inventory["cargo-wagon"]={stack=2}
    inventory["fluid-wagon"]={stack=2}
    inventory["rail"]={stack=4}
    inventory["train-stop"]={stack=2}
    inventory["rail-signal"]={stack=2}
    inventory["rail-chain-signal"]={stack=2}    
    
    
    -- ammo and explosive
    inventory["firearm-magazine"]={stack=2}
    inventory["cliff-explosives"]={stack=2}

		
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
