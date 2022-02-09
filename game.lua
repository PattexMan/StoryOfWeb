local game = {}


local personnage = require("personnage")
local map = require("map")

function game.load()
  
  map.load()
  
  
  
  personnage.Load()
  
end

function game.update(dt)
  
  map.update()
  
  Niveaux.Update(Niveaux.originX,Niveaux.originY)
  
  personnage.update() --update les fonctions : personnage.Deplacement() PositionActuel() CollideUpdate()
  
  
end

function game.draw()
  
  map.draw()
  
  personnage.Draw() --Dessine le personnage
  
end


return game