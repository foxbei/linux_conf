# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi
export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE=xim
export GTK_IM_MODULE=xim

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ls='ls --color=auto'
alias ll='ls -hl'
alias grep='grep --color=auto'
[[ -f /etc/profile.d/bash-completion ]] && source /etc/profile.d/bash-completion

alias vim='gvim --remote-tab-silent' 
alias gvim='gvim --remote-tab-silent' 

# Put your fun stuff here.
