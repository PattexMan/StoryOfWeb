local game = {}

local niveaux = require("Niveau/Niveaux")
local personnage = require("personnage")

game.Load = function()
  
  niveaux.choixDuNiveau(1)
  niveaux.Load()
  
  personnage.Load()
  
end

game.Update = function(dt)
  
  personnage.Update(dt)
  
end

game.Draw = function()
  
  niveaux.Draw() --Affichage de la map 
  
  personnage.Draw()
  
end


return game