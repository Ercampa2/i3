#!/bin/bash
function ah() {
    cur=$(brightnessctl get)
    cur2=$((cur * 100 / 187))
    echo "${cur2}"
}

function brightness_up () {
    brightnessctl set +5%
    dunstify "  $(ah) %" -r 3003
}

function brightness_down () {
    brightnessctl set 5%-
    dunstify "  $(ah) %" -r 3003
}

case $1 in 
    brightness_up)
        brightness_up
    ;;
    brightness_down)
        brightness_down
    ;;
esac

