
Niveaux = require("Niveau/Niveaux")

local personnage = {}
personnage.TAILLE_PIXEL_X = 100
personnage.TAILLE_PIXEL_Y = 100
personnage.x = width/2 - personnage.TAILLE_PIXEL_X/2
personnage.y = height/3*2 - personnage.TAILLE_PIXEL_Y/2
personnage.vitesse = 5
personnage.scaleX = 1
personnage.scaleY = 1
personnage.ox = personnage.TAILLE_PIXEL_X/2
personnage.oy = personnage.TAILLE_PIXEL_Y/2
personnage.lock = true
personnage.posC = nil
personnage.posL = nil
personnage.bordureGauche = false
personnage.bordureDroit = false

personnage.collisionRight = false
personnage.collisionLeft = false
personnage.collisionBelow = false
personnage.collisionAbove = false

i = 1 --Grid actuel

personnage.Load = function()
  personnage.img = love.graphics.newImage("img/personnage.png")
  
  
end

personnage.update = function()
  
  personnage.Deplacement()
  
  getTileMapActuel()
  
  CollideUpdate()
  
  
  
end


personnage.Draw = function()
  
  love.graphics.draw(personnage.img,personnage.x,personnage.y,0,personnage.scaleX,personnage.scaleY,personnage.ox,personnage.oy)
end





function personnage.Deplacement() ------ICI-------
  
  if love.keyboard.isDown("right") and personnage.bordureDroit == false and personnage.bordureGauche == false and personnage.collisionRight == false then
    Niveaux.originX = Niveaux.originX + personnage.vitesse
    
  end
  
  if love.keyboard.isDown("left") and personnage.bordureGauche == false and personnage.bordureDroit == false and personnage.collisionLeft == false then
    Niveaux.originX = Niveaux.originX - personnage.vitesse
  end
  
  personnage.testBordure()
  
  bordureGauche()
  
  bordureDroit()
  
end

personnage.testBordure = function()
  if Niveaux.originX < 5  then
    personnage.bordureGauche = true
  else
    personnage.bordureGauche = false
  end
if Niveaux.originX > Niveaux.longueurMap - 1505 then
    personnage.bordureDroit = true
  else
    personnage.bordureDroit = false
  end
end


function bordureGauche()
  if personnage.bordureGauche == true then
    personnage.lock = false
  else
    personnage.lock = true
  end
  
  if personnage.lock == false and love.keyboard.isDown("left") and personnage.x > 0 + personnage.TAILLE_PIXEL_X/2 and 
personnage.collisionLeft == false then
    personnage.x = personnage.x - personnage.vitesse
    
  end
  
  
  if personnage.lock == false and love.keyboard.isDown("right") and personnage.collisionRight == false then
    
    if personnage.x < width/2 - personnage.TAILLE_PIXEL_X/2 then
      personnage.x = personnage.x + personnage.vitesse
    else
      personnage.bordureGauche = false
    end
    
    
  end
end

function bordureDroit()
  if personnage.bordureDroit == true then
    personnage.lock = false
  else
    personnage.lock = true
  end
  
  if personnage.lock == false and love.keyboard.isDown("right") and personnage.x < width - personnage.TAILLE_PIXEL_X/2 and personnage.collisionRight == false then
    personnage.x = personnage.x + personnage.vitesse
    if personnage.x == width/2 - personnage.TAILLE_PIXEL_X/2 then
    end
    
  end
  
  
  if personnage.lock == false and love.keyboard.isDown("left") and personnage.collisionLeft == false then
    
    if personnage.x > width/2 - personnage.TAILLE_PIXEL_X/2 then
      personnage.x = personnage.x - personnage.vitesse
    else
      personnage.bordureDroit = false
    end
    
    
  
    
  end
  
end

function PositionActuel()
  
  personnage.posC = math.floor((personnage.x + Niveaux.originX) / 100) + 1
  personnage.posL = math.floor((personnage.y + Niveaux.originY) / 100) + 1
  
  
  
  
end

function getTileAt(pX, pY, pOX, pOY , g)
  local col = math.floor((pX + pOX) / 100) + 1
  local lig = math.floor((pY + pOY) / 100) + 1
  local grid = g
  
  local id = Niveaux.actif.TilesMap.Map.Grid[grid][lig][col]
  return id
end

function CollideUpdate()
  
  if CollideRight() == true then
    personnage.collisionRight = true
    
  else
    personnage.collisionRight = false
  end
  
  if CollideLeft() == true then
    personnage.collisionLeft = true
    
  else
    personnage.collisionLeft = false
  end
  
  CollideBelow()
  CollideAbove()
  
end

function getTileMapActuel()
  
  i = Niveaux.actif.TilesMap.Map.Grid_ACTUEL
  
end

function CollideRight()
  local id1 = getTileAt(personnage.x + 51, personnage.y - 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  local id2 = getTileAt(personnage.x + 51, personnage.y + 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideLeft()
  local id1 = getTileAt(personnage.x - 51, personnage.y - 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  local id2 = getTileAt(personnage.x - 51, personnage.y + 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideBelow()
  local id1 = getTileAt(personnage.x - 48, personnage.y + 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  local id2 = getTileAt(personnage.x + 48, personnage.y + 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideAbove()
  local id1 = getTileAt(personnage.x - 48, personnage.y - 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  local id2 = getTileAt(personnage.x + 48, personnage.y - 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[i], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[i],i)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2) 
end


--[[
function CollideRight()
  local id1 = getTileAt(personnage.x + 51, personnage.y - 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  local id2 = getTileAt(personnage.x + 51, personnage.y + 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideLeft()
  local id1 = getTileAt(personnage.x - 51, personnage.y - 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  local id2 = getTileAt(personnage.x - 51, personnage.y + 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideBelow()

  local id1 = getTileAt(personnage.x - 48, personnage.y + 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  local id2 = getTileAt(personnage.x + 48, personnage.y + 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideAbove()
  local id1 = getTileAt(personnage.x - 48, personnage.y - 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  local id2 = getTileAt(personnage.x + 48, personnage.y - 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[Niveaux.actif.TilesMap.Grid_ACTUEL])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2) 
end



]]--


--[[
function CollideRight()
  local id1 = getTileAt(personnage.x + 51, personnage.y - 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  local id2 = getTileAt(personnage.x + 51, personnage.y + 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideLeft()
  local id1 = getTileAt(personnage.x - 51, personnage.y - 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  local id2 = getTileAt(personnage.x - 51, personnage.y + 48, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideBelow()

  local id1 = getTileAt(personnage.x - 48, personnage.y + 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  local id2 = getTileAt(personnage.x + 48, personnage.y + 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideAbove()
  local id1 = getTileAt(personnage.x - 48, personnage.y - 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  local id2 = getTileAt(personnage.x + 48, personnage.y - 51, Niveaux.actif.TilesMap.Map.Grid_originX_ACTUEL[1], Niveaux.actif.TilesMap.Map.Grid_originY_ACTUEL[1])
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2) 
end
]]--
return personnage
