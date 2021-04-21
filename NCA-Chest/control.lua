local chest_list = require("config")

local function get_id()
	local id = global.id or 1
	id = id + 1
	global.id = id

	return id
end

local function purge_with_name(player, name)
	local map = {}
	local force = player.force
	for _, surface in pairs(game.surfaces) do
		local chests = surface.find_entities_filtered{name=name}
		for _,c in pairs(chests) do
			map[c.link_id] = true
		end
	end
	for id=1, global.id do
		local inv = force.get_linked_inventory(name, id)
		if inv and not map[id] then
			inv.destroy()
		end
	end
end

local function purge(player)
	for i=0,#chest_list.chests do
		purge_with_name(player,  chest_list.chest[i].name)
	end
end

local local_purge_index = 1

local function on_selected_area(event)
	local player = game.players[event.player_index]
	if event.item ~= "sc-merge-tool"  then return end	
	local entities = event.entities 
	
	local id = get_id()
	for _, chest in pairs(entities) do
		local inv = chest.get_inventory(defines.inventory.chest)
		local bar = inv.get_bar()
		local content = inv.get_contents()
		inv.clear()
		chest.link_id = id
		inv = chest.get_inventory(defines.inventory.chest)
		inv.set_bar(bar)
		for name, count in pairs(content) do
			inv.insert {name=name, count=count}
		end
	end
	
	purge_with_name(player,  chest_list.chest[local_purge_index].name )
	local_purge_index = local_purge_index + 1
	if local_purge_index > #chest_list.chests then
		local_purge_index = 1
	end
end	

script.on_event(defines.events.on_player_selected_area, on_selected_area)

local function on_built(evt)
	local e = evt.created_entity or evt.entity
	if not e or not e.valid then return end
	
	e.link_id = get_id()
	local inv = e.get_inventory(defines.inventory.chest)
end

local entity_filter = {}
for i=0, #chest_list.chests do
	table.insert(entity_filter, {filter='name', name=chest_list.chests[i].name})
end

script.on_event(defines.events.on_built_entity, on_built, entity_filter)
script.on_event(defines.events.on_robot_built_entity, on_built, entity_filter)
script.on_event(defines.events.script_raised_built, on_built, entity_filter)
script.on_event(defines.events.script_raised_revive, on_built, entity_filter)

