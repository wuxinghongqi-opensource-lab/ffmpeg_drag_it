;#SingleInstance,Force
CoordMode, ToolTip, Screen
a1_arr:=[]
a2_arr:=[]
a3_arr:=[]
Global key_1
Global key_2
Global key_3
Global key_4
IniRead key_1,ffmpeg_drag_it.ini,ffmpeg_path,Key_path
IniRead key_2,ffmpeg_drag_it.ini,convert_format,Key_format
IniRead key_3,ffmpeg_drag_it.ini,convert_ext,Key_ext
IniRead key_4,ffmpeg_drag_it.ini,convert_total,Key_total
key_4:=key_4-1
for n,param in A_Args
{
SplitPath, param, name, dir,, name_no_ext
name_hevc:=dir "\hevc\" name_no_ext "." key_3
convert_over_dir:=dir "\convent_over\"
hevc_fold:=dir "\hevc\"
if !FileExist(hevc_fold)
    FileCreateDir, %hevc_fold%
if !FileExist(convert_over_dir)
    FileCreateDir, %convert_over_dir%
a1_arr.Push(param)
a2_arr.Push(name_hevc)
a3_arr.Push(convert_over_dir)
}




Loop
{

sum_go:=sum_of_pid("conhost.exe")
;MsgBox % sum_go
a1:=a1_arr[A_index]
a2:=a2_arr[A_index]
a3:=a3_arr[A_index]
to_1:=A_index
to_t:=a1_arr.MaxIndex()
max_in:=a1_arr.MaxIndex()
if(A_Index>max_in)
break
if(sum_go<=key_4)
{
aaa=
(
%key_1% -i "%a1%" -vcodec %key_2% -acodec copy "%a2%" -y && timeout `/t 2 `/nobreak >nul &&  powershell -command "$a=Get-Item '%a1%'; $b=Get-Item '%a2%'; $b.CreationTime=$a.CreationTime; $b.LastWriteTime=$a.LastWriteTime; $b.LastAccessTime=$a.LastAccessTime" && move "%a1%" "%a3%"
)
;MsgBox % aaa
;ExitApp

ToolTip,%to_1%/%to_t%, 800, 150
SetTimer, RemoveToolTip, -200000
;MsgBox % aaa
;Clipboard:=aaa
;ExitApp
Run,cmd /c %aaa%
Sleep,125

;FileMove, %a1%, %a3%
}
Else
{
Loop
{
sum_go:=sum_of_pid("conhost.exe")
if(sum_go<=key_4)
{
Sleep,125
aaa=
(
%key_1% -i "%a1%" -vcodec %key_2% -acodec copy "%a2%" && timeout `/t 2 `/nobreak >nul &&  powershell -command "$a=Get-Item '%a1%'; $b=Get-Item '%a2%'; $b.CreationTime=$a.CreationTime; $b.LastWriteTime=$a.LastWriteTime; $b.LastAccessTime=$a.LastAccessTime" && move "%a1%" "%a3%"
)
ToolTip,%to_1%/%to_t%, 800, 150
SetTimer, RemoveToolTip, -16000
;MsgBox % aaa
;Clipboard:=aaa
;ExitApp
Run,cmd /c %aaa%
Sleep,125
break
}
Sleep,3000
}
}

}

RemoveToolTip:
ToolTip
return


sum_of_pid(p_name)
{
sum_of_pid_:=0
For Process_sum, PID in GetPidList(p_name)
    sum_of_pid_+=1
Return sum_of_pid_
}

GetPidList(ProcessName) {
  PidLs := []
  For Proc in ComObjGet("Winmgmts:").ExecQuery("Select * from Win32_Process Where Name LIKE '" ProcessName "'")
    PidLs.Push(Proc.ProcessID)
  Return PidLs
}


