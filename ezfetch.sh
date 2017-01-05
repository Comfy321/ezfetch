#! /bin/sh
#ezfetch - the lightest and simplest *fetch out there.
#oh- and look how easy it is to configure!
# version 1.0
#vars
HOST="$(hostname)"
KERNEL="$(uname -mrs)"
OS="$(lsb_release -d)"
SHELL="$(echo $SHELL)"
    if [ -n "$DISPLAY" ]; then #Credit to Mitya on IRC for this func.
	id="$(xprop -root -notype | \awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}')" 
	wm="$(xprop -id "$id" -notype -f _NET_WM_NAME 8t)"
	wm="${wm/*_NET_WM_NAME = }"
	wm="${wm/\"}"
	wm="${wm/\"*}"
    fi

#output
echo "
ezfetch v1.0
-------------------------
$OS
Kernel:         $KERNEL
Hostname:       $HOST
Window Manager: $wm
Shell:          $SHELL
 ___________________
|  _______________  |
| |  ___________  | |
| | |  _______  | | |
| | | |_______| | | |
| | |___________| | |
| |_______________| |
|___________________|
"             
echo -e " \033[1;37m██\033[0;30m██\033[0;34m██\033[1;34m██\033[0;32m██\033[1;32m██\033[0;36m██\033[1;36m██\033[0;31m██\033[1;31m██\033[0;35m██\033[1;35m██\033[0;33m██\033[1;33m██\033[1;30m██\033[0;37m██"
