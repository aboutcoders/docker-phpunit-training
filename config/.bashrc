# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
umask 022

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# You may uncomment the following lines if you want `ls' to be colorized:
if [ $SHELL = "/bin/bash" -a -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        export LS_OPTIONS='--color=auto'
        alias ls='ls $LS_OPTIONS'
        alias ll='ls $LS_OPTIONS -lisa'
        alias l='ls $LS_OPTIONS -lA'
fi

# Adding Composer global tools for root user to the path:
PATH=/root/vendor/bin:$PATH

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'