Circle = GameObject:extend()

function Circle:new(area, x, y, opts)
    Circle.super.new(self, area, x, y, opts)
    self.r = 30
end

function Circle:update(dt)
   
end

function Circle:draw()
    love.graphics.circle('line', self.x, self.y, self.r)
end