bolas = {}
miBola = nil
vel = 400

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

    local x = 650/2
    local y = 100
    local cantidad = 7

    for i = 1, cantidad do
        table.insert(bolas, CrearBola(x, y + (45 * i), 20, i..".png"))
        
    end

    miBola = bolas[cantidad]

end

function MoverMiBola(x, y)
    local bx = miBola.cuerpo:getX()
    local by = miBola.cuerpo:getY()

    local dx = x - bx
    local dy = y - by

    local distancia = math.sqrt(dx * dx + dy * dy)

    if distancia > 0 then
        local impulsoX = (dx / distancia) * vel
        local impulsoY = (dy / distancia) * vel
        miBola.cuerpo:applyLinearImpulse(impulsoY, impulsoY)
    end
end


function DibujarBolas()
    love.graphics.setColor(1, 1, 1)
    for index, bola in ipairs(bolas) do
         love.graphics.draw (bola.sprite, bola.cuerpo:getX(), bola.cuerpo:getY(), 0, 0.075, 0.075,
        256, 256)
        
    end
end
