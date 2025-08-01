CircleRoom = Object:extend()

function CircleRoom:new()
end

function CircleRoom:update(dt)
end

function CircleRoom:draw()
    love.graphics.circle('line', 300, 400, 50)
end
