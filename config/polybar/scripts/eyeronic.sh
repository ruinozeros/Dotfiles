#!/bin/bash


txtfile=/tmp/disable 

C_INACTIVE=#4a4a4a
C_GREEN=#30e99a

case "$1" in
--toggle)
    state=$(eyeronic --toggle)

    if [ "$state" == "ON" ]; then
        echo "%{F-} "
    elif [ "$state" == "OF" ]; then
        echo "%{F$C_INACTIVE} %{F-}"
    else
        echo ""
    fi
    ;;

--animation)
    perc=$(eyeronic --percent)

    if [ $perc -lt 30 ]; then
        echo " "
    elif [ $perc -lt 60 ]; then
        echo " "
    else
        echo " "
    fi
    ;;

--cool)
    STAT=$(eyeronic --status)
    TIME=${STAT:4}
    STAT=${STAT::2}

    # replace 0 with ' '
    if [ "${TIME:4:1}" == "0" ]; then
        TIME=" $TIME"
    fi

    if [ "$STAT" == "ON" ]; then
        echo "$((10#$TIME)) min "
    elif [ "$STAT" == "PS" ]; then
        echo "%{F$C_GREEN}$((10#$TIME)) min "
    else
        echo "%{F$C_INACTIVE}off  %{F-}"
    fi
    ;;
*)
    state=$(eyeronic --status)

    if [ "${state::2}" == "ON" ]; then
        echo "%{F-} "
    elif [ "${state::2}" == "OF" ]; then
        echo "%{F$C_INACTIVE} %{F-}"
    else
        echo ""
    fi
    ;;
esac


