on run {}
	if isApp("Echofon") then
		tell application "System Events"
			set curApp to name of first process whose frontmost is true
		end tell
		
		tell application "Echofon" to activate
		tell application "System Events"
			tell process "Echofon"
				click menu item "Mark All as Read" of menu 1 of menu bar item "View" of menu bar 1
			end tell
		end tell
		
		tell application curApp to activate
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