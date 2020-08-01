--[[
    FINAL PROJECT
    2020

    -- entities/Player --
]]

Player = Class{__includes = Entity}

function Player:init(def)
    Entity.init(self, def)
end


function Player:update(dt)
    Entity.update(self, dt)
end


function Player:render()
    Entity.render(self)
end


function Player:hit()
    --self.hp = self.hp - 1
    self:takeDamage()
    if self.hp == 0 then
        --TODO: GameOverState()
        gStateStack:pop()
        gStateStack:push(StartState)
        print('death')
    end
end