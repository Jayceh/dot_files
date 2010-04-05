if [ -f $HOME/bin/perldoc-complete ]; then
    complete -C perldoc-complete -o nospace -o default perldoc
fi

if [ -f /opt/local/etc/bash_completion ]; then
   . /opt/local/etc/bash_completion 
elif [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi
