on run {}
	if isApp("Safari") then
		if isActive("Safari") then
			tell application "System Events"
				tell process "Safari"
					click last menu item of menu 1 of menu bar item 6 of menu bar 1
				end tell
			end tell
		end if
	end if
end run

-- check if app is on
on isApp(appName)
	tell application "System Events" to set apps to (((application processes whose (name is equal to appName)) count))
	
	if apps is greater than 0 then
		return true
	else
		return false
	end if
end isApp

-- check if app is active
on isActive(appName)
	tell application "System Events" to set activeApplication to name of first application process whose frontmost is true and visible ­ false
	
	if activeApplication is appName then
		return true
	else
		return false
	end if
end isActive