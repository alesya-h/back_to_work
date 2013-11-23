#!/bin/bash
DELAY=${1:-120}
sleep $DELAY
while true; do
  if zenity  --question \
    --title "Back to work" \
    --text "Is what you are doing now directly work-related?"
  then
    screenlog take
  else
    xscreensaver-command -lock
  fi
  sleep $((5*60))
done
