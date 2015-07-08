----------------------------------------
-- Script: Resize windows
----------------------------------------
-- Does: Resize the active window to the
-- defined dimensions, depending on the
-- app category. This script is depended
-- on CenterWindow.applescript.
--
-- Author: Ardalan Samimi
-- Version: 1.1
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
	set standardSizeMedium to {height:550, width:890}
	set standardSizeLarge to {height:600, width:1022}
	set standardSizeXLarge to {height:723, width:1022}
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
            set preferedWidth to width of standardSizeMedium
            set preferedHeight to height of standardSizeMedium
        else if listOfLargeApps contains appName then
            set preferedWidth to width of standardSizeLarge
            set preferedHeight to height of standardSizeLarge
        else if listOfXLargeApps contains appName then
            set preferedWidth to width of standardSizeXLarge
            set preferedHeight to height of standardSizeXLarge
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
