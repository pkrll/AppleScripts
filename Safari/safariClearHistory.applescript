-- Clear the Safari history
on run
	tell application "System Events"
		tell process "Safari"
			click menu item "Clear History and Website Data…" of menu 1 of menu bar item "History" of menu bar 1
		end tell
	end tell
end run