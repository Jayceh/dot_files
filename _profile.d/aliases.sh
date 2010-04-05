# generic aliases
alias mplayer='mplayer -zoom -fs '
alias hr='for i in $(seq 1 $COLUMNS); do echo -n -; done'
alias 'isodate'='date +%Y-%m-%d'

# ls color is different on darwin than linux
myvar=$(uname | tr 'A-Z' 'a-z')
case $myvar in
linux)
   alias ls='ls -F --color'
;;
darwin)
   alias ls='ls -F -G'
   export LSCOLORS="gxfxbxdxcxegedabagacad"
;;
sunos)
   alias ls='ls -F'
;;
*)
   alias ls='ls'
;;
esac

alias vless='vim -u /usr/share/vim/vim71/macros/less.vim'

#get color results
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# grep to less
function legrep {
  egrep --color=yes "$@" | less -R
}

if [ -f $HOME/bin/vimpager ]; then
    export PAGER=$HOME/bin/vimpager 
    alias less=$PAGER
fi
