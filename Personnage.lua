local personnage = {}
personnage.x = width/2 - 100
personnage.y = height/3*2 - 200
personnage.scaleX = 2
personnage.scaleY = 2
personnage.ox = nil
personnage.oy = nil

personnage.Load = function()
  personnage.img = love.graphics.newImage("img/personnage.png")
  
end


personnage.Draw = function()
  love.graphics.draw(personnage.img,personnage.x,personnage.y,0,personnage.scaleX,personnage.scaleY)
end

return personnage
