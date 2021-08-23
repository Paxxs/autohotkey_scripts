; 常用快捷输入
:*:@m::@vip.morfans.cn
:*:@h::@hotmail.com
:*:@g::@gmail.com
::g!::www.google.com
::mor!::morfans.cn

; 小爱按键启动终端
sc072::
Run, wt.exe
Return

;其他快捷启动
;; ! alt
!n::Run notepads.exe
!c::Run code-insiders.cmd

;; 启动火狐
!b::
    IfWinNotExist, Firefox Developer Edition
    {
        Run, firefox
        WinActivate
    }
    Else IfWinNotActive, Firefox Developer Edition
    {
        WinActivate
    }
    Else
    {
        WinMinimize
    }
    Return

;; 快速搜索
!f::
    MsgBox, 3, 搜索引擎, y 谷歌，n 百度
    IfMsgBox, Yes
        Run https://www.google.com/search?q=%clipboard%
    Else IfMsgBox, No
        Run, https://www.baidu.com/s?wd=%clipboard%
    Return

;; 快速选择一行
!a::
Send, {Home}
Send, +{End}
Return
