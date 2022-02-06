Niveaux = require("Niveau/Niveaux")
--personnage = require("Personnage")

local camera = {}
camera.position = 0
camera.vitesse = 5
camera.bordureGauche = false
camera.bordureDroit = false
camera.deplacement = function()
  
  
  
  
  
  
  if love.keyboard.isDown("right") and camera.bordureDroit == false and camera.bordureGauche == false then
    camera.position = camera.position + camera.vitesse
    
  end
  
  if love.keyboard.isDown("left") and camera.bordureGauche == false and camera.bordureDroit == false then
    camera.position = camera.position - camera.vitesse
  end
  
  camera.testBordure()
  
end

camera.testBordure = function()
  if camera.position < -100  then
    camera.bordureGauche = true
  else
    camera.bordureGauche = false
  end
if camera.position > Niveaux.longueurMap - 1500 then
    camera.bordureDroit = true
  else
    camera.bordureDroit = false
  end
end



return camera