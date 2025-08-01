Object = require 'libraries/classic/classic'
Input = require 'libraries/Input/Input'
Timer = require 'libraries/hump/timer'
Moses = require 'libraries/Moses/moses'
require 'objects/Circle'
require 'objects/HyperCircle'
require 'rooms/CircleRoom'
require 'rooms/RectangleRoom'
require 'rooms/PolygonRoom'

function love.load()
    input = Input()
    input:bind('f1', 'circle_room')
    input:bind('f2', 'rectangle_room')
    input:bind('f3', 'polygon_room')

    rooms = {}
    current_room = nil

    addRoom('CircleRoom', 'circle_room')
    addRoom('RectangleRoom', 'rectangle_room')
    addRoom('PolygonRoom', 'polygon_room')

    goToRoom('CircleRoom', 'circle_room') --default room 
end

function love.update(dt)
    if input:pressed('circle_room') then 
        goToRoom('CircleRoom', 'circle_room') 
    end

    if input:pressed('rectangle_room') then
        goToRoom('RectangleRoom', 'rectangle_room')
    end

    if input:pressed('polygon_room') then
        goToRoom('PolygonRoom', 'polygon_room')
    end

    if current_room then current_room: update(dt) end
end

function love.draw()
    if current_room then current_room:draw() end
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






