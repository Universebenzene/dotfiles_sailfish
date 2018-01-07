# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
if [[ $UID -eq 0 ]]; then
    local user="%{$fg_bold[red]%}%n%{$reset_color%}"
    local user_symbol="%{$fg_bold[red]%}#%{$reset_color%}"
    local user_dash="%{$fg[red]%}-%{$reset_color%}"
else
    local user="%{$fg_bold[green]%}%n%{$reset_color%}"
    local user_symbol="%{$fg_bold[yellow]%}$%{$reset_color%}"
    local user_dash="%{$fg_bold[black]%}-%{$reset_color%}"
#   local user_symbol="$"
fi

local host="%{$fg_bold[cyan]%}%m%{$reset_color%}"
local circlea="%{$fg[green]%}@%{$reset_color%}"
local time24="%{$reset_color%}[%{$fg[yellow]%}%*%{$reset_color%}]"
local current_dir="%{$fg_bold[blue]%}%c%{$reset_color%}"
function filenum {
    echo $(ls | wc -l)
}

#local filenum="%{$fg[magenta]%}$(ls | wc -l)%{$reset_color%}"

PROMPT='${user}${circlea}${host} ${current_dir} %B${user_symbol}%b '
#PS2=$'\e[0;33m%}%BContinue%{\e[0m%}%b > '
PS2=$'\e[0;33m%}%B%_ %{\e[0m%}%b\e[0;36m%}(Continue)%{\e[0m%} > '
