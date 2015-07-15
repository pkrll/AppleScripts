----------------------------------------
-- Script: Resize windows
----------------------------------------
-- Does: Resize the active window to the
-- defined dimensions, depending on the
-- app category. This script is depended
-- on CenterWindow.applescript.
--
-- Author: Ardalan Samimi
-- Version: 1.2
--
-- Define the global variables
global listOfApprovedApps, listOfSpecialApps, listOfMediumApps, listOfLargeApps, listOfXLargeApps, standardSizeXLarge, standardSizeLarge, standardSizeMedium, finderSidebarSize, scriptName
-- Applications that are to be resized
-- by the script must be added to the
-- array listOfApprovedApps below. But
-- they must also be placed in one of
-- the app category arrays (i.e. large,
-- XLarge or medium lists)
on setUpGlobals()
    -- Apps that this script is allowed
    -- to manipulate are added below
    set listOfApprovedApps to {"Google Chrome", "Atom", "Reeder", "Safari", "firefox", "Pocket", "Spotify", "iBooks", "Finder", "Script Editor", "App Store", "EchofonLite", "Todoist"}
    -- The app categories, defines the
    -- dimensions the apps should be
    -- resized to.
    set listOfMediumApps to {"Finder", "Script Editor"}
	set listOfLargeApps to {"Spotify", "iBooks", "App Store"}
	set listOfXLargeApps to {"Google Chrome", "Atom", "Reeder", "Safari", "firefox", "Pocket", "Todoist"}
    -- The sise standards
	set standardSizeMedium to {height:0.60, width:0.60}
	set standardSizeLarge to {height:0.75, width:0.75}
	set standardSizeXLarge to {height:0.80, width:0.85}
    -- Set the size of Finders sidebar
    set finderSidebarSize to 205
    -- Set the name of the center script
    set scriptName to "CenterWindow.applescript"
end setUpGlobals
-- Resizes the app windows
on resizeWindow(appName)
    -- Check if it is an approved app
    if shouldResizeApp(appName) then
        -- Set the prefered size of the
        -- depending on its category.
        if listOfMediumApps contains appName then
            -- Check for relative sizes < 1 is recalculated to percentage
            if width of standardSizeMedium is less than or equal to 1 then
                set preferedWidth to (width of getDesktopBounds()) * (width of standardSizeMedium)
            else
            -- Otherwise, treat it as an absolute size
                set preferedWidth to width of standardSizeMedium
            end if

            if height of standardSizeMedium is less than or equal to 1 then
                set preferedHeight to (height of getDesktopBounds()) * (height of standardSizeMedium)
            else
                set preferedHeight to height of standardSizeMedium
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
        end if
    else
        -- Quit the script
        error number -128
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
			display alert ¬
				"Resize Window" message "App " & appName & ¬
				" is not supported." as warning
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
	return {width: desktopWidth, height: desktopHeight}
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
-- Check if the app is approved
on shouldResizeApp(appName)
    if listOfApprovedApps contains appName then
		return true
	else
		return false
	end if
end shouldResizeApp
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
