#!/bin/sh

# Expected arguments: play-pause, next, previous

# Prioritize sending signal to spotify-qt
if (pgrep spotify-qt) ; then
  playerctl "$1" --player=spotify-qt

# Then prioritize spotifyd
elif (pgrep spotifyd) ; then
  playerctl "$1" --player=spotifyd

# If none of those are running, send signal to default program
else
  playerctl "$1"
fi

# EOF
