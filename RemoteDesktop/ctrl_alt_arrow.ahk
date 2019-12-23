; from https://superuser.com/questions/327866/remote-desktop-sending-ctrl-alt-left-arrow-ctrl-alt-right-arrow-to-the-remote-p

; Ctrl ^  Alt !  Shift +  Win #

#SingleInstance force

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!Left::
IfWinActive, ahk_class TscShellContainerClass
{
    send ^!{F10}
}
else
{
    send ^!{Left}
}
return

^!Right::
IfWinActive, ahk_class TscShellContainerClass
{
    send ^!{F11}
}
else
{
    send ^!{Right}
}
return
