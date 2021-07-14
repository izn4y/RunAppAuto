set sPingIpAdress to "ping -o -t 2 192.0.0.0"
repeat with i from 1 to 3
	try
		do shell script sPingIpAdress
		exit repeat
	on error
		beep
		delay 60
		if i = 3 then error number -128
	end try
end repeat
tell application "Server" to activate
delay 10
display notification "Connect to server" with title "Successfully"