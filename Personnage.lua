camera = require("Camera")
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

personnage.collisionRight = false
personnage.collisionLeft = false
personnage.collisionBelow = false
personnage.collisionAbove = false

personnage.Load = function()
  personnage.img = love.graphics.newImage("img/personnage.png")
  
  
end

personnage.update = function()
  
  personnage.Deplacement()
  
  PositionActuel()
  
  CollideUpdate()
  
  
end


personnage.Draw = function()
  
  love.graphics.draw(personnage.img,personnage.x,personnage.y,0,personnage.scaleX,personnage.scaleY,personnage.ox,personnage.oy)
end

function personnage.Deplacement()
  
  bordureGauche()
  
  bordureDroit()
  
end

function bordureGauche()
  if camera.bordureGauche == true then
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
      camera.bordureGauche = false
    end
    
    
  end
end

function bordureDroit()
  if camera.bordureDroit == true then
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
      camera.bordureDroit = false
    end
    
    
  
    
  end
  
end

function PositionActuel()
  
  personnage.posC = math.floor((personnage.x + Niveaux.originX) / 100) + 1
  personnage.posL = math.floor((personnage.y + Niveaux.originY) / 100) + 1
  
end

function getTileAt(pX, pY, pOX, pOY )
  
  local col = math.floor((pX + pOX) / 100) + 1
  local lig = math.floor((pY + pOY) / 100) + 1
  
  if col>0 and col<=#Niveaux.actif.TilesMap.Map.Grid[1] and lig>0 and lig<=#Niveaux.actif.TilesMap.Map.Grid then --Niveaux.actif.TilesMap.Map.Grid c'est la grille du niveau actif
    local id = Niveaux.actif.TilesMap.Map.Grid[lig][col]
    return id
  end
  
  return 0
end

function CollideUpdate()
  
  if CollideRight() == true then
    camera.collisionRight = true
    personnage.collisionRight = true
    
  else
    camera.collisionRight = false
    personnage.collisionRight = false
  end
  
  if CollideLeft() == true then
    camera.collisionLeft = true
    personnage.collisionLeft = true
    
  else
    camera.collisionLeft = false
    personnage.collisionLeft = false
  end
  
  CollideBelow()
  CollideAbove()
  
end


function CollideRight()
  local id1 = getTileAt(personnage.x + 51, personnage.y - 48, Niveaux.originX, Niveaux.originY)
  local id2 = getTileAt(personnage.x + 51, personnage.y + 48, Niveaux.originX, Niveaux.originY)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideLeft()
  local id1 = getTileAt(personnage.x - 51, personnage.y - 48, Niveaux.originX, Niveaux.originY)
  local id2 = getTileAt(personnage.x - 51, personnage.y + 48, Niveaux.originX, Niveaux.originY)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideBelow()

  local id1 = getTileAt(personnage.x - 48, personnage.y + 51, Niveaux.originX, Niveaux.originY)
  local id2 = getTileAt(personnage.x + 48, personnage.y + 51, Niveaux.originX, Niveaux.originY)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2)
end

function CollideAbove()
  local id1 = getTileAt(personnage.x - 48, personnage.y - 51, Niveaux.originX, Niveaux.originY)
  local id2 = getTileAt(personnage.x + 48, personnage.y - 51, Niveaux.originX, Niveaux.originY)
  return Niveaux.actif.TilesMap.isSolid(id1) or Niveaux.actif.TilesMap.isSolid(id2) 
end

return personnage
