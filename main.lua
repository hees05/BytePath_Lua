Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
require 'objects/Circle'
require 'objects/HyperCircle'

local sum = 0
local input

function love.load()
    input = Input()
    input:bind('space', 'add')
end

function love.update(dt)
    if input:down('add', 0.25) then
        sum = sum + 1
        print("Sum:", sum)
    end
end

function love.draw()
    love.graphics.print("Sum: " .. sum, 10 ,10)
end
