set disabledWorkAccounts to false

tell application "Mail"
	--Defines the current time
	set theHour to get the (hours of (current date))
	--Defines the array/list of accounts to check
	set accountList to {"Work"}
	
	--Loops over the array
	repeat with currentAccount in accountList
		
		--checks if earlier than 9 or later than 5 and disables if so
		set accountEnabled to get enabled of account currentAccount
		if theHour < 10 or theHour > 17 then
			set disabledWorkAccounts to true
			if accountEnabled is true then
				set enabled of account currentAccount to false
			end if
			--if between 9 and 5 and the account is disabled it enables it
		else if accountEnabled is false then
			set enabled of account currentAccount to true
		end if
	end repeat
	
end tell

if disabledWorkAccounts is true then
	set text item delimiters to ", "
	display dialog "Disabled mail accounts: " & (accountList) & "."
end if