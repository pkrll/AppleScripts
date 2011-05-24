on run {}
	set user to "pockarelli"
	tell application "System Events"
		set spotify to count (every process whose name is "Spotify")
	end tell
	
	if (spotify > 0) then
		set info to paragraph 14 of (do shell script "curl \"http://ws.audioscrobbler.com/1.0/user/" & user & "/recenttracks.rss\"")
		set info to remove_markup(info)
		--trim white spaces
		set info to (characters 10 through (number of characters in info) in info) as string
		set info to split(info, "�")
		set item 1 of info to characters 1 through -2 of item 1 of info as string
		set item 2 of info to characters 2 through -1 of item 2 of info as string
		
		set songInfo to item 1 of info & " - " & item 2 of info
	else
		tell application "iTunes"
			set trackName to name of current track
			set trackArtist to artist of current track
		end tell
		
		set songInfo to trackArtist & " - " & trackName
	end if
	
	tell application "System Events"
		tell process "Echofon"
			tell application "Echofon" to activate
			click menu item "Show Main Window" of menu 1 of menu bar item "Window" of menu bar 1
			set value of text area 1 of scroll area 1 of window "Echofon" to "Who's listening to what: @pkrll is listening to " & songInfo
		end tell
	end tell
end run

to split(someText, delimiter)
	set AppleScript's text item delimiters to delimiter
	set someText to someText's text items
	set AppleScript's text item delimiters to {""}
	return someText
end split

on remove_markup(this_text)
	set copy_flag to true
	set the clean_text to ""
	repeat with this_char in this_text
		set this_char to the contents of this_char
		if this_char is "<" then
			set the copy_flag to false
		else if this_char is ">" then
			set the copy_flag to true
		else if the copy_flag is true then
			set the clean_text to the clean_text & this_char as string
		end if
	end repeat
	return the clean_text
end remove_markup

on replace_chars(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars
