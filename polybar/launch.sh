#!/usr/bin/env bash

# Kill any existing Polybar instances
polybar-msg cmd quit 2>/dev/null || killall -q polybar

# Launch your bar
for m in $(polybar --list-monitors | cut -d: -f1); do
    MONITOR=$m polybar mybar &
done

echo "Polybar launched"

