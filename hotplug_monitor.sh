#!/bin/bash

export DISPLAY=:0.0
export XAUTHORITY=/home/andres/.Xauthority
 
function connect(){
	read VGA_WIDTH  VGA_HEIGHT  < <( xrandr -q | awk -F'[ \t]+|x' 'found==1 && /.*\+.*/ {print($2, $3); exit}; /VGA1/ { found=1 }' )
	read LVDS_WIDTH LVDS_HEIGHT < <( xrandr -q | awk -F'[ \t]+|x' 'found==1 && /.*\+.*/ {print($2, $3); exit}; /LVDS1/ { found=1 }' )
	xrandr --output VGA1 --primary --auto --pos 0x0 --output LVDS1 --pos "${VGA_WIDTH}x$((${VGA_HEIGHT}-${LVDS_HEIGHT}))"
	setxkbmap ee -variant us -option caps:escape
}
 
function disconnect(){
	xrandr --output LVDS1 --primary --output VGA1 --off
}
 
xrandr | grep "VGA1 connected" &> /dev/null && connect || disconnect
