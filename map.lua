local map = {}

local Niveaux = require("Niveau/Niveaux")

function map.load()
  Niveaux.actif = Niveau01
  Niveaux.Load()
end

function map.update(dt)
  Niveaux.Update(Niveaux.originX,Niveaux.originY)
  
end

function map.draw()
  
  Niveaux.Draw() --Affichage de la map 
  
end



return map