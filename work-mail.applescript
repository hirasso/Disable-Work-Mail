set showDialog to false

set workStartTime to 10
set workEndTime to 17

if application "Mail" is running then
	tell application "Mail"
		--Defines the current time
		set theHour to get the (hours of (current date))
		--Defines the array/list of accounts to check
		set accountList to {"Work"}
		
		--Loops over the array
		repeat with currentAccount in accountList
			
			set isAccountEnabled to get enabled of account currentAccount
			--checks if outside of work hours and disables if so
			if theHour < workStartTime or theHour > workEndTime then
				
				if isAccountEnabled is true then
					set showDialog to true
					set enabled of account currentAccount to false
				end if
				--if between 9 and 5 and the account is disabled it enables it
			else if isAccountEnabled is false then
				set enabled of account currentAccount to true
			end if
		end repeat
		
	end tell
end if

if showDialog is true then
	set text item delimiters to ", "
	display dialog "Disabled mail accounts: " & (accountList) & "."
end if