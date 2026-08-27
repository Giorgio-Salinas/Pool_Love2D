require("mesa")
require("bolas")


--bola = {}

entidad1 = nil
entidad2 = nil
contacto = false

function inicioContacto(a, b, col)
    contacto = true
    entidad1 = a:getUserData()
    entidad2 = b:getUserData()
end

function finContacto(a, b, col)
    contacto = false
    entidad1 = nil
    entidad2 = nil
end

function love.load()
    love.physics.setMeter(64)
    world = love.physics.newWorld(0, 9.81*64, true)
    world:setCallbacks(inicioContacto, finContacto)

    CrearMesa()

    CargarBolas()
    
    love.window.setMode(650, 650)
    

end

function love.keypressed(key, scancode, isrepeat)
    if key == "space" then
        bolas[1].cuerpo:applyLinearImpulse(0, -500)
        bolas[2].cuerpo:applyLinearImpulse(110, -500)
        bolas[3].cuerpo:applyLinearImpulse(220, -500)
        bolas[4].cuerpo:applyLinearImpulse(330, -500)
        bolas[5].cuerpo:applyLinearImpulse(220, -500)
        bolas[6].cuerpo:applyLinearImpulse(660, -500)
        bolas[7].cuerpo:applyLinearImpulse(70, -500)
    end
end

function love.update(dt)
    world:update(dt)
    
end

function love.draw()
    DibujarMesa()

   DibujarBolas()

    love.graphics.setColor(1, 0, 0)
    if contacto then
        love.graphics.print("CHOQUE", 650/2,200 )
        love.graphics.print(entidad1, 650/2,220 )
        love.graphics.print(entidad2, 650/2, 240)
    end

end