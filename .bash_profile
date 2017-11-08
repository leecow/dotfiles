parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u at \h in \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] 
$ "

#PS1='[\u@\h \W]\$' #Default

#custom prompt. /u=user, /h=hostname, /W=working directory
#PS1='[\u at \h in \W] 
#\[\e[0m\]$'

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# this hasn't worked on all distros. Need to have a look at supported configs. 
test -e ~/.dircolors && \ 
   eval `dircolors -b ~/.dircolors`

# set up a few commands to always provide color formatting. 
alias ls="ls --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"
