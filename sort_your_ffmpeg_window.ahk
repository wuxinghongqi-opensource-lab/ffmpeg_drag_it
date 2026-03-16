#SingleInstance,Force

Global get_pids:=[]
goto,F1
F1::
aaa:=sum_of_pid("cmd.exe")
win_move_cmd_1:=get_pids[1]
win_move_cmd_2:=get_pids[2]
win_move_cmd_3:=get_pids[3]
;MsgBox % win_move_cmd_1
;MsgBox % win_move_cmd_2
;MsgBox % win_move_cmd_3
;for a,b in get_pids
;MsgBox % b
WinMove, ahk_pid %win_move_cmd_1%,, 500,350
WinActivate ahk_pid %win_move_cmd_1%
Sleep,255
WinMove, ahk_pid %win_move_cmd_2%,, 500,300
WinActivate ahk_pid %win_move_cmd_2%
Sleep,255
WinMove, ahk_pid %win_move_cmd_3%,, 500,250
WinActivate ahk_pid %win_move_cmd_3%
;MsgBox % aaa
ExitApp
Return


F12::ExitApp


sum_of_pid(p_name_)
{
sum_pid_:=0
For 进程数, PID in GetPidList(p_name_)
{
    ;MsgBox % PID
    get_pids.Push(PID)
}
  sum_pid_+=1
Return sum_pid_
}

GetPidList(ProcessName) {  
  PidLs := []
  For Proc in ComObjGet("Winmgmts:").ExecQuery("Select * from Win32_Process Where Name LIKE '" ProcessName "'")
    PidLs.Push(Proc.ProcessID)
  Return PidLs
}