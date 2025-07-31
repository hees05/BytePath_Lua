Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
require 'objects/Circle'
require 'objects/HyperCircle'
function love.load()
    hyper = HyperCircle(400, 300, 50, 10, 120)
end

function love.update(dt)
end

function love.draw()
    hyper:draw()
end

function createMyTable()
    local t = {
        a = 1, b = 2, c = 3, 
        sum = function(self)
            self.c = self.a + self.b + self.c
        end
    }
    t:sum()
    return t 
end
local my_table = createMyTable()
print(my_table.c)
