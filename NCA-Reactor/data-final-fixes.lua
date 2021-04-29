
local power_multiplier = settings.startup["NCA-Reactor-multiplier"].value

if power_multiplier ~= 1 or logistic_multiplier ~= 1then
	local power_str = string.gsub(data.raw["generator-equipment"]["fusion-reactor-equipment"].power,"kW")
	local power = tonumber(power_str) * power_multiplier
	data.raw["generator-equipment"]["fusion-reactor-equipment"].power = tostring(math.floor(power)) .. "kW"
end








