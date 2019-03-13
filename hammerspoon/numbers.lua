log = hs.logger.new("numbers.lua", "debug")
local mapping = {
    ["1"] = "f1",
    ["2"] = "f2",
    ["3"] = "f3",
    ["4"] = "f4",
    ["5"] = "f5",
    ["6"] = "f6",
    ["7"] = "f7",
    ["8"] = "f8",
    ["9"] = "f9",
    ["0"] = "f10",
    ["-"] = "f11",
    ["="] = "f12"
}

for num, fun in pairs(mapping) do
    hs.hotkey.bind(
        hyper,
        num,
        function()
            hs.eventtap.keyStroke({"fn"}, fun)
        end
    )
end
