require("mesa")

--baranda = {}
--baranda2 = {}
bola = {}

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

    --[[baranda.cuerpo = love.physics.newBody(world, 650/2, 650-25)
    baranda.forma = love.physics.newRectangleShape(650, 20)
    baranda.acople = love.physics.newFixture(baranda.cuerpo, baranda.forma)
    baranda.acople:setUserData("BARANDA")

    baranda2.cuerpo = love.physics.newBody(world, 650/2, 10)
    baranda2.forma = love.physics.newRectangleShape(650, 20)
    baranda2.acople = love.physics.newFixture(baranda2.cuerpo, baranda2.forma)
    baranda2.acople:setUserData("BARANDA")--]]


    bola.cuerpo = love.physics.newBody(world, 650/2, 650/2, "dynamic")
    bola.forma = love.physics.newCircleShape(20)
    bola.acople = love.physics.newFixture(bola.cuerpo, bola.forma)
    bola.acople:setUserData("BOLA")  
    bola.sprite = love.graphics.newImage("pool_ball_outline_1.png")
    love.window.setMode(650, 650)
    

end

function love.keypressed(key, scancode, isrepeat)
    if key == "a" and contacto then
        bola.cuerpo:applyLinearImpulse(0, -500)
    end
end

function love.update(dt)
    world:update(dt)
    
end

function love.draw()
    DibujarMesa()
    --[[love.graphics.setColor(0.6, 0.4, 0.3)
    love.graphics.polygon ("fill", baranda.cuerpo:getWorldPoints(baranda.forma:getPoints()))
    love.graphics.polygon ("fill", baranda2.cuerpo:getWorldPoints(baranda2.forma:getPoints()))--]]
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw (bola.sprite, bola.cuerpo:getX(), bola.cuerpo:getY(), 0, 0.075, 0.075,
    256, 256)

    love.graphics.setColor(1, 0, 0)
    if contacto then
        love.graphics.print("CHOQUE", 650/2,200 )
        love.graphics.print(entidad1, 650/2,220 )
        love.graphics.print(entidad2, 650/2, 240)
    end

end