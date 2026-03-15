function OnEvent(event, arg)
  if (event == "G_RELEASED" and arg == 2) then
  PressAndReleaseMouseButton(1)
  ReleaseMouseButton(2)
  PressAndReleaseKey("K")
  MoveMouseRelative(0,32)
  end
end
