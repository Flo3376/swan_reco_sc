Loop, %0%  ; For each parameter:
{
	Send {Enter}
	sleep 1000
	param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
	Send {Text} %param%
	sleep 1000
	Send {Enter}
}
