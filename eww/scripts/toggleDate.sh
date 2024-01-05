#!/bin/bash

state=$(eww get dateIsOpen)

open_control_center() {
    #if [[ -z $(eww active-windows | grep 'date') ]]; then
    #    eww open date
    #fi
    eww update dateIsOpen=true
}

close_control_center() {
    eww update dateIsOpen=false
}

case $1 in
    close)
        close_control_center
        exit 0;;
esac

case $state in
    true)
        close_control_center;;
    false)
        open_control_center;;
esac