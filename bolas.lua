bolas = {}

local tag = "bolas"

function CrearBola(x, y, r , sprite)
    local bola = {}

     bola.cuerpo = love.physics.newBody(world, x, y, "dynamic")
    bola.forma = love.physics.newCircleShape(r)
    bola.acople = love.physics.newFixture(bola.cuerpo, bola.forma)
    bola.acople:setUserData(tag)
    bola.sprite = love.graphics.newImage(sprite)

    return bola 

end

function CargarBolas()
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "pool_ball_outline_1.png"))
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "pool_ball_outline_2.png"))
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "pool_ball_outline_3.png"))
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "pool_ball_outline_4.png"))
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "pool_ball_outline_5.png"))
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "pool_ball_outline_6.png"))
    table.insert(bolas, CrearBola(650/2, 650/2, 20, "cue_ball_plain.png"))
end

function DibujarBolas()
    love.graphics.setColor(1, 1, 1)
    for index, bola in ipairs(bolas) do
         love.graphics.draw (bola.sprite, bola.cuerpo:getX(), bola.cuerpo:getY(), 0, 0.075, 0.075,
        256, 256)
        
    end
end
