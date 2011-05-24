on run {}
	if isApp("Safari") then
		if isActive("Safari") then
			
			try -- get contents from clipboard, for restoration later
				set oldClipboardContents to (the clipboard) as text
			on error
				set oldClipboardContents to ""
			end try
			
			-- copy contents from Safaris location bar
			tell application "System Events"
				tell application process "Safari"
					click menu item 9 of menu 1 of menu bar item 4 of menu bar 1
					click menu item 5 of menu 1 of menu bar item 4 of menu bar 1
					activate
				end tell
			end tell
			
			tell application "Safari" to activate
			delay 0.1
			
			set clipboardContents to (the clipboard) as text -- copy contents from clipboard
			set searchString to splitText(" ", clipboardContents) -- split searchstring
			set service to item 1 of searchString -- get service
			set arguments to getArguments(searchString) -- sort out arguments
			set serviceURL to false
			
			if service is "wiki" then
				set serviceURL to "http://en.wikipedia.org/wiki/"
			else if service is "imdb" then
				set serviceURL to "http://www.imdb.com/find?q="
			else if service is "google" then
				set serviceURL to "http://www.google.se/search?q="
			else if service is "images" then
				set serviceURL to "http://images.google.se/images?q="
			else if service is "swiki" then
				set serviceURL to "http://sv.wikipedia.org/wiki/"
			else if service is "twitter" then
				set serviceURL to "http://twitter.com/#search?q="
			else if service is "php" then
				set serviceURL to "http://se2.php.net/manual-lookup.php?pattern="
			else if service is "tv.com" then
				set serviceURL to "http://www.tv.com/search.php?type=11&stype=all&tag=search%3Bfrontdoor&qs="
			end if
			
			-- run URL
			if serviceURL is not false then
				tell application "Safari"
					set URL of document 1 to serviceURL & arguments
				end tell
			end if
			
			try -- restore clipboard
				tell application "Finder" to set the clipboard to oldClipboardContents
			end try
		end if
	end if
end run

-- Get arguments from search string
on getArguments(searchString)
	set arguments to items 2 thru -1 of searchString
	set output to ""
	
	repeat with tmp in arguments
		if output is "" then
			set output to tmp
		else
			set output to output & " " & tmp
		end if
	end repeat
	
	return output
end getArguments

-- split text
on splitText(delimiter, someText)
	set prevTIDs to AppleScript's text item delimiters
	set AppleScript's text item delimiters to delimiter
	set output to text items of someText
	set AppleScript's text item delimiters to prevTIDs
	
	return output
end splitText

-- check if app is on
on isApp(appName)
	tell application "System Events" to set apps to (((application processes whose (name is equal to appName)) count))
	
	if apps is greater than 0 then
		return true
	else
		return false
	end if
end isApp

-- check if app is active
on isActive(appName)
	tell application "System Events" to set activeApplication to name of first application process whose frontmost is true and visible ­ false
	
	if activeApplication is appName then
		return true
	else
		return false
	end if
end isActive