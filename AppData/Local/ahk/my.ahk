$^w::
ifWinActive, ahk_exe firefox.exe
{
    return
} else {
    Send ^w
    return
}
$^h::
ifWinActive, ahk_exe firefox.exe
{
    return
} else {
    Send ^h
    return
}

