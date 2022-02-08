
Niveau01 = require("Niveau/Niveau01/Niveau01")

local Niveaux = {}
Niveaux.actif = nil
Niveaux.longueurMap = nil
Niveaux.originX = 0
Niveaux.originY = 0

function Niveaux.choixDuNiveau(pNiveau)
  if pNiveau == 1 then
    Niveaux.actif = Niveau01
  end
end

function Niveaux.Load()
  
  Niveaux.actif.Load()
  Niveaux.longueurMap = Niveaux.actif.longueurMap
  
end

function Niveaux.Draw(pOriginX,pOriginY)
  
  Niveaux.actif.Draw(pOriginX,pOriginY)
  
end

return Niveaux