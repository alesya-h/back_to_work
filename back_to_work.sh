#!/bin/bash
DELAY=${1:-120}
sleep $DELAY
while true; do
  zenity  --question \
    --title "Back to work" \
    --text "Is what you are doing now directly work-related?" ||
  xscreensaver-command -lock
  sleep $((5*60))
done
