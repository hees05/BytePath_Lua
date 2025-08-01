Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
Timer = require 'libraries/hump/timer'
Moses = require 'libraries/Moses/moses'
require 'objects/Circle'
require 'objects/HyperCircle'

Map = Moses()
a = {1, 2, '3', 4, '5', 6, 7, true, 9, 10, 11, a = 1, b =2, c =3, {1,2,3}}
b = {1, 1, 3, 4, 5, 6, 7, false}
c = {'1', '2', '3', 4, 5, 6}
d = {1, 4, 3, 4, 5, 6}

local sum = 0
for k,v in ipairs(d) do
    sum = sum + v
end
print(sum)

local bool = false
function love.load()
    timer = Timer()
    circle = {radius = 10}
    local function pulseOut()
        timer:tween(6, circle, {radius = 96}, 'in-out-cubic', pulseIn)
    end

    function pulseIn()
        timer:tween(6, circle, {radius = 10}, 'in-out-cubic', pulseOut)
    end

    pulseOut()
end

function love.update(dt)
    timer:update(dt)
end

function love.draw()
    love.graphics.circle('fill', 400, 300, circle.radius)
end
