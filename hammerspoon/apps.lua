log = hs.logger.new("apps.lua", "debug")

hyperMode = hs.hotkey.modal.new({}, "F18")

local mappings = {
  s = "Spotify",
  m = "Spotify", --(M)usic
  b = "Safari", --(B)rowser
  c = "Visual Studio Code", --(C)ode
  r = "Reminders",
  f = "Finder",
  e = "Mail", --(E)mail
  w = "WhatsApp",
  v = "MacVim", --(V)im
  g = "GitKraken",
  space = "iTerm"
}

local trigger = "a"

local message = require("keyboard.status-message")
local statusMessage = message.new("Hyper Mode")

function hyperMode.bindAndExit(mode, key, fn)
  mode:bind(
    hyper,
    key,
    function()
      mode:exit()
      statusMessage:hide()
      fn()
    end
  )
  mode:bind(
    {},
    key,
    function()
      mode:exit()
      statusMessage:hide()
      fn()
    end
  )
end

for key, app in pairs(mappings) do
  log.d(key, app)
  hyperMode:bindAndExit(
    key,
    function()
      if (type(app) == "string") then
        hs.application.open(app)
      elseif (type(app) == "function") then
        app()
      else
        hs.logger.new("hyper"):e("Invalid mapping for Hyper +", key)
      end
    end
  )
end

-- enter
hs.hotkey.bind(
  hyper,
  trigger,
  function()
    hyperMode:enter()
    statusMessage:show()
  end
)

-- exit
hyperMode:bind(
  hyper,
  trigger,
  function()
    hyperMode:exit()
    statusMessage:hide()
  end
)

hyperMode:bind(
  {},
  "escape",
  function()
    hyperMode:exit()
    statusMessage:hide()
  end
)
