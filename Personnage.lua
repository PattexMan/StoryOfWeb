camera = require("Camera")

local personnage = {}
personnage.TAILLE_PIXEL = 200
personnage.x = width/2 - personnage.TAILLE_PIXEL/2
personnage.y = height/3*2 - personnage.TAILLE_PIXEL
personnage.vitesse = 5
personnage.scaleX = 2
personnage.scaleY = 2
personnage.ox = nil
personnage.oy = nil
personnage.lock = true

personnage.Load = function()
  personnage.img = love.graphics.newImage("img/personnage.png")
  
end

personnage.update = function()
  personnage.Deplacement()
end


personnage.Draw = function()
  
  love.graphics.draw(personnage.img,personnage.x,personnage.y,0,personnage.scaleX,personnage.scaleY)
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
  
  if personnage.lock == false and love.keyboard.isDown("left") and personnage.x > 100 then
    personnage.x = personnage.x - personnage.vitesse
    
  end
  
  
  if personnage.lock == false and love.keyboard.isDown("right") then
    
    if personnage.x < 700 then
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
  
  if personnage.lock == false and love.keyboard.isDown("right") and personnage.x < width - 100 - 200 then
    personnage.x = personnage.x + personnage.vitesse
    if personnage.x == 700 then
    end
    
  end
  
  
  if personnage.lock == false and love.keyboard.isDown("left") then
    
    if personnage.x > 700 then
      personnage.x = personnage.x - personnage.vitesse
    else
      camera.bordureDroit = false
    end
    
    
    
    
    if personnage.x == 700 then
      
    end
    
  end
  
end



return personnage
