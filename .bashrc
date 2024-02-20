# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
## turn on monitor
#xset dpms force on
## disable sleep modes etc.
#xset -dpms
## disable screensaver
#xset s off
# turn off beep
#xset -b
clear
#PS1='\[\033[00m\]┌─[\[\033[01;35m\]\u\[\033[00m\]]──[\033[01;34m\]\w\[\033[00;32m\]\[\033[00m\]]`echo -e $(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\\\033[00m──[\\\033[00;32m\1\\\033[00m]/")`\[\033[00m\] \$\n\[\033[00m\]└────╼ \[\033[00;33m\]>>\[\033[00m\] '


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

#if [ -f /usr/bin/neofetch ]; then neofetch; fi
export EDITOR=vi
#export GPGKEY=
export PATH="$PATH:$HOME/.local/bin"
export TERM=xterm-256color
export CLICOLOR=1
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

alias myip="curl icanhazip.com"
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ls="ls --color=always"
alias emacs="emacs -nw"
alias emerge="sudo emerge"
alias etc-update="sudo etc-update"
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"
alias i3conf="emacs ~/.config/i3/config"
alias alsaconf="sudo emacs /etc/asound.conf"
alias ifup="sudo ifconfig eth0 up"
alias download="aria2c -c -x16 -s16 -j1 -k1m -m10 --retry-wait=30 -d ~/Downloads -i ~/aria2dl.txt "

alias tb="nc termbin.com 9999"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias pproxy="pproxy -l socks5://192.168.3.2:8888 -r socks5://127.0.0.1:9150 -vv"
#eval $(dircolors -b LS_COLORS)
# set a 15 min timeout policy for bash shell
#TMOUT=900
#readonly TMOUT
#export TMOUT
