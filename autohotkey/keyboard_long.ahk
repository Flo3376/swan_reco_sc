Loop, %0%  ; For each parameter:
{
	param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
	Send {%param% down}
	sleep 1000
	Send {%param% up}
}
