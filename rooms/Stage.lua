Object = require 'libraries/classic/classic'
require 'rooms/Area'
require 'objects/Circle'
require 'libraries/hump/timer'
require 'rooms/GameObject'
require 'objects/Player'
Stage = Object:extend()

function Stage:new()
    self.area = Area(self)
    self.main_canvas = love.graphics.newCanvas(gw, gh) -- this creates a canvas with the base resolution in the constructor of the Stage class
end

function Stage:update(dt)
    self.area:update(dt)
    self.area:addGameObject('Player', gw/2, gh/2) --adding the player to the Stage room
end

function Stage:draw()
    love.graphics.setCanvas(self.main_canvas)
    love.graphics.clear()
    love.graphics.circle('line', gw/2, gh/2, 50)
    self.area:draw()
    love.graphics.setCanvas()

    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setBlendMode('alpha', 'premultiplied')
    love.graphics.draw(self.main_canvas, 0, 0, 0, sx, sy)
    love.graphics.setBlendMode('alpha')
end


