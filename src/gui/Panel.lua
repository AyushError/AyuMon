
Panel = Class{}

function Panel:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    self.visible = true
end

function Panel:update(dt)

end

function Panel:render()
    if self.visible then
        love.graphics.setColor(255, 255, 255, 255)
        love.graphics.rectangle('fill', self.x, self.y, self.width, self.height, 3)
        love.graphics.setColor(56, 56, 56, 255)
        love.graphics.rectangle('fill', self.x + 2, self.y + 2, self.width - 4, self.height - 4, 3)
        love.graphics.setColor(255, 255, 255, 255)
    end
end

function Panel:toggle()
    self.visible = not self.visible
end
