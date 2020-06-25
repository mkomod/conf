set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# change dir without cd
shopt -s autocd

alias ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ls="ls -hN --color=auto --group-directories-first" \
	mv="mv -i" \
	diff="diff --color=auto" \
	grep="grep --color=auto" \
	tmux="tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf" \
	nvim="vim"


# PS1=" \e[33;1m\h \e[34m\W\e[0m \$ "
# PS1='\[\e[01;33m\] \W \[\e[01;37m\] $ \[\e[m\]'
export PS1="\[$(tput bold)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;11m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"


# colors 
man() {
	# arg colors, man page prompt, arg value
	LESS_TERMCAP_md=$'\e[01;36m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;37m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}

bind -m vi-insert "\C-l":clear-screen

