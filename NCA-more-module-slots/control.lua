
local function set_stack(e)
    local player = game.players[e.player_index]
    if not player.get_main_inventory() then return end
    
    local itemproto = game.item_prototypes
    local count = 1
    
    for k, v in pairs(data.raw.module) do
        if str.find(v.name, "module-0") and itemproto[v.name] then
            if v.in_stack then
                count = itemproto[v.name].stack_size * 5
            end
            player.insert{ name = v.name, count = count }
        else 
            log("Modules 0 are missing")
            exit 1
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