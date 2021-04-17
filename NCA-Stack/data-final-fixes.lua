
local stack_multiplier = settings.startup["NCA-Stack-stack-multiplier"].value
local logistic_multiplier = settings.startup["NCA-Stack-logistic-multiplier"].value
local ammo_multiplier = settings.startup["NCA-Stack-ammo-multiplier"].value
local run_multiplier = settings.startup["NCA-Stack-run-speed-multiplier"].value

if stack_multiplier ~= 1 or logistic_multiplier ~= 1 then
	-- Normal Item Stacks and its logistic request
	for _,dat in pairs(data.raw) do
		for _,item in pairs(dat) do
			if item.stack_size and type(item.stack_size) == "number" and item.stack_size > 1 then
				item.stack_size = item.stack_size * stack_multiplier
				item.default_request_amount = item.default_request_amount * logistic_multiplier
			end
		end
	end
end

if stack_multiplier ~= 1 then
	-- Module Stacks
	for _, item in pairs(data.raw["module"]) do
		item.stack_size = item.stack_size * stack_multiplier
	end
	-- Capsule Stacks
	for _, item in pairs(data.raw["capsule"]) do
		item.stack_size = item.stack_size * stack_multiplier
	end
end

if ammo_multiplier ~= 1 or logistic_multiplier ~= 1 then
	-- Ammo Stacks
	for _, item in pairs(data.raw.ammo) do
		item.magazine_size = item.magazine_size * ammo_multiplier
		item.default_request_amount = item.default_request_amount * logistic_multiplier
	end
end



if run_multiplier ~= 1 then
	data.raw.player.player.running_speed = data.raw.player.player.running_speed * run_multiplier
end






