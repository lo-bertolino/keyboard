log = hs.logger.new("super.lua", "debug")

superMode = hs.hotkey.modal.new({}, "F17")

local mappings = {
  ["u"] = {{"cmd"}, "1"}, -- go to first tab
  ["i"] = {{"cmd", "shift"}, "["}, -- go to previous tab
  ["o"] = {{"cmd", "shift"}, "]"}, -- go to next tab
  ["p"] = {{"cmd"}, "9"}, -- go to last tab
  ["h"] = {{}, "left"},
  ["j"] = {{}, "down"},
  ["k"] = {{}, "up"},
  ["l"] = {{}, "right"}
  -- ["a"] = {{"alt"}},
  -- ["x"] = {{"fn"}},
  -- ["f"] = {{"cmd"}},
  -- ["space"] = {{"shift"}}
}

local trigger = "s"

local message = require("keyboard.status-message")
local statusMessage = message.new("Super Mode")

for trigger, combo in pairs(mappings) do
  local mod, char = table.unpack(combo)
  superMode:bind(
    {},
    trigger,
    function()
      hs.eventtap.keyStroke(hs.eventtap.checkKeyboardModifiers(), char)
    end
  )
end

-- enter
hs.hotkey.bind(
  hyper,
  trigger,
  function()
    superMode:enter()
    statusMessage:show()
  end
)

-- exit
superMode:bind(
  hyper,
  trigger,
  function()
    superMode:exit()
    statusMessage:hide()
  end
)

superMode:bind(
  {},
  "escape",
  function()
    superMode:exit()
    statusMessage:hide()
  end
)
