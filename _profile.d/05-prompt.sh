#export PS1='[\[\033[00;34m\]\u@\h\[\033[00m\]]\n\[\033[01;34m\]\w\[\033[00m\] \$ '
export PS1="\[\017\]\[\033[0;33m\][\!]-\`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\[\033[00;34m\]\u\[\033[m\]@\[\e[30;1m\]\H\[\033[00m\]]\[\e[30;1m\]-(\j)-(\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])-->\[\e[0m\]\n\[\033[01;34m\]\w\[\033[00m\] \$ "
