-- Cette ligne permet d'afficher des traces dans la console pendnat l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

SCREEN_WIDTH = 1600
SCREEN_HEIGHT = 900

love.window.setMode(SCREEN_WIDTH, SCREEN_HEIGHT)

width = love.graphics.getWidth()
height = love.graphics.getHeight()


local Niveau01 = require("Niveau/Niveau01/Niveau01")

local camera = 0

personnage= {}
personnage.x = width/2 - 100
personnage.y = ((height/3)*2)-200
personnage.scaleX = 2
personnage.scaleY = 2
personnage.LoadImg = function()
  personnage.img = love.graphics.newImage("img/personnage.png")
end


function love.load()
  Niveau01.Load()
  
  personnage.LoadImg()
  
end

function love.update(dt)
  if love.keyboard.isDown("right") then
    camera = camera + 5
  end
  
  if love.keyboard.isDown("left") then
    camera = camera - 5
  end
  
end

function love.draw()
  Niveau01.Draw(camera)
  
  love.graphics.draw(personnage.img, personnage.x,personnage.y,0,personnage.scaleX,personnage.scaleY)
  
end

function love.keypressed(key)
  
end