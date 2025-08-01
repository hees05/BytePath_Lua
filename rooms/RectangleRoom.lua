RectangleRoom = Object:extend()

function RectangleRoom:new()
end

function RectangleRoom:update(dt)
end

function RectangleRoom:draw()
    love.graphics.rectangle('line', 350, 250 ,100, 100)
end