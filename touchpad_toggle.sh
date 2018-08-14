#!/bin/bash

DEV="SynPS/2 Synaptics TouchPad"
STATE=$(xinput list-props "$DEV" | grep "Device Enabled" | sed -e "s/.*:*\([0-1]\)/\1/")

if [ $STATE = "1" ]; then
    xinput disable "$DEV"
else
    xinput enable "$DEV"
fi