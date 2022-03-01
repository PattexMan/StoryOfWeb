local niveaux = require("Niveau/Niveaux")
local collision = {}
collision.load = function()
  
end

collision.Update = function()
  
end

collision.Draw = function()
  
end

function getTileAt(pX, pY)
  local col = math.floor((pX + (niveaux.actif.TilesMap.positionOriginActuelX)) / 100) + 1
  local lig = math.floor((pY + (niveaux.actif.TilesMap.positionOriginActuelY)) / 100) + 1
  if col>0 and col< niveaux.actif.TilesMap.MAP_WITDH and lig>0 and lig< niveaux.actif.TilesMap.MAP_HEIGHT then
    local id = niveaux.actif.TilesMap.Map[lig][col]
    return id
  end
  
  return 999
  
end

function collision.Right(pPosPersonnageX, pPosPersonnageY)
  local id1 = getTileAt(pPosPersonnageX + 51, pPosPersonnageY - 48)
  local id2 = getTileAt(pPosPersonnageX + 51, pPosPersonnageY + 48)
  local bool1 = niveaux.actif.TilesMap.isSolid(id1)
  local bool2 = niveaux.actif.TilesMap.isSolid(id2)
  return niveaux.actif.TilesMap.isSolid(id1) or niveaux.actif.TilesMap.isSolid(id2)
end

function collision.Left(pPosPersonnageX, pPosPersonnageY)
  local id1 = getTileAt(pPosPersonnageX - 51, pPosPersonnageY - 48)
  local id2 = getTileAt(pPosPersonnageX - 51, pPosPersonnageY + 48)
  local bool1 = niveaux.actif.TilesMap.isSolid(id1)
  local bool2 = niveaux.actif.TilesMap.isSolid(id2)
  print(boot1)
  return niveaux.actif.TilesMap.isSolid(id1) or niveaux.actif.TilesMap.isSolid(id2)
end

function collision.Below(pPosPersonnageX, pPosPersonnageY)
  local id1 = getTileAt(pPosPersonnageX - 48, pPosPersonnageY + 51)
  local id2 = getTileAt(pPosPersonnageX + 48, pPosPersonnageY + 51)
  local bool1 = niveaux.actif.TilesMap.isSolid(id1)
  local bool2 = niveaux.actif.TilesMap.isSolid(id2)
  return niveaux.actif.TilesMap.isSolid(id1) or niveaux.actif.TilesMap.isSolid(id2)
end

function collision.Above(pPosPersonnageX, pPosPersonnageY)
  local id1 = getTileAt(pPosPersonnageX - 48, pPosPersonnageY - 51)
  local id2 = getTileAt(pPosPersonnageX + 48, pPosPersonnageY - 51)
  local bool1 = niveaux.actif.TilesMap.isSolid(id1)
  local bool2 = niveaux.actif.TilesMap.isSolid(id2)
  return niveaux.actif.TilesMap.isSolid(id1) or niveaux.actif.TilesMap.isSolid(id2)
end

return collision