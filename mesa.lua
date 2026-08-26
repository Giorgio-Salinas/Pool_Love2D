mesa = {}
tag = "Baranda"

function crearMesa()

    mesda.b1 = {}

mesa.b1.cuerpo = love.physics.newBody(world, 650/2, 650-25)
mesa.b1.forma = love.physics.newRectangleShape(650, 20)
mesa.b1.acople = love.physics.newFixture(baranda.cuerpo, baranda.forma)
mesa.b1.acople:setUserData(tag)

mesa.b2.cuerpo = love.physics.newBody(world, 650/2, 650-25)
mesa.b2.forma = love.physics.newRectangleShape(650, 20)
mesa.b2.acople = love.physics.newFixture(baranda.cuerpo, baranda.forma)
mesa.b2.acople:setUserData(tag)

mesa.b3.cuerpo = love.physics.newBody(world, 650/2, 650-25)
mesa.b3.forma = love.physics.newRectangleShape(650, 20)
mesa.b3.acople = love.physics.newFixture(baranda.cuerpo, baranda.forma)
mesa.b3.acople:setUserData(tag)

mesa.b4.cuerpo = love.physics.newBody(world, 650/2, 650-25)
mesa.b4.forma = love.physics.newRectangleShape(650, 20)
mesa.b4.acople = love.physics.newFixture(baranda.cuerpo, baranda.forma)
mesa.b4.acople:setUserData(tag)

end