local TilesMap = {}
local MAP_WITDH = 31
local MAP_HEIGHT = 9
local TILE_WIDTH = 100
local TILE_HEIGHT = 100

TilesMap.MAP_PIXEL_WITDH = MAP_WITDH*TILE_WIDTH --longueur de la map

TilesMap.Map = {}
TilesMap.Map = {
  
    {0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0},
    {0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3},
    {0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
    {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
    {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
  }
  


TilesMap.Load = function()
  
  TilesMap.TileTextures = {}
  
  print("MapNiveau01:Chargement des texture...")
  TilesMap.TileTextures[0] = love.graphics.newImage("Niveau/Niveau01/img/fond.png")
  TilesMap.TileTextures[1] = love.graphics.newImage("Niveau/Niveau01/img/sol.png")
  TilesMap.TileTextures[2] = love.graphics.newImage("Niveau/Niveau01/img/sousSol.png")
  TilesMap.TileTextures[3] = love.graphics.newImage("Niveau/Niveau01/img/fond02.png")

  print("MapNiveau01:Chargement des texture terminée")

end


TilesMap.Draw = function(pX)
  local c,l
  for l=1,MAP_HEIGHT do
    for c=1,MAP_WITDH do
      local id = TilesMap.Map[l][c]
      
      if TilesMap.TileTextures[id] ~= nil then
        love.graphics.draw(TilesMap.TileTextures[id], ((c-1)*TILE_WIDTH) - pX, (l-1)*TILE_HEIGHT)
      end
    end
  
  end
end

return TilesMap