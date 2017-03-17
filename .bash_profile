#PS1='[\u@\h \W]\$' #Default

#custom prompt. /u=user, /h=hostname, /W=working directory
PS1='[\u at \h in \W] 
\[\e[0m\]$'

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# this hasn't worked on all distros. Need to have a look at supported configs. 
test -e ~/.dircolors && \ 
   eval `dircolors -b ~/.dircolors`

# set up a few commands to always provide color formatting. 
alias ls="ls --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"