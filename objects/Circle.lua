Circle = Object:extend()

function Circle:new(x, y, r)
    self.x = x
    self.y = y
    self.r = r
end

function Circle:update(dt)
    self.x = self.x + 30 * dt --Moving to the right slowly. 
end

function Circle:draw()
    love.graphics.circle('line', self.x, self.y, self.r)
end