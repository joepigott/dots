#!/bin/bash

killall -q polybar

polybar complete 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched."
