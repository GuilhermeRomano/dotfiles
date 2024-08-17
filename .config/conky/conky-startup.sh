#!/bin/sh

CONKY_HOME='/home/guilherme/.config/conky'
killall conky

set -ex

if [ "$DESKTOP_SESSION" = "cinnamon" ]; then 
  cd "$CONKY_HOME/nord/"
  ./start.sh
  cd "$CONKY_HOME/now-clocking"
  ./start.sh
fi
