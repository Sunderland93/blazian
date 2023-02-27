xrandr --output eDP1 --mode 1920x1080
picom --config ~/.config/picom/picom.conf &
xscreensaver -nosplash &
powerkit &
nitrogen --restore &


sleep 1

polybar -r bt &
flameshot &
copyq &
setxkbmap -model pc86 -layout us,ru -option grp:lctrl_lshift_toggle &
nm-applet --indicator &
udiskie -ant -m flat -f pcmanfm --terminal alacritty &
gxkb &
birdtray &
blueman-applet &
bitwarden-desktop &
vk &
telegram-desktop &
