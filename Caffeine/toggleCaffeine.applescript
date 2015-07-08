-- Toggle status of Caffeine
on run {}
	tell application "Caffeine"
		activate
		if active then
			turn off
		else
			turn on
		end if
	end tell
end run
