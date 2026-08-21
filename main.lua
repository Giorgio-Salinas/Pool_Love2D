baranda = {}
bola = {}

function love.load()
    love.physics.setMeter(64)
    world = love.physics.newWorld(0, 9.81*64, true)

    baranda.cuerpo = love.physics.newBody(world, 650/2, 650-25)
    baranda.forma = love.physics.newRectangleShape(650, 50)
    baranda.acople = love.physics.newFixture(baranda.cuerpo, baranda.forma)

    bola.cuerpo = love.physics.newBody(world, 650/2, 650/2, "dynamic")
    bola.forma = love.physics.newCircleShape(20)
    bola.acople = love.physics.newFixture(bola.cuerpo, bola.forma)
    bola.sprite = love.graphics.newImage("pool_ball_outline_1.png")
    love.window.setMode(650, 650)

end

function love.update(dt)
    world:update(dt)
    
end

function love.draw()
    love.graphics.polygon ("fill", baranda.cuerpo:getWorldPoints(baranda.forma:getPoints()))
    love.graphics.draw (bola.sprite, bola.cuerpo:getX(), bola.cuerpo:getY(), 0, 0.075, 0.075,
    256, 256)

end