local hotkey_index = 1

-- Execute hotkey based on current index and advance to next
function CycleHotkeys()
    -- Press Win+Ctrl+Alt+[index]
    PressKey('lgui')
    PressKey("lctrl")
    PressKey("lalt")
    PressAndReleaseKey(tostring(hotkey_index))
    ReleaseKey("lalt")
    ReleaseKey("lctrl")
    ReleaseKey('lgui')
    
    -- Advance to next hotkey (loop back to 1 after 3)
    hotkey_index = hotkey_index % 3 + 1
end

function OnEvent(event, arg)
    if (event == "G_PRESSED" and arg == 2) then  -- G2 pressed
        OutputLogMessage(tostring(hotkey_index))
        CycleHotkeys()
        OutputLogMessage("Executed hotkey: Win+Ctrl+Alt+1\n")
    end
end
