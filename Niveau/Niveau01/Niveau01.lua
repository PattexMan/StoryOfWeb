local Niveau01 = {}
Niveau01.longueurMap = nil
Niveau01.TilesMap = require("Niveau/Niveau01/TilesMap")
function Niveau01.Load()
  
  Niveau01.TilesMap.Load()
  
  Niveau01.longueurMap = Niveau01.TilesMap.MAP_PIXEL_WITDH
  
end

function Niveau01.Draw()
  
  Niveau01.TilesMap.Draw()
  
end

return Niveau01