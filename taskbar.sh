#!/bin/bash

# Start Fluxbox window manager
fluxbox &

# Start Tint2 taskbar
tint2 &

# Wait indefinitely (prevents container from exiting)
while :; do
    sleep 1000
done
