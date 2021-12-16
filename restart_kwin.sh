#!/bin/sh

# Check if Kwin is already running
if (pgrep kwin) ; then
  # Restart Kwin
  kwin_x11 --replace

# Make sure BSPWM is not running
elif ! (pgrep bspwm) ; then
  # Start Kwin
  kwin_x11
fi

# EOF
