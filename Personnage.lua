local personnage = {}

local deplacement = require("deplacement")

local niveaux = require("Niveau/Niveaux")

personnage.x = width/2
personnage.y = height/3*2-50
personnage.sizeX = 100
personnage.sizeY = 100
personnage.scaleX = 1
personnage.scaleY = 1
personnage.ox = personnage.sizeX/2
personnage.oy = personnage.sizeY/2
personnage.vx = 0
personnage.vy = 0

personnage.Load = function()
  personnage.img = love.graphics.newImage("img/personnage.png")

end

personnage.Update = function(dt)
  niveaux.actif.TilesMap.positionOriginActuelX = deplacement.update(niveaux.actif.TilesMap.positionOriginActuelX, dt, personnage.x, personnage.y,personnage.vx,personnage.vy) --Deplacement ici
  

  
end

personnage.Draw = function()
  love.graphics.draw(personnage.img,personnage.x,personnage.y,0,personnage.scaleX,personnage.scaleY,personnage.ox,personnage.oy)
  
end

return personnage
