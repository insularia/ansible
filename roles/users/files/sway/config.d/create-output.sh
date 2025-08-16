#!/bin/bash

swaymsg -pt get_outputs | grep "HEADLESS-1" > /dev/null
if [ $? -eq 1 ]; then
    swaymsg create_output
fi
