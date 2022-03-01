
local Niveau01 = require("Niveau/Niveau01/Niveau01")

local Niveaux = {}
Niveaux.actif = nil
Niveaux.longueurMap = nil

function Niveaux.choixDuNiveau(pNiveau)
  if pNiveau == 1 then
    Niveaux.actif = Niveau01
  end
  
end

function Niveaux.Load()
  
  Niveaux.actif.Load()
  
end

function Niveaux.Update()
  
  Niveaux.actif.longueurMap = Niveau.actif.longueurMap
  
end


function Niveaux.Draw()
  Niveaux.actif.Draw()
end

return Niveaux