GameObject = Object:extend()

function GameObject:new(area, x, y, opts) --opts stand for optional arguments
    local opts = opts or {}
    if opts then 
        for k,v in pairs(opts) do
            self[k] = v
        end 
    end

    self.area = area
    self.x, self.y = x, y
    self.id = UUID()
    self.dead = false
    self.timer = Timer()
end

function GameObject:update(dt)
    if self.timer then 
        self.timer:update(dt)
    end
end

function GameObject:draw()

end

function UUID()
    local fn = function(x)
        local r = math.random(16) -1
        r = (x == 'x') and (r+1) or (r%4) + 9
        return ("0123456789abcdef"):sub(r,r)
    end
    return (("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", fn))
end


