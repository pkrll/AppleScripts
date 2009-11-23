-- Lookup the selected word in dictionary

global oldClipboard

on run {}
	--my saveOldClipboard()
	
	tell application "System Events"
		tell (the first process whose frontmost is true)
			keystroke "c" using {command down}
		end tell
	end tell
	delay 1
	set selText to (the clipboard) as text
	
	tell application "Finder" to open location "dict:///" & selText
	
	--my resetOldClipboard()
end run

on resetOldClipboard()
	set the clipboard to oldClipboard
end resetOldClipboard

on getClipboard()
	return (the clipboard) as text
end getClipboard

on saveOldClipboard()
	set oldClipboard to (the clipboard) as text
end saveOldClipboard