local graphics
graphics = love.graphics
local pop = require("")
local debug = false
love.load = function()
  local old_method
  old_method = function()
    pop.text("Hello World!"):align("center", "center")
    local testWindow = pop.window({
      windowBackground = {
        200,
        200,
        200
      },
      closeable = true,
      maximizeable = true,
      minimizeable = true
    }, "Testing Window"):move(20, 20):setSize(200, 100):align("right", "top")
    print(testWindow.window_area)
    pop.window({
      maximizeable = true
    }, "Test Window #2"):align("center", "bottom")
    local centerBox = pop.box({
      w = 200,
      h = 200
    }, {
      255,
      255,
      0,
      120
    }):align("center", "center")
    pop.box(centerBox, {
      w = 10,
      h = 20
    }):align("left", "top")
    pop.box(centerBox, {
      w = 30,
      h = 30
    }):align("center", "top")
    pop.box(centerBox, {
      w = 5,
      h = 40
    }):align("left", "center")
    pop.box(centerBox, {
      w = 50,
      h = 50
    }):align("right", "center")
    pop.box(centerBox):align("left", "bottom"):setSize(5, 5)
    pop.box(centerBox, {
      w = 25,
      h = 10
    }):align("center", "bottom")
    pop.text(centerBox, "Align me!"):align("right", "top")
    pop.window(centerBox):align("right", "bottom")
    centerBox:setPadding(5)
    pop.box(centerBox, {
      w = 10,
      h = 20,
      background = {
        0,
        0,
        255,
        100
      }
    }):align("left", "top")
    pop.box(centerBox, {
      w = 30,
      h = 30,
      background = {
        0,
        0,
        255,
        100
      }
    }):align("center", "top")
    pop.box(centerBox, {
      w = 5,
      h = 40,
      background = {
        0,
        0,
        255,
        100
      }
    }):align("left", "center")
    pop.box(centerBox, {
      w = 50,
      h = 50,
      background = {
        0,
        0,
        255,
        100
      }
    }):align("right", "center")
    pop.text(centerBox, {
      color = {
        0,
        0,
        255,
        100
      }
    }, "Text!"):align("left", "bottom")
    pop.box(centerBox, {
      w = 25,
      h = 10,
      background = {
        0,
        0,
        255,
        100
      }
    }):align("center", "bottom")
    pop.text(centerBox, {
      color = {
        0,
        0,
        255,
        100
      }
    }, "Align me!"):align("right", "top")
    return pop.window(centerBox, {
      titleColor = {
        0,
        0,
        0,
        150
      },
      titleBackground = {
        0,
        0,
        255,
        100
      },
      windowBackground = {
        200,
        200,
        255,
        100
      }
    }):align("right", "bottom")
  end
  local new_method
  new_method = function()
    local partsGrid = pop.dynamicGrid()
    return pop.window({
      w = graphics.getWidth() / 2,
      h = graphics.getHeight(),
      titleBar = false
    }):add({
      pop.box({
        h = 17
      }),
      pop.scrollbox():add(partsGrid),
      pop.grid():add({
        pop.button(),
        pop.button(),
        pop.button()
      })
    })
  end
  return old_method()
end
love.update = function(dt)
  return pop.update(dt)
end
love.draw = function()
  pop.draw()
  if debug then
    return pop.debugDraw()
  end
end
love.mousemoved = function(x, y, dx, dy)
  return pop.mousemoved(x, y, dx, dy)
end
love.mousepressed = function(x, y, button)
  return pop.mousepressed(x, y, button)
end
love.mousereleased = function(x, y, button)
  return pop.mousereleased(x, y, button)
end
love.wheelmoved = function(x, y)
  return pop.wheelmoved(x, y)
end
love.keypressed = function(key)
  if key == "escape" then
    return love.event.quit()
  elseif key == "d" then
    debug = not debug
  end
end
love.keyreleased = function(key)
  return pop.keyreleased(key)
end
love.textinput = function(text)
  return pop.textinput(text)
end
