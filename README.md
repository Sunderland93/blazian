# blazian
A personal Debian 11 (Bullseye) live-build with dwm, as well as my configuration.

Important notes:
- Project is heavily WIP. This is not functional at all for now.
- Project is for my personal use. Sometimes I have stupid ways of doing things, which leads to overbloating the system.
- The general purpuse Debian 12 (Bookworm) dwm spin is planned. Development is started as soon as bookworm goes stable. It will be much less bloated than this project: only general hand-crafted dwm desktop environment. Only debian repos will be used. Some QOL improvements will be included. 

## Features
- Includes additional repositories and software: anydesk, ksxtudio for audio production, nala-legacy, task-ssh-server.
- Bunch of software pre-installed, check ''' config/package-lists/pkgs.list.chroot '''
- Preconfigured, patched dwm. Check https://github.com/blazingtime/dwm. The distribution relies on this fork.
- Almost suckless experience: st as defualt terminal, dwm as window manager, everything in terminal where confident. No display manager, use startx to launch dwm.
- Apt does not install recommends by default.
- Calamares installer.

## How to install blazian

wget link to release

dd if=blazian.iso of=/dev/YourDriveHere

boot to flash drive

login: TODO 
password: TODO

startx 

run dmenu with "Super+R", type "calamares" and follow prompts

## How to build blazian

git clone https://github.com/blazingtime/blazian.git

cd blazian

lb config

sudo lb build

## TODO
- add anydesk repo - done? test
- add kxstudio repo - done, test
- add nala - done, test
- check dwm dependancies
- add dwm complie script, send source to ~/.config/dwm
- add st
- add custom dotfiles
- add ~/bin folder and add to $PATH for custom scripts - included in dotfiles 
- add sysvinit branch, test usability
- add theming: gtk2-4, qt4-6
- actually configure st
- add system configuration to /etc
- add fonts: flexi IBM false
