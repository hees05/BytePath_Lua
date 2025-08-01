Area = Object:extend()

function Area:new(room)
    self.room = room
    self.game_objects = {} --list of game objects that will go in the given area
    --all the game objects will inherit from GameObject class that has a few common attributes that all objects in the game will have. 
end

function Area:update(dt) --this update function in the area now takes into account the dead variable and acts accordingly.
--loop happening backwards because you remove elements from a lua table while moving forward in it will 
--end up skipping some elements, which we don't want.     
for i = #self.game_objects, 1, -1 do
        local game_object = self.game_objects[i]
        game_object:update(dt)
        if game_object.dead then table.remove(self.game_objects, i)
        end
    end
end

function Area:draw()
    for _, game_object in ipairs(self.game_objects) do
        game_object:draw()
    end
end

function Area:addGameObject(game_object_type, x, y, opts)
    local opts = opts or {}
    local game_object = _G[game_object_type](self, x or 0, y or 0, opts or nil)
    table.insert(self.game_objects, game_object)
    return game_object
end 