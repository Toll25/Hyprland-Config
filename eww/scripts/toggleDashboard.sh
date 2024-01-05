#!/bin/bash

state=$(eww get dashboardIsOpen)

open_control_center() {
    if [[ -z $(eww list-windows | grep 'dashboard') ]]; then
        eww open dashboard
    fi
    eww update dashboardIsOpen=true
}

close_control_center() {
    eww update dashboardIsOpen=false
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