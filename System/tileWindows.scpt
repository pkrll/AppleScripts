-- Not my code
--tile windows of frontmost applications in a grid
--this script is useful for
--multiple window chatting
--working side by side of several windows of the same app

--make need to make it as a stay open application later
--for now assume that it is opened and closed per invokation

property horizontalSpacing : 5 -- sets the horizontal spacing between windows
property verticalSpacing : 5 -- sets the vertical spacing between windows
property maxRows : 2
property maxCols : 2

on run {}
	local a
	set userscreen to my getUserScreen()
	
	--display dialog (getFrntApp() as string)
	try
		set applist to getFrntApp()
		if length of applist = 0 then
			return
		end if
		set a to item 1 of getFrntApp()
	on error the error_message number the error_number
		display dialog "Error: " & the error_number & ". " & the error_message buttons {"OK"} default button 1
	end try
	
	try
		tileScriptable(a, userscreen)
	on error the error_message number the error_number
		--display dialog "Error: " & the error_number & ". " & the error_message buttons {"OK"} default button 1
		try
			tileUnscriptable(a, userscreen)
		on error the error_message number the error_number
			display dialog "Error: " & the error_number & ". " & the error_message buttons {"OK"} default button 1
		end try
	end try
	
end run

on tileScriptable(a, screen)
	local i, c
	set i to 1
	tell application named a
		set theWindows to every window of application a whose visible is true and floating is false and �
			modal is false -- and miniaturized is false
		set c to count theWindows
		if c = 0 then
			return
		end if
		set tiles to calTileBounds(c, screen, 1)
		repeat with theWindow in theWindows
			my tileScriptableWindow(a, theWindow, item i of tiles)
			set i to i + 1
		end repeat
	end tell
end tileScriptable

on tileUnscriptable(a, screeninfo)
	-- unscriptable app
	local i, c
	set i to 1
	tell application "System Events"
		set theWindows to (every window of application process a)
		--set theWindows to my filterUnscriptableInvisible(theWindows)
		
		set c to count theWindows
		
		if c = 0 then
			return
		end if
		
		--display dialog screeninfo as string giving up after 5
		set tiles to my calTileBounds(c, screeninfo, 1)
		repeat with theWindow in theWindows
			--display dialog (class of visible of theWindow)
			my tileUnScriptableWindow(a, theWindow, item i of tiles)
			set i to i + 1
		end repeat
		
	end tell
end tileUnscriptable

on filterUnscriptableInvisible(ws)
	-- filter out from ws windows that are docked 
	set newws to {}
	set docklist to getNamesDocked()
	--display dialog (docklist as string)
	repeat with theWindow in ws
		if name of theWindow is not in docklist then
			set end of newws to theWindow
		end if
	end repeat
	
	--display dialog (count newws)
	return newws
end filterUnscriptableInvisible

on getNamesDocked()
	tell application "System Events" to tell process "Dock"'s list 1
		set l to name of UI elements whose subrole is "AXMinimizedWindowDockItem"
	end tell
	
	return l
end getNamesDocked

on tileScriptableWindow(a, w, bound)
	tell application a
		set bounds of w to bound
	end tell
end tileScriptableWindow

on tileUnScriptableWindow(a, w, bound)
	tell application "System Events"
		--display dialog (count position of w)
		set AppleScript's text item delimiters to " "
		
		set position of w to {(item 1 of bound), (item 2 of bound)}
		
		-- why the -5?
		set size of w to {(item 3 of bound) - (item 1 of bound) - 5, �
			(item 4 of bound) - (item 2 of bound) - 5}
		--display dialog (count properties of w)
	end tell
end tileUnScriptableWindow

