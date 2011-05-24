# Center application windows

on run
	tell application "System Events" to set appName to name of first process whose frontmost is true and visible ­ false
	setBounds(getBounds(appName), appName)
end run

-- get size of window
on getBounds(appName)
	if appName is "firefox-bin" then
		tell application "System Events" to tell process appName to set {fmwWidth, fmwHeight} to size of front window
	else if appName is "Dictionary" then
		tell application "System Events" to set {fmwWidth, fmwHeight} to size of first window of application process appName
		
	else
		tell application appName to set fmwBounds to (get bounds of first window)
		set fmwWidth to (item 3 of fmwBounds) - (item 1 of fmwBounds)
		set fmwHeight to (item 4 of fmwBounds) - (item 2 of fmwBounds)
	end if
	
	tell application "Finder" to set desktopBounds to bounds of window of desktop
	set desktopWidth to (item 3 of desktopBounds) - (item 1 of desktopBounds)
	set desktopHeight to (item 4 of desktopBounds) - (item 2 of desktopBounds)
	
	# set left position
	set newX to (desktopWidth / 2) - (fmwWidth / 2)
	
	if appName is "Finder" then
		set newY to 100 # Set top position to 100, (just good distance from top)
		set z to getDockDimensions() # Set variable z to size of dock
		
		# If there dock size = 0, set it z to 80 (about the size of the dock)
		if z is equal to 0 then
			set z to 80
		end if
		
		# Set bottom position to 1000 - docksize (to distance it somewhat from the dock)
		set newZ to 1000 - z
		
	else if appName is "Mail" then
		if isMessageViewerFront() then
			set newY to 0
			set newZ to fmwHeight + newY
		else
			set newY to (desktopHeight / 2) - (fmwHeight / 2)
			set newZ to fmwHeight + newY
		end if
	else if appName is "Microsoft Word" or appName is "iTunes" then
		set newY to 22
		set newZ to desktopHeight - getDockDimensions()
	else if appName is "Terminal" then
		set newY to (desktopHeight / 2) + (fmwHeight / 2)
		set newZ to fmwHeight + newY
	else if appName is "VLC" then
		set newY to (desktopHeight / 2) - (fmwHeight / 2)
		set newZ to fmwHeight + newY
	else
		set newY to 0
		set newZ to desktopHeight - getDockDimensions()
	end if
	
	#left, top, right, bottom
	set newBounds to {newX, newY, newX + fmwWidth, newZ}
	
	return newBounds
end getBounds

-- set the new position of window
on setBounds(newBounds, appName)
	if appName is "firefox-bin" then
		tell application "System Events" to tell application process appName to tell window 1 to set position to newBounds
	else if appName is "Dictionary" then
		tell application "System Events" to set position of first window of application process appName to newBounds
	else
		tell application named appName to set bounds of first window to newBounds
	end if
end setBounds

-- get dock dimensions
on getDockDimensions()
	tell application "System Events"
		tell dock preferences
			set x to screen edge as text
		end tell
	end tell
	
	if x is equal to "bottom" then
		tell application "System Events" to tell process "Dock"
			set dockDimensions to size in list 1
			set dockheight to item 2 of dockDimensions
		end tell
	else
		set dockheight to 0
	end if
	
	return dockheight
end getDockDimensions

-- Check which mail window is frontmost
on isMessageViewerFront()
	tell application "Mail"
		if (name of first item of every message viewer) is equal to (name of first window) then
			set isFront to true
		else
			set isFront to false
		end if
	end tell
	
	return isFront
end isMessageViewerFront