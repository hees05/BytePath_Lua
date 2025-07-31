Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
require 'objects/Circle'
require 'objects/HyperCircle'

local sum = 0
local input

function love.load()
    input = Input()
    input:bind('space', 'add')
    input:bind('up', 'up')
    input:bind('down', 'down')
    input:bind('right', 'right')
    input:bind('left', 'left')
end

function love.update(dt)
    if input:down('up', 0.25) then
        print("Up key pressed")
    end
    if input:down('down', 0.25) then
        print("down key pressed")
    end
    if input:down('right', 0.25) then
        print("right key pressed")
    end
    if input:down('left', 0.25) then
        print("left key pressed")
    end
end

function love.draw()
    love.graphics.print("Sum: " .. sum, 10 ,10)
end
