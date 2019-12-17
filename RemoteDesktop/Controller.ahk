; from https://superuser.com/questions/397257/how-to-fix-ahk-to-send-keys-to-rdp-fullscreen

#SingleInstance force

Run "autohotkey" "ctrl_alt_arrow.ahk"

#Persistent
SetTimer, ReloadOnRDPMaximized, 500
return

ReloadOnRDPMaximized:
If WinActive("ahk_class TscShellContainerClass")
{
    WinGet, maxOrMin, MinMax, ahk_class TscShellContainerClass

    if (maxOrMin = 0) {
        WinGetPos, PosX, PosY, WinWidth, WinHeight, ahk_class TscShellContainerClass

        if (PosY = 0) {
            ; it is fully maximized therefore reload "ctrl_alt_arrow.ahk"
            Run "autohotkey" "ctrl_alt_arrow.ahk"

            ; wait until window gets deactivated so you don't reload it again.
            WinWaitNotActive, ahk_class TscShellContainerClass

        }
    }
}
return
