# ~/.bashrc

# If not running interactively, don't do anything!
[[ $- != *i* ]] && return

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Append history instead of overwrite, remove duplicates and allow hiding
# commands, have large limits
export HISTCONTROL=ignoreboth
export HISTSIZE=9000
export HISTFILESIZE=$HISTSIZE
shopt -s histappend

# Set fallback bash prompt
PS1="\u@\h \w \$([[ \$? != 0 ]] && echo \":( \")\$ "

# On color-capable terminals, set fancier prompts
if [[ $(tput colors) -ge 256 ]]; then
	# Prompt for shells within application containers
	if [[ -f /run/.containerenv ]]; then
		_h="$(source /run/.containerenv && echo "$name")"
		PS1="\[\e[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\e[0;31m\]\342\234\227\[\e[0;37m\]]\342\224\200\")[\[\e[0;33m\]\u\[\e[0;37m\]@\[\e[0;96m\]${_h}\[\e[0;37m\]]\342\224\200[\[\e[0;32m\]\w\[\e[0;37m\]]\n\[\e[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\e[0m\]"
	elif [[ ${EUID} == 0 ]]; then
		PS1="\[\e[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\e[0;31m\]\342\234\227\[\e[0;37m\]]\342\224\200\")[\[\e[0;31m\]\h\[\e[0;37m\]]\342\224\200[\[\e[0;32m\]\w\[\e[0;37m\]]\n\[\e[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\e[0m\]"
	else
		PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"
	fi
fi

# Set fallback editor for the shell (if nothing is already set)
if [[ -z ${EDITOR+x} ]]; then
    export EDITOR="nvim"
fi

# load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# colorize man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# pull in direnv
if [[ -f /usr/bin/direnv ]]; then
    eval "$(direnv hook bash)"
fi
