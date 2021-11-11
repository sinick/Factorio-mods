
local stack_multiplier = settings.startup["NCA-Stack-stack-multiplier"].value
local logistic_multiplier = settings.startup["NCA-Stack-logistic-multiplier"].value
-- local ammo_multiplier = settings.startup["NCA-Stack-ammo-multiplier"].value

if stack_multiplier ~= 1 or logistic_multiplier ~= 1 then
	-- Normal Item Stacks and its logistic request
	for _,dat in pairs(data.raw) do
		for _,item in pairs(dat) do
			-- if item.stack_size and type(item.stack_size) == "number" and item.stack_size > 1 then
			if item.stack_size and type(item.stack_size) == "number" then
				item.stack_size = item.stack_size * stack_multiplier
			end
			if item.default_request_amount and type(item.stack_size) == "number" then
				item.default_request_amount = item.default_request_amount * logistic_multiplier
			end
		end
	end
end

-- if stack_multiplier ~= 1 or logistic_multiplier ~= 1 then
-- 	-- Module Stacks
-- 	for _, item in pairs(data.raw["module"]) do
-- 		item.stack_size = item.stack_size * stack_multiplier
-- 		if item.default_request_amount then
-- 			item.default_request_amount = item.default_request_amount * logistic_multiplier
-- 		end
-- 	end
-- 	-- Capsule Stacks
-- 	for _, item in pairs(data.raw["capsule"]) do
-- 		item.stack_size = item.stack_size * stack_multiplier
-- 		if item.default_request_amount then
-- 			item.default_request_amount = item.default_request_amount * logistic_multiplier
-- 		end
-- 	end
-- end

-- if ammo_multiplier ~= 1 or logistic_multiplier ~= 1 then
-- 	-- Ammo Stacks
-- 	for _, item in pairs(data.raw.ammo) do
-- 		if item.magazine_size then
-- 			item.magazine_size = item.magazine_size * ammo_multiplier
-- 		end
-- 		if item.default_request_amount then
-- 			item.default_request_amount = item.default_request_amount * logistic_multiplier
-- 		end
-- 	end
-- end

data.raw.character.character.inventory_size = 200





