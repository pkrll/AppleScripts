-- run script as command
	-- arch -i386 osascript /path/to/script n 
	-- where n is equal to the tab number

on run argv
	tell front window of application "Safari" to set current tab to tab (item 1 of argv as integer)
end run