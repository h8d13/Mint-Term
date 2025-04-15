alias stopde="sudo systemctl stop lightdm"
alias comms="cat ~/.bashrc | sed 's/alias//g'"
alias editpc="sudo nano ~/.bashrc"
alias updapc="sudo apt update && sudo apt upgrade -y"
alias reboo="sudo reboot"
alias pwoff="sudo poweroff"
alias logd="sudo tail -f /var/log/syslog"
alias logds="sudo dmesg -r"
alias clr="clear"
alias lsh="ls -la"
alias wztree="sudo du -h / | sort -rh | head -n 30"
alias wzhere="sudo du -h . | sort -rh | head -n 15"
alias aptclean="sudo apt clean && sudo apt autoclean && sudo apt autoremove -y"
alias aptadd="sudo apt install"
alias aptdel="sudo apt remove"
alias apts="apt search"
alias genpw="head /dev/urandom | tr -dc A-Za-z0-9 | head -c 21; echo"
alias iapps="~/Scripts/trim.sh"
alias sysm="htop"
alias cls="clr"
# Prompt that better adapts to terminal size changes and shows time
if [ $(id -u) -eq 0 ]; then
    # Root user prompt with dynamic adjustment and time display
    export PS1='\033[0;34m┌──[\033[01;34mroot\033[01;33m@\033[01;96m\h\033[0;34m]─[\033[0;32m\w\033[0;34m]─[\033[0;35m\t\033[0;34m]\n\033[0;34m└──╼ \033[01;33m# \033[0m'
else
    # Regular user prompt with dynamic adjustment and time display
    export PS1='\033[0;34m┌──[\033[0;39m\u\033[01;33m@\033[01;96m\h\033[0;34m]─[\033[0;32m\w\033[0;34m]─[\033[0;35m\t\033[0;34m]\n\033[0;34m└──╼ \033[01;33m$ \033[0m'
fi
# Enable colors for ls
export CLICOLOR=1
# Set color options for ls
if [ -x /bin/ls ] || [ -x /usr/bin/ls ]; then
    # For Linux Mint, use GNU ls with color option
    alias ls='ls --color=auto'
    alias ll='ls -la --color=auto'
    alias la='ls -a --color=auto'
    alias l='ls -CF --color=auto'
fi
# Set TERM appropriately for better color support
export TERM=xterm-256color
# Configure line wrapping to handle long paths better
tput rmam 2>/dev/null || : # Turn off auto-margin (line wrapping) for status line
