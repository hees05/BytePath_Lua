Object = require 'libraries/classic/classic'
require 'rooms/Area'
require 'objects/Circle'
require 'libraries/hump/timer'
require 'rooms/GameObject'
Stage = Object:extend()

function Stage:new()
    self.area = Area(self)
    self.timer = Timer()

    self.timer:every(2, function()
        local x = love.math.random(100, 700)
        local y = love.math.random(100, 500)
        local circle = self.area:addGameObject('Circle', x, y, {})

        local t = love.math.random(2,4)
        self.timer:after(t, function()
            circle.dead = true
        end)
    end)
end

function Stage:update(dt)
    self.timer:update(dt)
    self.area:update(dt)
end

function Stage:draw()
    self.area:draw()
end
