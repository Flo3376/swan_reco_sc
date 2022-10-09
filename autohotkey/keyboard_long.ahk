Loop, %0%  ; For each parameter:
{
	param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
	EndTime := A_TickCount + 500 ;10000 ms
	While, A_TickCount < EndTime 

		Send, {%param% down}
	Send, {%param% up}

	
}
