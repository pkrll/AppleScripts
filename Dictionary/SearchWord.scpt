global oldClipboard

on run {}
	my saveClipboard()
	
	tell application "System Events"
		tell (the first process whose frontmost is true)
			keystroke "c" using {command down}
		end tell
	end tell
	
	delay 0.1
	
	set selText to my getClipboard()
	
	tell application "Finder" to open location "dict:///" & selText
	
	my resetClipboard()
end run

on saveClipboard()
	set oldClipboard to (the clipboard) as text
end saveClipboard

on getClipboard()
	return (the clipboard) as text
end getClipboard

on resetClipboard()
	set the clipboard to oldClipboard
end resetClipboard