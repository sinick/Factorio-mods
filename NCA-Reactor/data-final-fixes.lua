
local power_multiplier = settings.startup["NCA-Reactor-multiplier"].value

if power_multiplier ~= 1 or logistic_multiplier ~= 1then
	data.raw["generator-equipment"]["fusion-reactor-equipment"].power = data.raw["generator-equipment"]["fusion-reactor-equipment"].power * power_multiplier
end








