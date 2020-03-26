local eventTypes = hs.eventtap.event.types
local strokes = 0
local lastStroke = now()
local tap = hs.eventtap.new({eventTypes.keyDown}, function(event)
  local delta = now() - lastStroke
  if delta >= 3600 then
    strokes = 0
  end
  lastStroke = lastStroke + delta
  strokes = strokes + 1
  if strokes > 1000 then
    strokes = 0
    hs.notify.show("stretch", "", "")
  end
  --https://www.hammerspoon.org/docs/hs.eventtap.event.html#getCharacters
  --print(event:getCharacters())
end)

return tap
