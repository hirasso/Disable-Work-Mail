--Defines the array/list of accounts to check
set accountList to {"Work"}

--Check if it's nighttime
set isBedtime to false
set theHour to get the (hours of (current date))
if theHour < 9 or theHour > 16
  set isNight to true
end if

--check if it's weekend
set isWeekend to false
set theDay to weekday of (get current date)
if theDay = Friday or theDay = Saturday or theDay = Sunday
  set isWeekend to true
end if

--Don't show the dialog by default
set showDialog to false

if application "Mail" is running then
	tell application "Mail"
		
		repeat with currentAccount in accountList
			
			set isAccountEnabled to get enabled of account currentAccount
			
			if isBedtime or isWeekend then
				
				if isAccountEnabled is true then
					set showDialog to true
					set enabled of account currentAccount to false
				end if
			
			end if
		end repeat
		
	end tell
end if

if showDialog is true then
	set text item delimiters to ", "
	display dialog "Disabled mail accounts: " & (accountList) & "."
end if