# Set application windows to the right

on run
	tell application "System Events" to set appName to name of first process whose frontmost is true and visible � false
	
	if appName is "Finder" then
		setupWindow() -- set properties for Finder window
	else
		setBounds(getBounds(appName), appName)
	end if
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
	
	set newX to (desktopWidth) - (fmwWidth)
	if appName is "Microsoft Word" then
		set newY to 22
	else
		set newY to 0
	end if
	set newBounds to {newX, newY, newX + fmwWidth, newY + fmwHeight}
	
	return newBounds
end getBounds

-- set up window position
on setBounds(newBounds, appName)
	if appName is "firefox-bin" then
		delay 1
		tell application "System Events" to tell application process appName to tell window 1 to set position to newBounds
	else if appName is "Dictionary" then
		tell application "System Events" to set position of first window of application process appName to newBounds
	else if appName is "Finder" then
		
	else
		tell application named appName to set bounds of first window to newBounds
	end if
end setBounds

-- Set up the window
on setupWindow()
	tell application "Finder"
		set winName to the name of front Finder window
		if winName is not "Applications" then
			set the sidebar width of front Finder window to 159
			set the current view of front Finder window to icon view
			set x to my getDockDimensions()
			set the bounds of front Finder window to {(1280 - (item 1 of x)) / 2, 44, 1280, 800 - (item 2 of x)}
		end if
	end tell
end setupWindow

-- get dock dimensions
on getDockDimensions()
	tell application "System Events" to tell process "Dock"
		set dockDimensions to size in list 1
		set dockWidth to item 1 of dockDimensions
		set dockheight to item 2 of dockDimensions
	end tell
	
	return {dockWidth, dockheight}
end getDockDimensions

-- set the sidebar
on setSidebar(newWid)
	tell application "Finder" to set the sidebar width of the front Finder window to newWid
end setSidebar