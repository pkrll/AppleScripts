----------------------------------------
-- Script: Terminal Open
----------------------------------------
-- Does: Opens the Terminal
--
-- Author: Ardalan Samimi
-- Version: 1.1

on run
  tell application "System Events" to set appName to name of first process whose frontmost is true and visible ≠ false

  if appName is "Terminal" then
    tell application "Terminal"
      activate
      tell application "System Events" to keystroke "n" using command down
    end tell
  else
    tell application "Terminal" to activate
  end if

end run
