# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

#
# The *WORKING* xinitrc is located at /etc/X11/xinit/xinitrc 
#

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
 # Shell is non-interactive.  Be done now!
 return
fi

if [ $(id -u) -eq 0 ];
then
 PS1="\[\033[1;31m\][\[\033[33m\]\u\[\033[32m\]@\[\033[34m\]\h\[\033[35m\] \w\[\033[31m\]]\[\033[0;37m\] $ "
else
 PS1="\[\033[1;31m\][\[\033[33m\]\u\[\033[32m\]@\[\033[34m\]\h\[\033[35m\] \w\[\033[31m\]]\[\033[0;37m\] $ "
fi

# Put your fun stuff here.

alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -a"

alias emmy="doas emerge -v"
alias wr="cd ~/usr/src"

#alias scrotfull="scrot '%d.png' -e 'mv $f ~/img/'"
#alias scrotselect="scrot '%d.png' -s -e 'mv $f ~/img/'"
