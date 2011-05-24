on run {}
	if isApp("Caffeine") then
		tell application "Caffeine"
			activate
			turn off
			quit
		end tell
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