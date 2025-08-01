Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
Timer = require 'libraries/hump/timer'
Moses = require 'libraries/Moses/moses'
Camera = require 'libraries/hump/camera'
Shake = require 'objects/Shake'
require 'rooms/GameObject'
require 'objects/Circle'
require 'rooms/RectangleRoom'
require 'rooms/Stage'
require 'rooms/Area'
require 'conf'
require 'utils'
require 'objects/Player'
function love.load()
    input = Input()
    resize(3)
    stage = Stage()
    camera = Camera()
    input:bind('f3', function() camera:shake(4,60,1) end)
end

function love.update(dt)
    if stage then stage:update(dt) end
    camera:update(dt)
end

function love.draw()
    camera:attach()
    if stage then stage:draw() end
    camera:detach()
end

function goToRoom(room_type, room_name, ...)
    if current_room and rooms[room_name] then
        if current_room.deactivate then current_room:deactivate() end
        current_room = rooms[room_name]
        if current_room.activate then current_room:activate() end
    else
        current_room = addRoom(room_type, room_name, ...)
    end
end

function addRoom(room_type, room_name, ...)
        local room = _G[room_type](...)
        rooms[room_name] = room
        return room
    end

function resize(s)
    love.window.setMode(s*gw, s*gh)
    sx, sy = s, s
end



