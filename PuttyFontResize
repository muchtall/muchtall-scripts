; Resizes the current font in PuTTY to large (14) or small (8) by pressing Ctrl + Shift + = __or__ Ctrl + Shift + -

PuttyFontSize(FontSize)
{
	KeyWait Control
	KeyWait Shift		; Wait for the Ctrl and Shift keys to release
	Send !{SPACE}		; Open the Window menu
	Sleep 100	
	Send g			; Select ChanGe Settings
	Sleep 100	
	Send +{TAB}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{TAB}{TAB}{TAB}{SPACE}{TAB}{TAB}	; Navigate to the font size selection
	Send %FontSize%{ENTER}	; Type in the specified font size
	Sleep 100
	Send !a			; Apply
}

#IfWinActive, ahk_class PuTTY
^+=::PuttyFontSize("14")
^+-::PuttyFontSize("8")
