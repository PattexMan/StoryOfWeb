local Niveau01 = {}

local TilesMap = require("Niveau/Niveau01/TilesMap")
function Niveau01.Load()
  
  TilesMap.Load()
  
end

function Niveau01.Draw(pCamera)
  
  TilesMap.Draw(pCamera)
  
end


return Niveau01