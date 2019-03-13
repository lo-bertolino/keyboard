log = hs.logger.new("init.lua", "debug")

hs.console.clearConsole()
-- Use Control+` to reload Hammerspoon config

hyper = {"cmd", "alt", "ctrl", "shift"}

hs.hotkey.bind(
  {"ctrl"},
  "`",
  nil,
  function()
    hs.notify.new({title = "Hammerspoon", informativeText = "Reloading... ⏳"}):send()
    hs.reload()
  end
)

keyUpDown = function(modifiers, key)
  -- log.d('Sending keystroke:', hs.inspect(modifiers), key)
  hs.eventtap.keyStroke(modifiers, key, 0)
end

-- Subscribe to the necessary events on the given window filter such that the
-- given hotkey is enabled for windows that match the window filter and disabled
-- for windows that don't match the window filter.
--
-- windowFilter - An hs.window.filter object describing the windows for which
--                the hotkey should be enabled.
-- hotkey       - The hs.hotkey object to enable/disable.
--
-- Returns nothing.

enableHotkeyForWindowsMatchingFilter = function(windowFilter, hotkey)
  windowFilter:subscribe(
    hs.window.filter.windowFocused,
    function()
      hotkey:enable()
    end
  )

  windowFilter:subscribe(
    hs.window.filter.windowUnfocused,
    function()
      hotkey:disable()
    end
  )
end

require("keyboard.super")
require("keyboard.apps")
require("keyboard.windows")
require("keyboard.numbers")
require("keyboard.markdown")
require("keyboard.iterm")

log.d(hs.inspect(hs.eventtap.checkKeyboardModifiers()))

hs.notify.new({title = "Hammerspoon", informativeText = "All set 😍"}):send()
