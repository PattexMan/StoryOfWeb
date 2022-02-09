local TilesMap = {}



TilesMap.Map = {}
TilesMap.Map.Grid = {
    {
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
      {2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
      {2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0},
      {2,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,0},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0},
      {2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
    },
    
    {
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,2},
      {2,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2},
      {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,2},
      {0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,3,2},
      {0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,2},
      {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
      {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
    }
    
  }
  
TilesMap.Map.Grid.nb = 2 
TilesMap.Map.MAP_WIDTH = {}
TilesMap.Map.MAP_HEIGHT = {}
TilesMap.Map.MAP_WIDTH[1] = 32
TilesMap.Map.MAP_HEIGHT[1] = 9
TilesMap.Map.MAP_WIDTH[2] = 32
TilesMap.Map.MAP_HEIGHT[2] = 18
TilesMap.Map.TILE_WIDTH = 100
TilesMap.Map.TILE_HEIGHT = 100
TilesMap.Map.Grid_originX_01 = 0
TilesMap.Map.Grid_originY_01 = 0
TilesMap.Map.Grid_originX_02 = TilesMap.Map.MAP_WIDTH[2]*TilesMap.Map.TILE_WIDTH
TilesMap.Map.Grid_originY_02 = 0 - (TilesMap.Map.MAP_HEIGHT[2]*TilesMap.Map.TILE_HEIGHT)/2
TilesMap.Map.Grid_originX_ACTUEL = {}
TilesMap.Map.Grid_originY_ACTUEL = {}
TilesMap.Map.Grid_originX_ACTUEL[1] = 0
TilesMap.Map.Grid_originY_ACTUEL[1] = 0
TilesMap.Map.Grid_originX_ACTUEL[2] = 0
TilesMap.Map.Grid_originY_ACTUEL[2] = 0
TilesMap.Map.Grid_ACTUEL= 1

TilesMap.MAP_PIXEL_WITDH = 0


TilesMap.Load = function()
  
  TilesMap.MAP_PIXEL_WITDH = TilesMap.MAP_PIXEL_WITDH + (TilesMap.Map.MAP_WIDTH[1]*TilesMap.Map.TILE_WIDTH) + (TilesMap.Map.MAP_WIDTH[2]*TilesMap.Map.TILE_WIDTH)
  
  TilesMap.TileTextures = {}
  
  print("MapNiveau01:Chargement des texture...")
  TilesMap.TileTextures[0] = love.graphics.newImage("Niveau/Niveau01/img/fond.png")
  TilesMap.TileTextures[1] = love.graphics.newImage("Niveau/Niveau01/img/sol.png")
  TilesMap.TileTextures[2] = love.graphics.newImage("Niveau/Niveau01/img/sousSol.png")
  TilesMap.TileTextures[3] = love.graphics.newImage("Niveau/Niveau01/img/fond02.png")
  TilesMap.TileTextures[4] = love.graphics.newImage("Niveau/Niveau01/img/fond.png")

  print("MapNiveau01:Chargement des texture terminée")

end

function TilesMap.Update(pX,pY)
  
  TilesMap.Deplacement(pX,pY)
  
  
  TilesMap.Map.Grid_ACTUEL= 1
  
end

function TilesMap.Deplacement(pX,pY)
  posX = pX
  posY = pY
  TilesMap.Map.Grid_originX_ACTUEL[1] = TilesMap.Map.Grid_originX_01 + pX
  TilesMap.Map.Grid_originY_ACTUEL[1] = TilesMap.Map.Grid_originY_01 + pY
  TilesMap.Map.Grid_originX_ACTUEL[2] = TilesMap.Map.Grid_originX_02 + pX
  TilesMap.Map.Grid_originY_ACTUEL[2] = TilesMap.Map.Grid_originY_02 + pY
  
  print(TilesMap.Map.Grid_originX_ACTUEL[1] + 3200)
  print(TilesMap.Map.Grid_originX_ACTUEL[2])
  
end

function TilesMap.isSolid(pID)
  if pID == 0 then return false end
  if pID == 1 then return true end
  if pID == 2 then return true end
  if pID == 3 then return false end
  if pID == 4 then return true end
  return false
end


TilesMap.Draw = function()
  local c,l
  

  for l=1,TilesMap.Map.MAP_HEIGHT[1] do
    for c=1,TilesMap.Map.MAP_WIDTH[1] do
      local id = TilesMap.Map.Grid[1][l][c]
      
      if TilesMap.TileTextures[id] ~= nil then
        love.graphics.draw(TilesMap.TileTextures[id], ((c-1)*TilesMap.Map.TILE_WIDTH) - TilesMap.Map.Grid_originX_ACTUEL[1] , (l-1)*TilesMap.Map.TILE_HEIGHT - TilesMap.Map.Grid_originY_ACTUEL[1])
      end
    end
  end
  
  for l=1,TilesMap.Map.MAP_HEIGHT[2] do
    for c=1,TilesMap.Map.MAP_WIDTH[2] do
      local id = TilesMap.Map.Grid[2][l][c]
      
      if TilesMap.TileTextures[id] ~= nil then
        love.graphics.draw(TilesMap.TileTextures[id], ((c-1)*TilesMap.Map.TILE_WIDTH) - TilesMap.Map.Grid_originX_ACTUEL[2], (l-1)*TilesMap.Map.TILE_HEIGHT - TilesMap.Map.Grid_originY_ACTUEL[1] - 900 )
      end
    end
  end
end

return TilesMap