
local stack_multiplier = settings.startup["NCA-Stack-stack-multiplier"].value

if stack_multiplier ~= 1 ~= 1 then
	-- Normal Item Stacks and its logistic request
	for _,dat in pairs(data.raw) do
		for _,item in pairs(dat) do
			local is_stackable = false
			if item.stack_size and (type(item.stack_size) == "number") then
				if item.stack_size == 1 then
					if item.type == "ammo" then
						is_stackable = true
					elseif string.find(item.name, "satellite") then
						is_stackable = true
					elseif string.find(item.name, "silo") then
						is_stackable = true
					elseif string.find(item.name, "fuel") then
						is_stackable = true
					elseif string.find(item.name, "spidertron") then
						is_stackable = true
					end
				elseif item.stack_size > 1 then
					is_stackable = true
				end
			end
			if is_stackable == true then
				item.stack_size = item.stack_size * stack_multiplier
				if item.default_request_amount then
					item.default_request_amount = item.default_request_amount * stack_multiplier
				else 
					item.default_request_amount = item.stack_size
				end
			end
		end
	end
end

data.raw.character.character.inventory_size = 200





