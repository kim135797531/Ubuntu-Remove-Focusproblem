#!/bin/bash

LOG="/usr/share/rfocusproblem/rfocusproblem.log"

echo $(date -u) ": Execute focus keystrokes now..." > $LOG

(
	xdotool keydown alt key Tab
	sleep 0.2
	xdotool keyup alt
	sleep 0.2
	xdotool keyup alt
	sleep 0.2
	xdotool keydown Super_L key d
	sleep 0.2
	xdotool keyup alt
	sleep 0.2
	xdotool keyup Super_L
) >> $LOG 2>&1

echo $(date -u) ": Focus keystrokes done!" >> $LOG
