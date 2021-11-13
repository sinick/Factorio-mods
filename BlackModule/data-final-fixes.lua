if settings.startup["bm-limit"].value == false then
	for k, v in pairs(data.raw.module) do
		if v.limitation then
		  v.limitation = nil -- empty limitation table
		  v.limitation_message_key = nil
		end
	end	
end 

if mods["IndustrialRevolution"] then
	data.raw.module["black-module-1"].ingredients = {{"copper-gear-wheel", 5},{"wood", 5}}
	data.raw.module["gray-module-1"].ingredients = {{"copper-gear-wheel", 5},{"wood", 5}}
	data.raw.module["red-module-1"].ingredients = {{"copper-gear-wheel", 5},{"wood", 5}}
	data.raw.module["blue-module-1"].ingredients = {{"copper-gear-wheel", 5},{"wood", 5}}
	data.raw.module["cyan-module-1"].ingredients = {{"copper-gear-wheel", 5},{"wood", 5}}
end
--[[
for k, v in pairs(data.raw.module) do
  if v.limitation then
    v.limitation = nil -- empty limitation table
    v.limitation_message_key = nil
  end	
end 
--]]