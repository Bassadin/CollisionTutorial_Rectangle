--Shortcuts
  lg = love.graphics
  
function love.load()
  shape1 = {
    x = 100,
    y = 100,
    w = 100,
    h = 100
  }
  
  shape2 = {
    x = 300,
    y = 300,
    w = 100,
    h = 100
  }
end

function love.update(dt)
  shape1.x, shape1.y = love.mouse.getPosition()
  shape1.x = shape1.x - shape1.w / 2
  shape1.y = shape1.y - shape1.h / 2
end

function love.draw()
  if rectCollision(shape1, shape2) then
    lg.setBackgroundColor(0, 150, 0, 255)
  else
    lg.setBackgroundColor(150, 0, 0, 255)
  end
  
  lg.setColor(255, 255, 255, 255)
      
  lg.rectangle("fill", shape2.x, shape2.y, shape2.w, shape2.h)
  
  lg.setColor(0, 0, 0, 255)

  lg.rectangle("fill", shape1.x, shape1.y, shape1.w, shape1.h)
end

function rectCollision(quad1, quad2)
  return 
  quad1.x < quad2.x + quad2.w and
  quad2.x < quad1.x + quad1.w and
  quad1.y < quad2.y + quad2.h and
  quad2.y < quad1.y + quad1.h
end