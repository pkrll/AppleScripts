-- Twitter with NetNewsWire
on run {}
	set headlineTitle to false
	set headlineURL to false
	try
		tell application "NetNewsWire"
			set headlineTitle to title of selectedHeadline
			set headlineURL to URL of selectedHeadline
		end tell
		
		if headlineTitle is not equal to false or headlineURL is not equal to false then
			my checkEchofon()
			
			tell application "System Events"
				tell process "Echofon"
					set value of text area 1 of scroll area 1 of window "Echofon" to headlineTitle & ": " & my shortenURL(headlineURL)
				end tell
			end tell
		end if
	end try
end run

on checkEchofon()
	if isApp("Echofon") then
		tell application "System Events"
			tell application "Echofon" to activate
			tell process "Echofon"
				click menu item "Show Main Window" of menu 1 of menu bar item "Window" of menu bar 1
			end tell
		end tell
	else
		tell application "Echofon" to activate
	end if
end checkEchofon

-- shorten the url
on shortenURL(headlineURL)
	set service to "http://bit.ly/api?url="
	
	if ((characters 1 through 4 of headlineURL) as string is not "http") then
		set headlineURL to "http://" & headlineURL
	end if
	
	set cmd to "curl --stderr /dev/null \"" & service & headlineURL & "\""
	
	return (do shell script cmd)
end shortenURL

-- check if app is on
on isApp(appName)
	tell application "System Events" to set apps to (((application processes whose (name is equal to appName)) count))
	
	if apps is greater than 0 then
		return true
	else
		return false
	end if
end isApp