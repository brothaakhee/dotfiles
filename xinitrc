xrandr --output DVI-1 --auto
xrandr --output DisplayPort-0 --auto --left-of DVI-1
xrandr --output HDMI-0 --auto --right-of DVI-1

/usr/bin/xrdb -merge $HOME/.Xresources

exec i3