on calTileBounds(nWindows, screen, direction)
	-- return a list of lists of window bounds
	-- a simple tile algo that tiles along direction (current only 1=horizontal)
	
	local nRows, nColumns, irow, icolumn, nSpacingWidth, nSpacingHeight, nWindowWidth, nWindowHeight
	set {x0, y0, availScreenWidth, availScreenHeight} to screen
	set ret to {}
	
	set nRows to (nWindows div maxCols)
	if (nWindows mod maxCols) � 0 then
		set nRows to nRows + 1
	end if
	
	if nRows < maxRows then
		set nSpacingHeight to (nRows - 1) * verticalSpacing
		set nWindowHeight to (availScreenHeight - nSpacingHeight) / nRows
	else
		set nSpacingHeight to (maxRows - 1) * verticalSpacing
		set nWindowHeight to (availScreenHeight - nSpacingHeight) / maxRows
	end if
	
	repeat with irow from 0 to nRows - 1
		if nRows � maxRows and irow = nRows - 1 then
			set nColumns to nWindows - irow * maxCols
		else
			set nColumns to maxCols
		end if
		set nSpacingWidth to (nColumns - 1) * horizontalSpacing
		set nWindowWidth to (availScreenWidth - nSpacingWidth) / nColumns
		set nTop to y0 + (irow mod maxRows) * (verticalSpacing + nWindowHeight)
		--display dialog "Top: " & nTop buttons {"OK"} default button 1
		repeat with icolumn from 0 to nColumns - 1
			set nLeft to x0 + (icolumn) * (horizontalSpacing + nWindowWidth)
			set itile to {�
				nLeft, �
				nTop, �
				nLeft + nWindowWidth, �
				nTop + nWindowHeight}
			set end of ret to itile
			--display dialog item 3 of itile as string
			--set itile to {x0 + (icolumn - 1) * wgrid, y0, wgrid, hgrid}
			--set item 3 of itile to ((item 1 of itile) + (item 3 of itile))
			--set item 4 of itile to ((item 2 of itile) + (item 4 of itile))
		end repeat
	end repeat
	
	return ret
end calTileBounds



on getFrntApp()
	tell application "System Events" to set frntProc to �
		name of every process whose frontmost is true and visible � false
	return frntProc
end getFrntApp

on getUserScreen()
	-- size of the menubar
	tell application "System Events"
		set {menuBarWidth, menuBarHeight} to size of UI element 1 of application process "SystemUIServer"
		--display dialog "Menubar width: " & menubarWidth & ", height: " & menubarHeight
		set dockApp to (application process "Dock")
		set {dockWidth, dockheight} to size of UI element 1 of dockApp
		--display dialog "Dock width: " & dockWidth & ", height: " & dockHeight
		set dockPos to position of UI element 1 of dockApp
		--display dialog "Dock x: " & (item 1 of dockPos) & ", y: " & (item 2 of dockPos)
	end tell
	
	-- size of the full screen
	(*
{word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Width") as number, �
word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Height") as number}
*)
	tell application "Finder"
		set screenSize to bounds of window of desktop
		set screenWidth to item 3 of screenSize
		set screenHeight to item 4 of screenSize
	end tell
	--display dialog "Screen width: " & screenWidth & ", height: " & screenHeight
	
	-- by default, set the available screen size to the full screen size
	set availableWidth to screenWidth
	set availableHeight to screenHeight - menuBarHeight
	set availableX to 0
	set availableY to menuBarHeight
	
	--determine the userscreen origin and size
	
	-- case 0: hidden dock
	-- if (item 1 of dockPos < 0 or item 1 of dockPos � screenHeight) then
	-- no need to change anything
	-- end if
	
	-- case 1: bottom dock
	if ((item 2 of dockPos) + dockheight = screenHeight) then
		set availableHeight to availableHeight - dockheight
	end if
	
	-- case 2: left dock
	if (item 1 of dockPos = 0) then
		set availableWidth to availableWidth - dockWidth
		set availableX to dockWidth
	end if
	
	-- case 3: right dock
	if ((item 1 of dockPos) + dockWidth = screenWidth) then
		set availableWidth to availableWidth - dockWidth
	end if
	
	return {availableX, availableY, availableWidth, availableHeight}
end getUserScreen