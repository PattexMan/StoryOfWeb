
Niveau01 = require("Niveau/Niveau01/Niveau01")

local Niveaux = {}
Niveaux.actif = nil
Niveaux.longueurMap = nil
Niveaux.originX = 0
Niveaux.originY = 0

function Niveaux.Load()
  
  Niveaux.actif.Load()
  Niveaux.longueurMap = Niveaux.actif.longueurMap
  
end

function Niveaux.Update(pX,pY)
  Niveaux.actif.Update(pX,pY)
end


function Niveaux.Draw()
  
  Niveaux.actif.Draw()
  
end

return Niveaux