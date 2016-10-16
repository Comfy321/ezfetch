#! /bin/sh
#ezfetch - thr lightest and simplest *fetch out there.
#oh- and look how easy it is to configure!
#vars
HOST="$(hostname)"
KERNEL="$(uname -mrs)"
OS="$(lsb_release -d)"
SHELL="$(echo $SHELL)"
    if [ -n "$DISPLAY" ]; then
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

