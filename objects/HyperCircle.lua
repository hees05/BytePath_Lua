HyperCircle = Circle:extend()
function HyperCircle:new(x,y,r, line_width, outer_radius)
    HyperCircle.super.new(self, x, y, r)
    self.line_width = line_width
    self.outer_radius = outer_radius
end

function HyperCircle:update(dt)
end

function HyperCircle:draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.setLineWidth(self.line_width)
    love.graphics.circle('line', self.x, self.y, self.outer_radius)

    love.graphics.setColor(1, 1, 1)
    love.graphics.circle('fill', self.x, self.y, self.r)
end
