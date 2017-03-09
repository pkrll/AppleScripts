----------------------------------------
-- Script: Resize windows
----------------------------------------
-- Does: Resize the active window to the
-- defined dimensions, depending on the
-- app category. This script is depended
-- on CenterWindow.applescript.
--
-- Author: Ardalan Samimi
-- Version: 2.1.0
--
-- Define the global variables
global listOfSmallApps, listOfLargeApps, listOfXLargeApps, standardSizeXLarge, standardSizeLarge, standardSizeSmall, finderSidebarSize, scriptName, plistFile
-- Applications that are to be resized by
-- the script will be loaded and saved to
-- a property list. These will be loaded
-- on script run.
on setUpGlobals()
	-- The sise standards
	set standardSizeSmall to {height:0.6, width:0.6}
	set standardSizeLarge to {height:0.75, width:0.75}
	set standardSizeXLarge to {height:0.8, width:0.85}
	set finderSidebarSize to 205
	-- The center window script
	set scriptName to "CenterWindow.applescript"
	set plistFile to (path to preferences folder from user domain)'s POSIX path & "com.saturnfive.resizewindow.plist"
	loadPlistFile()
end setUpGlobals
-- Resizes the app windows
-- Parameters
-- appName: Name of application to resize
on resizeWindow(appName)
	-- If the app is not added to the propert list,
	-- then the script needs to set the app settings.
	if appName is not in listOfSmallApps and appName is not in listOfLargeApps and appName is not in listOfXLargeApps then
		setNewAppSettings(appName)
	end if
	-- Sets the prefered size of the depending on its category.
	if listOfSmallApps contains appName then
		-- Check for relative sizes < 1 is recalculated to percentage
		if width of standardSizeSmall is less than or equal to 1 then
			set preferedWidth to (width of getDesktopBounds()) * (width of standardSizeSmall)
		else
			-- Otherwise, treat it as an absolute size
			set preferedWidth to width of standardSizeSmall
		end if

		if height of standardSizeSmall is less than or equal to 1 then
			set preferedHeight to (height of getDesktopBounds()) * (height of standardSizeSmall)
		else
			set preferedHeight to height of standardSizeSmall
		end if
	else if listOfLargeApps contains appName then
		if width of standardSizeLarge is less than or equal to 1 then
			set preferedWidth to (width of getDesktopBounds()) * (width of standardSizeLarge)
		else
			set preferedWidth to width of standardSizeLarge
		end if

		if height of standardSizeLarge is less than or equal to 1 then
			set preferedHeight to (height of getDesktopBounds()) * (height of standardSizeLarge)
		else
			set preferedHeight to height of standardSizeLarge
		end if
	else if listOfXLargeApps contains appName then
		if width of standardSizeXLarge is less than or equal to 1 then
			set preferedWidth to (width of getDesktopBounds()) * (width of standardSizeXLarge)
		else
			set preferedWidth to width of standardSizeXLarge
		end if

		if height of standardSizeXLarge is less than or equal to 1 then
			set preferedHeight to (height of getDesktopBounds()) * (height of standardSizeXLarge)
		else
			set preferedHeight to height of standardSizeXLarge
		end if
	else
		if width of standardSizeSmall is less than or equal to 1 then
			set preferedWidth to (width of getDesktopBounds()) * (width of standardSizeSmall)
		else
			-- Otherwise, treat it as an absolute size
			set preferedWidth to width of standardSizeSmall
		end if
	end if
	-- Set the size
	try
		tell application appName to set appBounds to (get bounds of first window)
		set appX to (item 1 of appBounds)
		set appY to (item 2 of appBounds)
		set appW to (item 1 of appBounds) + preferedWidth
		set appH to (item 2 of appBounds) + preferedHeight
		set newBounds to {appX, appY, appW, appH}
		tell application appName to set bounds of first window to newBounds
	on error
		-- If the app does not want
		-- to set its own bounds.
		try
			set newBounds to {preferedWidth, preferedHeight}
			delay 0.2 -- Catch your breath, man.
			tell application "System Events" to tell application process appName to tell window 1 to set size to newBounds
		on error
			-- error handling
			-- If it still does not happen,
			-- then quit the script.
			display alert "Resize Window" message "App " & appName & " is not supported." as warning
			error number -128
		end try
	end try
	-- If the app is Finder, then
	-- set its sidebar width too.
	if appName is "Finder" then
		tell application "Finder" to set sidebar width of first window to finderSidebarSize
	end if
end resizeWindow
-- Get the bounds of the desktop
on getDesktopBounds()
	tell application "Finder" to set desktopBounds to bounds of window of desktop
	set desktopWidth to (item 3 of desktopBounds) - (item 1 of desktopBounds)
	set desktopHeight to (item 4 of desktopBounds) - (item 2 of desktopBounds)
	-- Return as list
	return {width:desktopWidth, height:desktopHeight}
end getDesktopBounds
-- Center the window
on centerWindow()
	tell application "Finder"
		set scriptFolder to (container of (path to me as alias))
		set centerScript to POSIX path of ((scriptFolder as text) & scriptName)
	end tell
	-- Run the script
	run script (centerScript as POSIX file)
end centerWindow
-- Save a new app to the plist file
on setNewAppSettings(appName)
	set optionList to {"Small", "Large", "XLarge"}
	set selectedSize to choose from list optionList with prompt "Choose what size " & appName & " should be set to"

	if selectedSize is false then
		error number -128
	else
		if first item of selectedSize = "Small" then
			set end of listOfSmallApps to appName
		else if first item of selectedSize = "Large" then
			set end of listOfLargeApps to appName
		else if first item of selectedSize = "XLarge" then
			set end of listOfXLargeApps to appName
		end if
	end if

	set appSize to first item of selectedSize
	saveToPlistFile(appName, appSize)
end setNewAppSettings
-- Save item to the property list
on saveToPlistFile(appName, appSize)
	tell application "System Events"
		tell property list file plistFile
			tell property list item appSize
				make new property list item at end with properties {kind:string, name:"appName", value:appName}
			end tell
		end tell
	end tell
end saveToPlistFile
-- Load a property list file
on loadPlistFile()
	if doesFileExist() then
		tell application "System Events"
			tell property list file plistFile
				set content to value of contents
				set listOfSmallApps to Small of content
				set listOfLargeApps to Large of content
				set listOfXLargeApps to XLarge of content
			end tell
		end tell
	else
		set listOfSmallApps to {}
		set listOfLargeApps to {}
		set listOfXLargeApps to {}
		createPlistFile()
	end if
end loadPlistFile
-- Create the property list file
on createPlistFile()
	tell application "System Events"
		tell (make new property list file with properties {name:plistFile})
			make new property list item with properties {kind:list, name:"Small"}
			make new property list item with properties {kind:list, name:"Large"}
			make new property list item with properties {kind:list, name:"XLarge"}
		end tell
	end tell
end createPlistFile
-- Check if file exists
on doesFileExist()
	tell application "System Events" to set isFileThere to exists of alias plistFile
	return isFileThere
end doesFileExist
-- Run method
on run
	-- Set up the globals
	setUpGlobals()
	-- Get the name of the
	-- front most app
	tell application "System Events" to set appName to name of first process whose frontmost is true and visible ≠ false
	-- Go resize
	resizeWindow(appName)
	-- Center the window
	centerWindow()
end run
