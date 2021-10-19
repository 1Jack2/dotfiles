$^w::
ifWinActive, ahk_exe firefox.exe
{
    return
} else {
    Send ^w
    return
}

