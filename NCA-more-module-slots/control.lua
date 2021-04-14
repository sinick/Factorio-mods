local more_module_slots_defines = require('defines')

local function set_stack(e)
    local player = game.players[e.player_index]
    if not player.get_main_inventory() then return end
    local itemproto = game.item_prototypes
    for name,prototype in pairs(itemproto) do
        if (name ~= nil and name ~= '') then
            if string.find(name, "module%-0") then
                player.print("Try to add " .. itemproto[name].stack_size * 5 .. " of ".. name .. ".")
                player.insert{ name = name, count = itemproto[name].stack_size * 5 }
            end
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

if settings.startup[more_module_slots_defines.names.settings.extra_modules].value then
    script.on_event(defines.events.on_player_created,                       player_created)
    script.on_event(defines.events.on_cutscene_cancelled,                   cutscene_cancelled)
end