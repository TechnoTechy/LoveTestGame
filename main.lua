--Function called once at startup
function love.load(arg)
  sMet = false
  w, h = 100, 50
  love.window.setTitle("Test Game")
end

function love.update(dt)
--Controls the rectangle "pulsing" effect
--When size met set sMet true
  if w == 125 and h == 75 then
    sMet = true
   end
--When original size set sMet false
  if w == 75 and h == 25 then
    sMet = false
  end
--Grows rectange
  if sMet == false then
    w = w + 1
    h = h + 1
  end
--Shrinks rectangle
  if sMet == true then
    w = w - 1
    h = h - 1
  else sMet = false
  end

--When user pressed escape close the game
  if love.keyboard.isDown('escape') then
    closeGame()
  end
end

--Callback function used to draw on the screen every frame
function love.draw()
  love.graphics.rectangle("fill", love.mouse.getX(), love.mouse.getY(), w, h)
  love.graphics.setColor(247, 100, 50, 255)
end
--Function to close the game when esc is pressed
function closeGame()
  love.window.close()
end
