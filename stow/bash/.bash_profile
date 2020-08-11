#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# startx on login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] || return
echo
read -p "Start Xorg[Y/y]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    exec startx
fi
