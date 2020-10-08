Loop
{
	IfWinExist, PuTTY Fatal Error
	{
		WinActivate, PuTTY Fatal Error
		WinActivate, PuTTY Fatal Error
		WinWaitActive, PuTTY Fatal Error
		Send, {Alt Down}{F4}{Alt Up}
		Sleep, 200
	}
	else
	{
		Break
	}
}

Loop	
{
	IfWinExist, PuTTY (inactive)
	{
		WinActivate, PuTTY (inactive)
		WinWaitActive, PuTTY (inactive)
		Send, {Alt Down}{F4}{Alt Up}
	}
	else
	{
		Break
	}
}
MsgBox, PuTTY Windows Cleaned Up!