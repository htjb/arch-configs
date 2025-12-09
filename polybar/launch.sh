#!/usr/bin/env bash

# Kill any existing Polybar instances
polybar-msg cmd quit 2>/dev/null || killall -q polybar

# Launch your bar
polybar mybar &

echo "Polybar launched"

