--Defines the array/list of accounts to check
set accountList to {"Work"}
--don't show dialog by default
set showDialog to false

if application "Mail" is running then
	tell application "Mail"
		
		--Loops over the array
		repeat with currentAccount in accountList
			
			set isAccountEnabled to get enabled of account currentAccount
			--checks if outside of work hours and disables if so	
			if isAccountEnabled is true then
				set showDialog to true
				set enabled of account currentAccount to false
			end if
			
		end repeat
		
	end tell
end if

if showDialog is true then
	set text item delimiters to ", "
	display dialog "Disabled mail accounts: " & (accountList) & "."
end if