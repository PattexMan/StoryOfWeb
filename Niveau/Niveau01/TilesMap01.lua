local TilesMap = {}



TilesMap.Map = {}
TilesMap.Map.Grid = {
  
    {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
    {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
    {2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2},
    {2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,2},
    {2,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,2},
    {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
    {2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
    {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
    {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
  }
  
TilesMap.Map.MAP_WIDTH = 31
TilesMap.Map.MAP_HEIGHT = 9
TilesMap.Map.TILE_WIDTH = 100
TilesMap.Map.TILE_HEIGHT = 100

TilesMap.MAP_PIXEL_WITDH = TilesMap.Map.MAP_WIDTH*TilesMap.Map.TILE_WIDTH --longueur de la map

TilesMap.Load = function()
  
  TilesMap.TileTextures = {}
  
  print("MapNiveau01:Chargement des texture...")
  TilesMap.TileTextures[0] = love.graphics.newImage("Niveau/Niveau01/img/fond.png")
  TilesMap.TileTextures[1] = love.graphics.newImage("Niveau/Niveau01/img/sol.png")
  TilesMap.TileTextures[2] = love.graphics.newImage("Niveau/Niveau01/img/sousSol.png")
  TilesMap.TileTextures[3] = love.graphics.newImage("Niveau/Niveau01/img/fond02.png")
  TilesMap.TileTextures[4] = love.graphics.newImage("Niveau/Niveau01/img/fond.png")

  print("MapNiveau01:Chargement des texture terminée")

end

function TilesMap.isSolid(pID)
  if pID == 0 then return false end
  if pID == 1 then return false end
  if pID == 2 then return true end
  if pID == 3 then return false end
  if pID == 4 then return true end
  return false
end


TilesMap.Draw = function(pX,pY)
  local c,l
  for l=1,TilesMap.Map.MAP_HEIGHT do
    for c=1,TilesMap.Map.MAP_WIDTH do
      local id = TilesMap.Map.Grid[l][c]
      
      if TilesMap.TileTextures[id] ~= nil then
        love.graphics.draw(TilesMap.TileTextures[id], ((c-1)*TilesMap.Map.TILE_WIDTH) - pX, (l-1)*TilesMap.Map.TILE_HEIGHT - pY)
      end
    end
  
  end
end

return TilesMap