#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Persistent
SetCapsLockState, AlwaysOff

; Capslock + hjkl (left, down, up, right)
; https://gist.github.com/scottming/5405b12eb2c69a4e0e54

Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}

Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; Capslock + n (home, end)

Capslock & n::SendInput {Blind}{Home Down}
Capslock & n up::SendInput {Blind}{Home Up}

Capslock & `;::SendInput {Blind}{End Down}
Capslock & `; up::SendInput {Blind}{End Up}

Capslock & Space::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

; Capslock only, Send Escape
CapsLock::Send, {ESC}

;\ to |, <(shift)+\ to \
\::+\
Shift & \::Send {\}

; Cpaslock + -= ,send up,dowm

Capslock & =::SendInput {Blind}{PgDn Down}
Capslock & = up::SendInput {Blind}{PgDn Up}

Capslock & -::SendInput {Blind}{PgUp Down}
Capslock & - up::SendInput {Blind}{PgUp Up}
