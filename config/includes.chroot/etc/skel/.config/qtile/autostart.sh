#!/bin/sh

lxsession &
picom --experimental-backends &
xscreensaver -nosplash &
nitrogen --restore &

clipmenud &
setxkbmap -model pc105 -layout us,ru -option grp:sclk_toggle &
udiskie -ant -m flat -f pcmanfm --terminal alacritty &


id=$(xinput list --id-only 'Kingston HyperX Pulsefire Raid')
xinput --set-prop $id 156 0.3 0 0 0 0.3 0 0 0 1 &

numlockx &
gwe --autostart-on &
cpupower-gui freq --min 3800 --max 4400 0-3 &
cpupower-gui -p &



jack_control start &
jack_control ds alsa &
jack_control dps device hw:UR22mkII &
jack_control dps rate 192000 &
jack_control dps nperiods 2 &
jack_control dps period 512 &
sleep 10 &
a2j_control --ehw &
a2j_control --start &

./.config/polybar/launch.sh &

kotatogram-desktop &

