set -o vi

[[ $- != *i* ]] && return

# change dir without cd
shopt -s autocd

alias ls="ls -hNlg --color=auto" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	mv="mv -i" \
	rm="rm -i" \
	nvim="vim"


export PS1="\[$(tput bold)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;11m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"


man() {
	LESS_TERMCAP_md=$'\e[01;36m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;37m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}

bind -m vi-insert "\C-l":clear-screen

