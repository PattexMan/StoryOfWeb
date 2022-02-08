Niveaux = require("Niveau/Niveaux")
--personnage = require("Personnage")

local camera = {}
camera.vitesse = 5
camera.bordureGauche = false
camera.bordureDroit = false

camera.collisionRight = false
camera.collisionLeft = false
camera.collisionBelow = false
camera.collisionAbove = false

camera.deplacement = function()
  
  
  
  
  
  
  if love.keyboard.isDown("right") and camera.bordureDroit == false and camera.bordureGauche == false and camera.collisionRight == false then
    Niveaux.originX = Niveaux.originX + camera.vitesse
    
  end
  
  if love.keyboard.isDown("left") and camera.bordureGauche == false and camera.bordureDroit == false and camera.collisionLeft == false then
    Niveaux.originX = Niveaux.originX - camera.vitesse
  end
  
  camera.testBordure()
  
end

camera.testBordure = function()
  if Niveaux.originX < 5  then
    camera.bordureGauche = true
  else
    camera.bordureGauche = false
  end
if Niveaux.originX > Niveaux.longueurMap - 1505 then
    camera.bordureDroit = true
  else
    camera.bordureDroit = false
  end
end



return camera