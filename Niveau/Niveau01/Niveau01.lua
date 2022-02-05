local Niveau01 = {}
Niveau01.longueurMap = nil
local TilesMap = require("Niveau/Niveau01/TilesMap")
function Niveau01.Load()
  
  TilesMap.Load()
  
  Niveau01.longueurMap = TilesMap.MAP_PIXEL_WITDH
  
end

function Niveau01.Draw(pCamera)
  
  TilesMap.Draw(pCamera)
  
end


return Niveau01