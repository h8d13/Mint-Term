### FOR .bash_aliases
alias comms="cat ~/.bash_aliases | sed 's/alias//g'"
alias editpc="sudo nano ~/.bash_aliases"
alias updapc="sudo apt update && sudo apt upgrade -y"
alias reb="reboot"
alias pwoff="poweroff"
alias logd="sudo tail -f /var/log/syslog"
alias logds="sudo dmesg -r"
alias clr="clear"
alias lsh="ls -la"
alias wztree="sudo du -h / | sort -rh | head -n 30 | less"
alias wzhere="sudo du -h . | sort -rh | head -n 15 | less"
alias genpw="head /dev/urandom | tr -dc A-Za-z0-9 | head -c 21; echo"

alias aptclean="sudo apt clean && sudo apt autoclean && sudo apt autoremove -y"
alias aptadd="sudo apt install"
alias aptdel="sudo apt remove"

alias cls="clr"
alias doas="sudo"

## YOu can do the same to points to a .sh script directly provided it has a shebang '#!/bin/sh' is executable "chmod +x myscript.sh" and point to it's path.
# Example: alias trim="path/to/script.sh"


### FOR STYLING .bashrc
# Prompt that better adapts to terminal size changes and shows time
if [ $(id -u) -eq 0 ]; then
    # Root user prompt with dynamic adjustment and time display
	export PS1='\[\033[0;34m\]┌──[\[\033[01;34m\]root\[\033[01;33m\]@\[\033[01;96m\]\h\[\033[0;34m\]]─[\[\033[0;32m\]\w\[\033[0;34m\]]─[\[\033[0;35m\]\t\[\033[0;34m\]]\n\[\033[0;34m\]└──╼ \[\033[01;33m\]# \[\033[0m\]'
else
    # Regular user prompt with dynamic adjustment and time display
	export PS1='\[\033[0;34m\]┌──[\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h\[\033[0;34m\]]─[\[\033[0;32m\]\w\[\033[0;34m\]]─[\[\033[0;35m\]\t\[\033[0;34m\]]\n\[\033[0;34m\]└──╼ \[\033[01;33m\]$ \[\033[0m\]'
fi

