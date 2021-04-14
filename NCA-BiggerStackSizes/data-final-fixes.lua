require( "config" )

function modified_size( oldvalue, multiplier )
	if oldvalue == nil then oldvalue = 1 end
	local v = oldvalue * multiplier
	if v > oldvalue then
		return( v )
	else
		return oldvalue
	end
end

-- Normal Item Stacks
for _,dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" and item.stack_size > 1 then
			item.stack_size = modified_size( item.stack_size, stack_multiplier )	
			if defult_logistics_request_multiplier ~= nil then
				item.default_request_amount = defult_logistics_request_multiplier
			end
		end
	end
end

-- Ammo Stacks
for _, ammo in pairs(data.raw.ammo) do
	ammo.magazine_size = modified_size( ammo.magazine_size, ammo_multiplier )	
	if defult_logistics_request_multiplier then ammo.default_request_amount = defult_logistics_request_multiplier end
end

-- Module Stacks
for _, modu in pairs(data.raw["module"]) do
	modu.stack_size = modified_size( modu.stack_size, stack_multiplier )	
end

-- Capsule Stacks
for _, caps in pairs(data.raw["capsule"]) do
	caps.stack_size = modified_size( caps.stack_size, stack_multiplier )	
end


