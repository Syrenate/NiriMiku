#!/bin/bash

# Start notification daemon
./build/src/swaync

#echo "jq: Unknown option --argpid"

# Start terminal
kitty --hold fastfetch &; sleep 0.4

# Start resource monitor
kitty --title "btop" btop &

BTOP_ID=""
while [ -z $BTOP_ID ]; do
    BTOP_ID=$(niri msg --json windows | jq '.[] | select(.title=="btop") | .id')
    sleep 0.1
done
sleep 0.4

niri msg action focus-window --id "$BTOP_ID"; sleep 0.2
niri msg action consume-or-expel-window-left; sleep 0.4

# Start spotify
spotify --title "spotify" &
SPOT_ID=""
while [ -z $CAVA_ID ]; do
    SPOT_ID=$(niri msg --json windows | jq '.[] | select(.title=="spotify") | .id')
    sleep 0.1
done

# Start audio visualiser
kitty --title "cava" -e cava &
CAVA_ID=""
while [ -z $CAVA_ID ]; do
    sleep 0.1
    CAVA_ID=$(niri msg --json windows | jq '.[] | select(.title=="cava") | .id')
done
sleep 0.4

niri msg action focus-window --id "$CAVA_ID"; sleep 0.2
niri msg action consume-or-expel-window-left