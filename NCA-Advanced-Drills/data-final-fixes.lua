

local multiplier = 10.0

for k, v in pairs(data.raw["mining-drill"]) do
    if v.mining_speed then
        v.mining_speed = v.mining_speed * multiplier
    end
end