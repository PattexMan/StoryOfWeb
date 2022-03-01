local deplacement = {}

deplacement.vitesse = 5

deplacement.update = function(pOriginTilesMapX, dt)
  x = deplacement.gaucheDroite(pOriginTilesMapX)
  
  return x
end


deplacement.gaucheDroite = function(pPositionX)
  if(love.keyboard.isDown("right")) then
    pPositionX = pPositionX + deplacement.vitesse
  end
  
  if(love.keyboard.isDown("left")) then
    pPositionX = pPositionX - deplacement.vitesse
  end
  
  return pPositionX
  
end

return deplacement