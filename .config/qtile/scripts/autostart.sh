#!/bin/bash

function run {
	if ! pgrep $1 ;
	then
		$@ &
	fi;
}

setxkbmap -layout us -model thinkpad -variant colemak -option ctrl:nocaps &

feh --bg-scale ~/.config/qtile/wall.png || feh --bg-scale ~/.config/qtile/wall.jpg & 
picom -b &

#run nm-applet &
#run blueberry-tray &
#run volumeicon &
