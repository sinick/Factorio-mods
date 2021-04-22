
--- Generation of inventory
local function Generate_Inventory(e)
    local player = game.players[e.player_index]
    if not player.get_main_inventory() then return end
    local itemproto = game.item_prototypes
    local inventory = {}

    -- basic resource
    inventory["coal"]={stack=1}
    inventory["stone"]={stack=1}
    inventory["iron-plate"]={stack=1}
    inventory["copper-plate"]={stack=1}
    inventory["steel-plate"]={stack=1}
    inventory["stone-brick"]={stack=1}
	if game.active_mods["no-belts"] then
		inventory["iron-gear-wheel"]={stack=1}
		inventory["electronic-circuit"]={stack=1}
	end
    
    -- Power
    inventory["medium-electric-pole"]={stack=2}
    inventory["solar-panel"]={stack=4}
    inventory["accumulator"]={stack=3}
    
    -- Other
    inventory["steel-chest"]={stack=1}
    -- inventory["small-lamp"]={stack=2}
            
    -- Fluid
    inventory["pipe"]={stack=2}
    inventory["pipe-to-ground"]={stack=2}
    if game.active_mods["inland_pumps"] then
        inventory["offshore-pump-inland"]={stack=2}
    else
        inventory["offshore-pump"]={stack=2}
    end
    inventory["pump"]={stack=1}
    inventory["storage-tank"]={stack=1}
    
    -- Machine
    inventory["electric-mining-drill"]={stack=2}
    inventory["electric-furnace"]={stack=2}
    inventory["assembling-machine-2"]={stack=2}
    inventory["lab"]={stack=1}
    
    -- Logistic
	if not game.active_mods["no-belts"] then
		inventory["fast-transport-belt"]={stack=5}
		inventory["fast-underground-belt"]={stack=2}
		inventory["fast-splitter"]={stack=2}
		inventory["fast-loader"]={stack=2}
	end
	inventory["fast-inserter"]={stack=5}

    -- Train
    inventory["locomotive"]={stack=1}
    inventory["cargo-wagon"]={stack=2}
    inventory["fluid-wagon"]={stack=2}
    inventory["rail"]={stack=4}
    inventory["train-stop"]={stack=1}
    inventory["rail-signal"]={stack=1}
    inventory["rail-chain-signal"]={stack=1}    
    
    -- ammo and explosive
    inventory["firearm-magazine"]={stack=1}
    inventory["cliff-explosives"]={stack=1}

    -- Modules
	if game.active_mods["CircuitProcessing"] then
		inventory["speed-module-2"] = {stack=1}
		inventory["effectivity-module-2"] = {stack=1}
		inventory["productivity-module-2"] = {stack=1}
	else
		inventory["speed-module"] = {stack=1}
		inventory["effectivity-module"] = {stack=1}
		inventory["productivity-module"] = {stack=1}
	end
    
    -- Insert all element
    for name, proto in pairs(inventory) do
        if itemproto[name] then
				player.print("Add " .. itemproto[name].stack_size * proto.stack .. " of ".. name .. ".")
				player.insert{ name = name, count = itemproto[name].stack_size * proto.stack }
        end
    end
end

function Generate_Armor(e)
	local ItemPrototypes = {
		Armor = "power-armor-mk2",
		Robot = "construction-robot",
		Fuel = "",
		Reactor = "fusion-reactor-equipment", --4x4
		Exoskeleton = "exoskeleton-equipment", --2x4
		Shield = "energy-shield-mk2-equipment", --2x2
		Roboport = "personal-roboport-mk2-equipment", --2x2
		Battery = "battery-mk2-equipment", --1x2
		LaserDefense = "personal-laser-defense-equipment", --2x2	
		Nightvision = "night-vision-equipment", --2x2
		Panel = "solar-panel-equipment", --1x1
		Immunity = "belt-immunity-equipment", --1x1
	}

	local Items = {{ItemPrototypes["Robot"], settings.global["NCA-Starter-robots-count"].value}}
	local ArmorModules = {
		--Vanilla, 10x10 grid
		{Name = ItemPrototypes["Roboport"], Count = 4},
		{Name = ItemPrototypes["Reactor"], Count = 4},
		{Name = ItemPrototypes["Battery"], Count = 3},
		{Name = ItemPrototypes["Panel"], Count = 1},
		{Name = ItemPrototypes["Immunity"], Count = 1},
		{Name = ItemPrototypes["Nightvision"], Count = 1},
		{Name = ItemPrototypes["Exoskeleton"], Count = 1},
	}
	local Player = game.players[e.player_index]
	local ArmorInventory = Player.get_inventory(defines.inventory.character_armor)
	
	if not(ArmorInventory == nil) then --If the player doesn't have armor inventory, the player hasn't spawned, so we can skip this round.
		for i, v in pairs(Items) do
			Player.insert{name = v[1], count = v[2]}
		end
		if not(ArmorInventory.is_empty()) then
			--We want to remove whatever armor they had to slot in what we want.
			local CurrentArmor = ArmorInventory[1].name
			ArmorInventory.clear()
			--Then for good measure we destroy it from the inventory.
			local PlayerInventory = Player.get_inventory(defines.inventory.character_main)
			PlayerInventory.remove(CurrentArmor);
		end
		local n = 0
		n = ArmorInventory.insert{name=ItemPrototypes["Armor"],count=1}
		if(n > 0)then -- we actually equipped the armor
			local grid=ArmorInventory[1].grid
			for i,module in pairs(ArmorModules) do
				for y = 1, module.Count, 1 do
					grid.put({name=module.Name})
				end
			end
		end
	end
end	


--Freeplay
script.on_init(function(e)
	if settings.global["NCA-Starter-starting-robots"].value == false then return end
	local speed = settings.global["NCA-Starter-robots-speed"].value
	if not(speed == 0) then
		for k,v in pairs(game.forces) do
			for z = 1, speed, 1 do
				if z < 6 then
					v.technologies["worker-robots-speed-" .. tostring(z)].researched = true
				else
					v.technologies["worker-robots-speed-6"].level = v.technologies["worker-robots-speed-6"].level + 1
				end
			end
		end
	end
end)

--Classic start/no cutscene/multiplayer addition
script.on_event(defines.events.on_player_created, function(e)
	if settings.global["NCA-Starter-starting-robots"].value == true then
		Generate_Armor(e)
	end
	if settings.global["NCA-Starter-starting-items"].value == true then
		Generate_Inventory(e)
	end
end)

--Freeplay/Cutscene start
script.on_event(defines.events.on_cutscene_cancelled, function(e)
	if settings.global["NCA-Starter-starting-robots"].value == true then
		Generate_Armor(e)
	end
	if remote.interfaces["freeplay"] and settings.global["NCA-Starter-starting-items"].value == true then
		Generate_Inventory(e)
	end
end)

