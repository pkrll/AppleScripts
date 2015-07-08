-- Center window

on run
	tell application "System Events" to set appName to name of first process whose frontmost is true and visible ≠ false
	-- Get the app and desktop dimensions
	set appBounds to getAppBounds(appName)
	set desktopBounds to getDesktopBounds()
	-- Get the new coordinates for the app
	set newBounds to getNewBounds(appBounds, desktopBounds)
	setBounds(newBounds, appName)
end run

on setBounds(newBounds, appName)
	-- Set the new bounds
	try
		tell application named appName to set bounds of first window to newBounds
	on error
		-- App is not scriptable, so
		-- try again, and then again
		try
			tell application "System Events" to set position of first window of application process appName to newBounds
		on error
			try
				tell application "System Events" to tell application process appName to tell window 1 to set position to newBounds
			on error
				display alert ¬
					"Center Window" message "App " & appName & ¬
					" is not supported." as warning
				error number -128
			end try
		end try
	end try
end setBounds

on getAppBounds(appName)
	-- Get the width and height of the
	-- front most window of the app
	try
		tell application appName to set appBounds to (get bounds of first window)
		set appWidth to (item 3 of appBounds) - (item 1 of appBounds)
		set appHeight to (item 4 of appBounds) - (item 2 of appBounds)
	on error
		-- App is not scriptable,
		-- so let's try some other options
		try
			tell application "System Events" to tell process appName to set {appWidth, appHeight} to size of front window
		on error
			try
				tell application "System Events" to set {appWidth, appHeight} to size of first window of application process appName
			on error
				display alert ¬
					"Center Window" message "App " & appName & ¬
					" is not supported." as warning
				error number -128

			end try
		end try
	end try

	return {appWidth, appHeight}

end getAppBounds

on getDesktopBounds()
	tell application "Finder" to set desktopBounds to bounds of window of desktop
	set desktopWidth to (item 3 of desktopBounds) - (item 1 of desktopBounds)
	set desktopHeight to (item 4 of desktopBounds) - (item 2 of desktopBounds)

	return {desktopWidth, desktopHeight}
end getDesktopBounds

on getNewBounds(appBounds, desktopBounds)
	set aW to item 1 of appBounds
	set aH to item 2 of appBounds
	set dW to item 1 of desktopBounds
	set dH to item 2 of desktopBounds

	-- Calculate the new position
	-- Start with the x coordinates
	set newX to (dW / 2) - (aW / 2)
	-- The Y coordinates, depends on
	-- the app height. The number 22
	-- is for positioning the app just
	-- below the menubar.
	if aH ≥ (dH - getDockDimensions() - 22) then
		set newY to 0
		set newZ to dH - getDockDimensions()
	else
		set newY to (dH - aH) / 3
		set newZ to newY + aH
	end if

	set newBounds to {newX, newY, newX + aW, newZ}
end getNewBounds

on getDockDimensions()
	tell application "System Events" to tell process "Dock"
		set dockDimensions to size in list 1
		set dockheight to item 2 of dockDimensions
	end tell

	return dockheight
end getDockDimensions
