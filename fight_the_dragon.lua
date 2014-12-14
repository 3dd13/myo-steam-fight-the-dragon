scriptId = 'bs.42la.myo.FightTheDragon'
scriptTitle = "FightTheDragon"
scriptDetailsUrl = ""

function onForegroundWindowChange(app, title)
  myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
  if (title == scriptTitle) then
    myo.setLockingPolicy("none")

    return true
  else
    myo.setLockingPolicy("standard")

    return false
  end
end

function onPoseEdge(pose, edge)
  if (edge == "on" and pose == "fingersSpread") then
    myo.keyboard("right_shift", "press")
  elseif (edge == "on" and pose == "fist") then
    myo.keyboard("f", "press")
  end
end
