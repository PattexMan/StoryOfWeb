local deplacement = {}

local collision = require("collision")

deplacement.vitesse = 5

deplacement.update = function(pOriginTilesMapX, dt, pPosPersonnageX, pPosPersonnageY, pPosPersonnageVX, pPosPersonnageVY)
  x = deplacement.update(pOriginTilesMapX, dt, pPosPersonnageX, pPosPersonnageY, pPosPersonnageVX, pPosPersonnageVY )
  
  return x
end

deplacement.update = function(pPositionX, dt, pPosPersonnageX, pPosPersonnageY, pPosPersonnageVX, pPosPersonnageVY)
  local accel = 600
  local friction = 150
  local maxSpeed = 250
  local jumpVelocity = -280
  -- Friction
  if pPosPersonnageVX > 0 then
    pPosPersonnageVX = pPosPersonnageVX - friction * dt
    if pPosPersonnageVX < 0 then pPosPersonnageVX = 0 end
  end
  if pPosPersonnageVX < 0 then
    pPosPersonnageVX = pPosPersonnageVX + friction * dt
    if pPosPersonnageVX > 0 then pPosPersonnageVX = 0 end
  end
  -- Keyboard
  if love.keyboard.isDown("right") then
    
    pPosPersonnageVX = pPosPersonnageVX + accel * dt
    --print(pPosPersonnageVX)
    if pPosPersonnageVX > maxSpeed then pPosPersonnageVX = maxSpeed end
  end
  if love.keyboard.isDown("left") then
    pPosPersonnageVX = pPosPersonnageVX - accel * dt
    
    if pPosPersonnageVX < -maxSpeed then pPosPersonnageVX = -maxSpeed end
  end
  --[[
  if love.keyboard.isDown("up") and pPlayer.standing and bJumpReady then
    pPlayer.vy = jumpVelocity
    pPlayer.standing = false
    bJumpReady = false
  end
  if love.keyboard.isDown("up") == false and bJumpReady == false then
    bJumpReady = true
  end
  ]]--
  -- Move
  pPositionX = pPositionX + pPosPersonnageVX
  --pPlayer.y = pPlayer.y + pPlayer.vy
  
  -- Collision detection
  local collide = false
  -- On the right
  if pPosPersonnageVX > 0 then
    collide = collision.Right(pPosPersonnageX, pPosPersonnageY)
  end
  -- On the left
  if pPosPersonnageVX < 0 then
    
    collide = collision.Left(pPosPersonnageX, pPosPersonnageY)
  end
  -- Stop!
  
  if collide then
    pPosPersonnageVX = 0
    --local col = math.floor((pSprite.x + 16) / 32) + 1
    --pSprite.x = (col-1)*32
  end
  collide = false
  
  --[[
  -- Above
  if pSprite.vy < 0 then
    collide = CollideAbove(pSprite)
    if collide then
      pSprite.vy = 0
      local lig = math.floor((pSprite.y + 16) / 32) + 1
      pSprite.y = (lig-1)*32
    end
  end
  collide = false
  -- Below
  if pSprite.standing or pSprite.vy > 0 then
    collide = CollideBelow(pSprite)
    if collide then
      pSprite.standing = true
      pSprite.vy = 0
      local lig = math.floor((pSprite.y + 16) / 32) + 1
      pSprite.y = (lig-1)*32
    else
      pSprite.standing = false
    end
  end
  -- Sprite falling
  if pSprite.standing == false then
    pSprite.vy = pSprite.vy + 500 * dt
  end
  ]]--
  
  return pPositionX
end


return deplacement