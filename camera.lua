Niveaux = require("Niveau/Niveaux")

local camera = {}
camera.position = 0
camera.vitesse = 5
camera.bordureGauche = false
camera.bordureDroit = false
camera.deplacement = function()
  
  if camera.position <= -100 then
    camera.bordureGauche = true
  else
    camera.bordureGauche = false
  end
  
  if camera.position >= Niveaux.longueurMap - 1500 then
    camera.bordureDroit = true
  else
    camera.bordureDroit = false
  end
  
  if love.keyboard.isDown("right") and camera.bordureDroit == false then
    camera.position = camera.position + camera.vitesse
  end
  
  if love.keyboard.isDown("left") and camera.bordureGauche == false then
    camera.position = camera.position - camera.vitesse
  end
  
  
  
end


return camera