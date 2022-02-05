
Niveau01 = require("Niveau/Niveau01/Niveau01")

local Niveaux = {}
Niveaux.actif = nil
Niveaux.longueurMap = nil

function Niveaux.choixDuNiveau(pNiveau)
  Niveaux.actif = pNiveau
end

function Niveaux.Load()
  if Niveaux.actif == 1 then
    Niveau01.Load()
    Niveaux.longueurMap = Niveau01.longueurMap
  end
  
end

function Niveaux.Draw(pCamera)
  if Niveaux.actif == 1 then
    Niveau01.Draw(pCamera)
  end
  
end

return Niveaux