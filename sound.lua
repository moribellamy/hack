local vmoda_str = "V-MODA Crossfade"
local logitech_str = "Logitech USB Headset"
local default_speakers_str = "Built-in Output"
local default_internal_mic_str = "Built-in Microphone"

function getOutputDevice(name)
  for _, device in ipairs(hs.audiodevice.allOutputDevices()) do
    print(device:name())
    if device:name() == name then
      return device
    end
  end
  return nil
end

function getInputDevice(name)
  for _, device in ipairs(hs.audiodevice.allInputDevices()) do
    print(device:name())
    if device:name() == name then
      return device
    end
  end
  return nil
end

local default_speakers = getOutputDevice(default_speakers_str)
local default_mic = getInputDevice(default_internal_mic_str)

function mute()
  default_mic:setDefaultInputDevice()
  default_mic:setInputVolume(0)
end

function deafen()
  default_speakers:setDefaultOutputDevice()
  default_speakers:setOutputVolume(0)
end

function selectOutputDevice(device)
  for _, device in ipairs(hs.audiodevice.allOutputDevices()) do
    if device:name() == device then
      found = true
      message = message .. "\nSet device to" .. device
      device:setDefaultOutputDevice()
    elseif device:name() == speakers then
      speakersDev = device
    end
  end
end

hs.hotkey.bind(lean, "c", function()  -- "c" for Conference
  local logitech_out = getOutputDevice(logitech_str)
  local logitech_in = getInputDevice(logitech_str)

  if logitech_in == nil or logitech_out == nil then
    hs.alert.show("Cannot find '" .. logitech_str .. "': muting.")
    mute()
  else
    hs.alert.show("Making headset hot.")
    logitech_out:setDefaultOutputDevice()
    logitech_in:setDefaultInputDevice()
    logitech_in:setInputVolume(100)
  end

end)

hs.hotkey.bind(lean, "s", function()  -- "s" for Spotify
  local vmoda = getOutputDevice(vmoda_str)
  local speakers = getOutputDevice(default_speakers_str)
  if vmoda == nil then
    hs.alert.show("Didn't find '" .. vmoda_str .. "': deafening.")
    deafen()
  else
    hs.alert.show("Setting output device to " .. vmoda_str)
    vmoda:setDefaultOutputDevice()
  end
end)

