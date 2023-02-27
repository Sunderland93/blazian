# blazingtime .xinitrc -- use cautiously, that's for my machines only
# also i'm dumb

# libinput tweaks, changing sens, flat accel, defining layouts and switch key
xinput --set-prop 'Kingston HyperX Pulsefire Raid' 'Coordinate Transformation Matrix' 0.3 0 0 0 0.3 0 0 0 1 &
xinput --set-prop 'Kingston HyperX Pulsefire Raid' 'libinput Accel Profile Enabled' 0, 1 &
setxkbmap -model pc105 -layout us,ru -option grp:caps_toggle &
numlockx &

# statusbar loops
while true; do
     xsetroot -name " vol $(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }') | bat $(cat /sys/class/power_supply/BAT0/capacity)% | disk $(df -h | grep $(df -h | awk '$6 == "/" { print $1 }') | awk '{ print $3"/"$2 }') | ram $(free -h | awk '(NR==2){ print $3"/"$2 }') | $(date) "
     sleep 1s    # Update every second   
done &

# etc.
picom &
~/.fehbg &
pulseaudio --start &
sleep 1s
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal &
sleep 2s
# autostart
keepassxc &
kotatogram-desktop &

# relaunch DWM if the binary changes, otherwise kill
csum=""
new_csum=$(sha1sum $(which dwm))
while true
do
    if [ "$csum" != "$new_csum" ]
    then
        csum=$new_csum
        dwm
    else
        exit 0
    fi
    new_csum=$(sha1sum $(which dwm))
    sleep 0.5
done

exec dwm
