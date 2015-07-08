# RESIZE WINDOW APPLESCRIPT
#
# Does: Resizes the active window to the defined dimensions,
# depending on the app class. And then center them.
#
# Created by: Ardalan Samimi
# Version: 1.0
#
# Global variables
global listOfApprovedApps, listOfSpecialApps, listOfMediumApps, listOfLargeApps, listOfXLargeApps, standardSizeXLarge, standardSizeLarge, standardSizeMedium
# Applications that are to be maniuplated by the script
# must be added to the listofApprovedApps array below.
# They must also be in one of the size defined arrays.
on setUpGlobalVariables()
	# Apps that this script should manipulate
	set listOfApprovedApps to {"Google Chrome", "Atom", "Reeder", "Safari", "firefox", "Pocket", "Spotify", "iBooks", "Finder", "Script Editor", "App Store", "EchofonLite", "Todoist"}
	# Special apps don't abide by the normal 
	# rules of setting the window bounds
	set listOfSpecialApps to {"Reeder", "firefox", "Pocket", "Spotify", "iBooks", "iBooks", "App Store", "Todoist"}
	# List of apps and their dimensions
	set listOfMediumApps to {"Finder", "Script Editor"}
	set listOfLargeApps to {"Spotify", "iBooks", "App Store"}
	set listOfXLargeApps to {"Google Chrome", "Atom", "Reeder", "Safari", "firefox", "Pocket", "Todoist"}
	set standardSizeMedium to {height:550, width:890}
	set standardSizeLarge to {height:600, width:1022}
	set standardSizeXLarge to {height:723, width:1022}
end setUpGlobalVariables

on run
	tell application "System Events" to set appName to name of first process whose frontmost is true and visible ­ false
	resizeWindow(appName)
	# Comment the following out if you do not want it to center
	# CENTER WINDOW START
	tell application "Finder"
		set runFolder to (container of (path to me as alias))
		set runScript to POSIX path of ((runFolder as text) & "CenterWindow.applescript")
	end tell
	
	run script (runScript as POSIX file)
	# CENTER WINDOW END	
end run

on resizeWindow(appName)
	setUpGlobalVariables()
	
	if shouldResizeApp(appName) then
		if appName is "EchofonLite" then #special case
			tell application "System Events" to tell application process "EchofonLite" to set size of first window to {360, 605}
			tell application "System Events" to tell application process "EchofonLite" to set position of first window to {1075, 98}
			error number -128
		else if listOfLargeApps contains appName then
			set preferedWindowWidth to width of standardSizeLarge
			set preferedWindowHeight to height of standardSizeLarge
		else if listOfXLargeApps contains appName then
			set preferedWindowWidth to width of standardSizeXLarge
			set preferedWindowHeight to height of standardSizeXLarge
		else if listOfMediumApps contains appName then
			set preferedWindowWidth to width of standardSizeMedium
			set preferedWindowHeight to height of standardSizeMedium
		end if
	else
		error number -128
	end if
	
	if listOfSpecialApps contains appName then
		set windowBounds to {preferedWindowWidth, preferedWindowHeight}
		delay 0.2
		tell application "System Events" to tell application process appName to tell window 1 to set size to windowBounds
	else
		tell application appName to set winBounds to (get bounds of first window)
		set x to (item 1 of winBounds)
		set Y to (item 2 of winBounds)
		set W to (item 1 of winBounds) + preferedWindowWidth
		set H to (item 2 of winBounds) + preferedWindowHeight
		
		tell application named appName to set bounds of first window to {x, Y, W, H}
		
		if appName is "Finder" then
			tell application "Finder" to set sidebar width of first window to 205
		end if
	end if
	
end resizeWindow

on shouldResizeApp(appName)
	if listOfApprovedApps contains appName then
		return true
	else
		return false
	end if
end shouldResizeApp