-- SendURLtoOF.applescript
-- SendURLtoOF

-- Created by Seth Landsman seth@homeforderangedscientists.net
-- Copyright (c) Home For Deranged Scientists 2011. All rights reserved.

script SendURLtoOF
	property parent : class "AMBundleAction"
	
	on runWithInput_fromAction_error_(input, anAction, errorRef)
		-- Add your code here, returning the data to be passed to the next action.
		
		set u to ""
		set t to ""
		
		tell application "Google Chrome"
			set theURL to URL of active tab of first window as string
			set theTitle to title of active tab of first window as string
		end tell
		
		tell application "OmniFocus"
			set theTask to "Read: " & theTitle
			
			set theDocument to first document
			
			tell theDocument
				make new inbox task with properties {name:theTask, note:theURL}
			end tell
		end tell
		
		return input
	end runWithInput_fromAction_error_
	
end script
