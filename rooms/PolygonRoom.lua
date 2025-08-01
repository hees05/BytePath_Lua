PolygonRoom = Object:extend()

function PolygonRoom:new()
end

function PolygonRoom:update(dt)
end

function PolygonRoom:draw()
    love.graphics.polygon('line', 400, 200, 
                                  300, 300, 
                                  500, 400
    )
end
