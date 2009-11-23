-- Mail a page from Safari
-- Sets the subject of the new message to the title of the page,
-- with the url ready to go in the body.
-- Any selected text will also be copied to the new message.

on run
	tell application "System Events" to set appName to name of first process whose frontmost is true and visible ≠ false
	getURL(appName)
end run

on getURL(appName)
	if appName is "Safari" then
		tell application "Safari"
			set selTxt to (do JavaScript "(getSelection())" in document 1)
			set docURL to (get URL of document 1)
			set docTit to (get name of document 1)
		end tell
		newMail(docURL, docTit, selTxt)
	else if appName is "firefox-bin" then
		tell application "Firefox"
			activate -- activate ff
			delay 0.2
			tell application "System Events"
				keystroke "c" using {command down} -- run copy-command
				activate
			end tell
			
			set selTxt to (the clipboard) as text -- get data from clibpoard
			activate -- activate ff again
			
			tell application "System Events"
				keystroke "l" using {command down} -- select urlbar
				keystroke "c" using {command down} -- run copy-command
				activate
			end tell
			
			set docURL to (the clipboard) as text
			set docTit to name of front window
		end tell
		newMail(docURL, docTit, selTxt)
		return
	end if
end getURL

on newMail(docURL, docTitle, selText)
	if selText is not "" then
		set mailContent to selText & "

" & docURL as text
	else
		set mailContent to docURL as text
	end if
	
	tell application "Mail"
		--set x to email addresses of accounts
		set mailSignature to signature 1
		set newMail to make new outgoing message with properties {visible:true, content:mailContent, subject:docTitle}
		tell newMail
			set message signature to mailSignature
		end tell
		activate
	end tell
end newMail