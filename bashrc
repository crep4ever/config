#--------------------------------------------------------
#Personal configuration
#--------------------------------------------------------

#Environment variables

export PATH=$HOME/.local/:$HOME/.local/bin:$PATH
export ALTERNATE_EDITOR=emacs
export EDITOR='emacs'
export VISUAL='emacs'
export PAGER=most

#Aliases

alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias clean='find -O3 . -name "*~" -or -name "*.bak" -or -name "#*#" -or -name "Thumbs.db" -or -name "desktop.ini" -type f | xargs rm -f '
alias c='clear'
alias maek='make'
alias amke='make'
alias dc='cd'
alias top='htop'

#History

HISTSIZE=1000000
HISTFILESIZE=2500000
