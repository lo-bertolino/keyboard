-- sendEscape = false
-- lastMods = {}

-- ctrlKeyHandler = function()
--   sendEscape = false
-- end

-- ctrlKeyTimer = hs.timer.delayed.new(0.15, ctrlKeyHandler)

-- ctrlHandler = function(evt)
--   local newMods = evt:getFlags()
--   if lastMods["ctrl"] == newMods["ctrl"] then
--     return false
--   end
--   if not lastMods["ctrl"] then
--     lastMods = newMods
--     sendEscape = true
--     ctrlKeyTimer:start()
--   else
--     if sendEscape then
--       keyUpDown({}, 'escape')
--     end
--     lastMods = newMods
--     ctrlKeyTimer:stop()
--   end
  
--   return false
-- end

-- ctrlTap = hs.eventtap.new({hs.eventtap.event.types.flagsChanged}, ctrlHandler)
-- ctrlTap:start()

-- otherHandler = function(evt)
--   sendEscape = false
--   return false
-- end

-- otherTap = hs.eventtap.new({hs.eventtap.event.types.keyDown}, otherHandler)
-- otherTap:start()


-- local left = {
--     "1",
--     "2",
--     "3",
--     "4",
--     "5",
--     "q",
--     "w",
--     "e",
--     "r",
--     "t",
--     "a",
--     "s",
--     "d",
--     "f",
--     "g",
--     "`",
--     "z",
--     "x",
--     "c",
--     "v"
-- }

-- local right = {
--     "6",
--     "7",
--     "8",
--     "9",
--     "0",
--     "-",
--     "=",
--     "y",
--     "u",
--     "i",
--     "o",
--     "p",
--     "h",
--     "j",
--     "k",
--     "l",
--     ";",
--     "'",
--     "\\",
--     "b",
--     "n",
--     "m",
--     ",",
--     ".",
--     "/",
--     "[",
--     "]"
-- }

-- hs.fnutils.each(
--     right,
--     function(key)
--         hs.hotkey.bind({"rightshift"}, key, nil, nil, nil)
--     end
-- )

-- hs.fnutils.each(
--     left,
--     function(key)
--         hs.hotkey.bind({"shift"}, key, nil, nil, nil)
--     end
-- )

-- <item>
--     <name>Use the correct shift keys.</name>
--     <identifier>private.correct_shift_keys</identifier>

--     <autogen>--KeyToKey-- KeyCode::Q, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::W, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::E, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::R, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::T, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::A, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::S, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::D, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::F, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::G, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::Z, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::X, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::C, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::V, ModifierFlag::SHIFT_L, KeyCode::VK_NONE</autogen>

--     <autogen>--KeyToKey-- KeyCode::Y,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::U,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::I,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::O,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::P,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::H,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::J,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::K,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::L,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::SEMICOLON, ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::N,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::M,         ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::COMMA,     ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::DOT,       ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
--     <autogen>--KeyToKey-- KeyCode::QUOTE,     ModifierFlag::SHIFT_R, KeyCode::VK_NONE</autogen>
-- </item>
-- <item>
--     <name>Shifts to Parentheses</name>
--     <appendix>Shifts, when pressed alone, type parentheses.  When used with other keys they re normal shifts.</appendix>

--     <identifier>private.shifts_to_parens</identifier>

--     <!-- This is the basic mapping. -->
--     <autogen>--KeyOverlaidModifier-- KeyCode::SHIFT_R, ModifierFlag::SHIFT_R | ModifierFlag::NONE, KeyCode::SHIFT_R, KeyCode::KEY_0, ModifierFlag::SHIFT_L</autogen>
--     <autogen>--KeyOverlaidModifier-- KeyCode::SHIFT_L, ModifierFlag::SHIFT_L | ModifierFlag::NONE, KeyCode::SHIFT_L, KeyCode::KEY_9, ModifierFlag::SHIFT_R</autogen>

--     <!--
--         Remap the "rolls" of () and )( because it's too easy to hit one
--         before finishing the other, and there's no other reason to be
--         pressing both shift keys at once anyway
--     -->
--     <autogen>--KeyToKey-- KeyCode::SHIFT_L, ModifierFlag::SHIFT_R, KeyCode::KEY_0, ModifierFlag::SHIFT_L, KeyCode::KEY_9, ModifierFlag::SHIFT_L</autogen>
--     <autogen>--KeyToKey-- KeyCode::SHIFT_R, ModifierFlag::SHIFT_L, KeyCode::KEY_9, ModifierFlag::SHIFT_L, KeyCode::KEY_0, ModifierFlag::SHIFT_L</autogen>

--     <!--
--         Remap Rshift+Space to ') ', because when typing an end paren and
--         then a space I tend to hit space before I let go of rshift.
--     -->
--     <autogen>--KeyToKey-- KeyCode::SPACE, ModifierFlag::SHIFT_R, KeyCode::KEY_0, ModifierFlag::SHIFT_L, KeyCode::SPACE</autogen>
-- </item>
