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

a= Map.map(a, function(v)
    if type(v) == "number" then
        return v*2
    end
    if type(v) == "string" then
        return v .. "xD"
    end
    if type(v) == "boolean" then 
        return not v
    end
    if type(v) == "table" then
        return nil
    end
end)
for i,v in ipairs(a) do
    print(i,v)
end

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
