xbindkeys
setxkbmap -option caps:escape
picom -b
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec xmonad
