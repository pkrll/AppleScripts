-- Center window
on run
	tell application "System Events" to set win to name of first process whose frontmost is true and visible ­ false
	setBounds(getBounds(win), win)
end run

-- get size of window
on getBounds(win)
	if win is "firefox-bin" or win is "Pocket" or win is "ReadKit" or win is "Reeder" or win is "Spotify" or win is "iBooks" or win is "Tumblr" or win is "Todoist" then
		tell application "System Events" to tell process win to set {fmwWidth, fmwHeight} to size of front window
	else if win is "Dictionary" or win is "Game Center" or win is "Pages" or win is "Wunderlist" then
		tell application "System Events" to set {fmwWidth, fmwHeight} to size of first window of application process win
	else if win is "Microsoft Word" then
		tell application "Microsoft Word" to set fmwBounds to (get bounds of active window)
		set fmwWidth to (item 3 of fmwBounds) - (item 1 of fmwBounds)
		set fmwHeight to (item 4 of fmwBounds) - (item 2 of fmwBounds)
	else
		tell application win to set fmwBounds to (get bounds of first window)
		set fmwWidth to (item 3 of fmwBounds) - (item 1 of fmwBounds)
		set fmwHeight to (item 4 of fmwBounds) - (item 2 of fmwBounds)
	end if
	
	tell application "Finder" to set desktopBounds to bounds of window of desktop
	set desktopWidth to (item 3 of desktopBounds) - (item 1 of desktopBounds)
	set desktopHeight to (item 4 of desktopBounds) - (item 2 of desktopBounds)
	
	set newX to (desktopWidth / 2) - (fmwWidth / 2)
	if win is "Microsoft Word" then
		if fmwHeight ³ (desktopHeight - getDockDimensions() - 22) then
			set newY to 22
			set newZ to desktopHeight - getDockDimensions()
		else
			set newY to (desktopHeight - fmwHeight) / 3
			set newZ to newY + fmwHeight
		end if
	else if win is "iTunes" or win is "Mail" then
		set newY to (desktopHeight - fmwHeight) / 4
		set newZ to newY + fmwHeight
	else if win is "Terminal" then
		set newY to (desktopHeight / 2) - (fmwHeight / 2)
		set newZ to fmwHeight + newY
	else if win is "ReadKit" or win is "Pocket" or win is "Wunderlist" or win is "iBooks" or win is "Reeder" or win is "Spotify" or win is "Tumblr" or win is "Todoist" then
		set newY to (desktopHeight - fmwHeight) / 3
		set newZ to fmwHeight + newY
	else if win is "Finder" then
		set newY to (desktopHeight - fmwHeight + 50) / 3
		set newZ to fmwHeight + newY
	else
		if fmwHeight ³ (desktopHeight - getDockDimensions() - 22) then
			set newY to 0
			set newZ to desktopHeight - getDockDimensions()
		else
			set newY to (desktopHeight - fmwHeight) / 3
			set newZ to newY + fmwHeight
		end if
	end if
	
	set newBounds to {newX, newY, newX + fmwWidth, newZ}
	
	return newBounds
end getBounds

-- set the new position of window
on setBounds(newBounds, win)
	if win is "firefox-bin" or win is "Pocket" then
		delay 0.1
		tell application "System Events" to tell application process win to tell window 1 to set position to newBounds
	else if win is "Dictionary" or win is "Game Center" or win is "ReadKit" or win is "Pages" or win is "Wunderlist" or win is "Reeder" or win is "Spotify" or win is "iBooks" or win is "Tumblr" or win is "Todoist" then
		tell application "System Events" to set position of first window of application process win to newBounds
	else if win is "Microsoft Word" then
		tell application "Microsoft Word" to set bounds of active window to newBounds
	else
		tell application named win to set bounds of first window to newBounds
	end if
end setBounds

-- get dock dimensions
on getDockDimensions()
	tell application "System Events" to tell process "Dock"
		set dockDimensions to size in list 1
		set dockheight to item 2 of dockDimensions
	end tell
	
	return dockheight
end getDockDimensions