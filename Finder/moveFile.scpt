global defaultLocation, selectedFiles, destination
on run {}
	set defaultLocation to alias "Macintosh HD:Users:ardalansamimi" -- Set the default location for the choose folder promt
	set selectedFiles to (get selection of application "Finder") -- get selected files
	
	if (count of selectedFiles) is greater than 0 then
		try -- set the destination folder
			set destination to choose folder default location defaultLocation
			my moveFile(false)
		on error
			-- do nothing
		end try
	end if
end run

on moveFile(replaceBool)
	tell application "Finder"
		try -- move the files
			move selectedFiles to destination replacing replaceBool
			my growlAlert("Items moved!", "The items has been moved successfully")
		on error errStr number errorNumber
			if errorNumber is equal to -15267 then -- if file with same name exists, ask if it should replace it
				set selectedFiles to (get selection of application "Finder") -- get selected files
				
				repeat with currentFile in selectedFiles
					set replacement to display dialog "An item with name \"" & (name of currentFile) & "\" already exists in this location. Do you want to replace it with the newer one you're moving?" buttons {"Stop", "Replace"} default button "Stop" with title "Copy" with icon 2
					
					if button returned of replacement is "Replace" then
						set selectedFiles to currentFile
						my moveFile(true) -- replace file
					end if
				end repeat
				
			end if
		end try
	end tell
end moveFile

-- the growl alert
on growlAlert(growlTitle, growlDesc)
	tell application "GrowlHelperApp"
		set allNot to {"moveFileGrowl"}
		register as application Â
			"moveFileGrowl" all notifications allNot Â
			default notifications allNot
		
		notify with name Â
			"moveFileGrowl" title Â
			growlTitle description Â
			growlDesc application name Â
			"moveFileGrowl" icon of application Â
			"Finder"
	end tell
end growlAlert
