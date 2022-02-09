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


local game = require("game")



function love.load()
  game.load()
end

function love.update(dt)
  
  game.update(dt)
  
end

function love.draw()
  game.draw()
end

function love.keypressed(key)
  
end