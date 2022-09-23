Loop, %0%  ; For each parameter:
{
	Send {Enter}
	param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
	Send {Text} %param%
	Send {Enter}
}
