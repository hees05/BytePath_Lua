Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
Timer = require 'libraries/hump/timer'
Moses = require 'libraries/Moses/moses'
require 'objects/Circle'
require 'objects/HyperCircle'

Map = Moses()
a = {1, 2, '3', 4, '5', 6, 7, true, 9, 10, 11, a = 1, b =2, c =3, {1,2,3}}
b = {1, 1, 3, 4, 5, 6, 7, false}
c = {'1', '2', '3', 4, 5, 6, 7}
d = {1, 4, 3, 4, 5, 6}

d = Map.filter(d, function(v) return v<5 end)
for k,v in ipairs(d) do
print(v)
end



c = Map.filter(c, function(v) return type(v) == 'string' end) 
for k,v in pairs(c) do
print(v)
end

