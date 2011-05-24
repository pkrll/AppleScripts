on run {}
	if isApp("Echofon") then
		if isActive("Echofon") then -- hide if app is active
			tell application "System Events"
				tell process "Echofon"
					click menu item "Close" of menu 1 of menu bar item "File" of menu bar 1
					set visible to false
				end tell
			end tell
		else -- if app is not frontmost
			tell application "System Events"
				tell process "Echofon"
					if visible is equal to true then -- if app is visible, but not frontmost hide
						click menu item "Close" of menu 1 of menu bar item "File" of menu bar 1
						set visible to false
					else -- if app is not visible, show
						tell application "Echofon" to activate
						click menu item "Show Main Window" of menu 1 of menu bar item "Window" of menu bar 1
					end if
				end tell
			end tell
		end if
	else -- start app
		tell application "Echofon" to activate
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
