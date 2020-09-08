## Modified commands
# Color all the output
alias diff='colordiff'
alias grep='grep --color=auto'
alias ip='ip -c'
# Human output
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -pv'
alias dmesg='dmesg -e'
# optimized copying
alias cp='cp -i --reflink=auto'

## Replacements
alias vim='$EDITOR'
alias edit='$EDITOR'
alias more='less'

## Abbreviations
alias e='$EDITOR'

## Privilege Escalation
alias sudo='sudo ' # have aliases used with sudo as well
alias svim='sudoedit'

## ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

## dotfiles management
alias config='git --git-dir="$HOME/.local/share/dotfiles/" --work-tree="$HOME"'
alias dotlist='git --git-dir="$HOME/.local/share/dotfiles/" --work-tree="$HOME"\
    ls-tree -r HEAD --name-only'

## other
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
