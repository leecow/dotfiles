#PS1='[\u@\h \W]\$' #Default

PS1='[\u at \h in \W] 
\[\e[0m\]$'

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

test -e ~/.dircolors && \ 
   eval `dircolors -b ~/.dircolors`

alias ls="ls --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"