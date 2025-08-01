Stage = Object:extend()

function Stage:new()
end

function Stage:update(dt)
end

function Stage:draw()
    love.graphics.print("You're in the Stage room!", 300, 300)
end
