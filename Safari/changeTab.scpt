on run argv
	tell front window of application "Safari" to set current tab to tab (item 1 of argv as integer)
end run