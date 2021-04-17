

local multiplier = settings.startup["NCA-Advanced-Drills-Speed-multiplier"]

if multiplier ~= 1 then
    for k, v in pairs(data.raw["mining-drill"]) do
        if v.mining_speed then
            v.mining_speed = v.mining_speed * multiplier
        end
    end
end