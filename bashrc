# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

color_prompt=yes
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls --color=auto -CF'
alias sl='ls'

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
