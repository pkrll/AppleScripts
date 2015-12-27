-- Activate Rocket Fuel for 3.5 minutes, if the app is not already active
tell application "RocketFuel"
    if active is false then
        duration 3.5
    end if
end tell
