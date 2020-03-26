require("globals")

keystroke = require("keystroke")
keystroke:start()

require("sound")

hs.loadSpoon("HSKeybindings")

local sheetToggle = false
hs.hotkey.bind(lean, "k", function ()
  if not sheetToggle then
    spoon.HSKeybindings:show()
    sheetToggle = true
  else
    spoon.HSKeybindings:hide()
    sheetToggle = false
  end
end)

local anycomplete = require("anycomplete")
anycomplete.registerDefaultBindings(lean, "g")

hs.loadSpoon("MiroWindowsManager")
hs.window.animationDuration = 0.0
spoon.MiroWindowsManager.fullScreenSizes = {1, 6/5, 2}
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "m"}  -- "Max"
})

hs.hotkey.bind(hyper, "n", function()  -- "Next screen"
  local win = hs.window.focusedWindow()
  win:moveToScreen(win:screen():next(), false, true)
end)

hs.hotkey.bind(lean, "r", hs.reload)  -- "Reload"

hs.hotkey.bind(lean, "h", function()  -- "Help Hammerspoon"
  hs.urlevent.openURLWithBundle(
    "https://www.hammerspoon.org/docs/",
    "org.mozilla.firefox")
end)

hs.hotkey.bind(lean, "t", function()  -- "Timestamp to clipboard"
  hs.pasteboard.setContents(now())
  hs.alert.show("Timestamp on clipboard")
end)

hs.alert.show("Config Reloaded.")
