#Requires AutoHotkey v2

; Movement (WASD)
!w::Send("{Up}")
!a::Send("{Left}")
!s::Send("{Down}")
!d::Send("{Right}")

; Word jumps
!q::Send("^{Left}")     ; Alt+Q = jump word left
!e::Send("^{Right}")    ; Alt+E = jump word right

; Terminal
!c::Send("^``")         ; Alt+C = toggle terminal
!v::Send("^+``")        ; Alt+V = new terminal

; Line/Character selection
!+w::Send("+{Up}")      ; Alt+Shift+W = select line up
!+a::Send("+{Left}")    ; Alt+Shift+A = select left
!+d::Send("+{Right}")   ; Alt+Shift+D = select right
!+s::Send("+{Down}")    ; Alt+Shift+S = select line down

; Move line up/down
!r::Send("!{Up}")       ; Alt+R = move line up
!f::Send("!{Down}")     ; Alt+F = move line down

; Duplicate line (using VS Code defaults: Shift+Alt+Up/Down)
!+q::Send("+!{Up}")     ; Alt+Shift+Q = duplicate line up
!+e::Send("+!{Down}")   ; Alt+Shift+E = duplicate line down

; Characters
!x::Send("``")  ; Alt+X = backtick
