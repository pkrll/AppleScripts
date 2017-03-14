----------------------------------------
-- Script: Terminal New Tab
----------------------------------------
-- Does: Opens a new tab
--
-- Author: Ardalan Samimi
-- Version: 1.0
--
-- Dependencies:
--  * System script "main.scpt" from https://github.com/pkrll/AppleScripts

set System to load script (POSIX path of ((path to scripts folder as text) & "main.scpt"))

if System's checkIfRunning("Terminal") then
  tell application "Terminal" to activate
  tell application "System Events" to keystroke "t" using command down
end if
