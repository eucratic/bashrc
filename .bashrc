# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Colorize Prompt

# export	PS1="\[\033[35;1m\][\[\033[0;34m\]\u\[\033[1;36m\]@\[\033[0;32m\]\h:\[\033[33;1m\] \w\[\033[31;1m\]]\[\033[m\]\$ "

# You can have 256 colors. Notice the format of the color code, with 3 values instead of 2:
# for i in {166..209} ; do echo -en "\e[38;5;${i}m${i}\n\e[0m" ; done ; echo 

export PS1="\[\033[35;1m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[35;1m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;34m\]root\[\033[01;36m\]@\[\033[01;32m\]\h'; else echo '\[\033[0;34m\]\u\[\033[01;36m\]@\[\033[0;32m\]\h'; fi)\[\033[33;1m\]]\342\224\200[\[\033[38;5;209m\]\w\[\033[0;31m\]]\n\[\033[35;1m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$ \[\e[0m\]"
# 38;5;209m orange
# 33;1m yellow

#if [[ $USER = "root" ]]; then
#	PS1="\[\033[35;1m\033[47m\] [\[\033[0;34m\033[47m\] \u\[\033[1;36m\]@\[\033[0;32m\033[47m\]\h:\[\033[33;1m\] \w\[\033[31;1m\]]\[\033[m\]\$ "
#else
#	PS1="\[\033[35;1m\][\[\033[0;34m\]\u\[\033[1;36m\]@\[\033[0;32m\]\h:\[\033[33;1m\] \w\[\033[31;1m\]]\[\033[m\]\$ "
#fi

#color_prompt=yes
#if [ "$color_prompt" = yes ]; then
#    PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"
#else
#    PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
#fi

# Colorize man and less
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

# Colorize grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Colorize diff
alias diff='colordiff'

# Colorize ls
# alias ls='ls --color=auto'
# Group directories first
alias ls='ls --color=auto -h --group-directories-first'

# Default EDITOR
export EDITOR=/usr/bin/vim




