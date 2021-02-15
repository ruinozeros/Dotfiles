#!/bin/sh

get_icon() {
    case $1 in
        # Icons
        01d) icon="";; # f185
        01n) icon="";; # f186
        02d) icon="";; # f6c4
        02n) icon="";; # f6c3
        03*) icon="";; # f0c2
        04*) icon="";; # f0c2
        09d) icon="";; # f740
        09n) icon="";; # f740
        10d) icon="";; # f743
        10n) icon="";; # f73c
        11d) icon="";; # f0e7
        11n) icon="";; # f0e7
        13d) icon="";; # f2dc
        13n) icon="";; # f2dc
        50d) icon="";; # f550
        50n) icon="";; # f550
        *) icon="?";
    esac

    echo $icon
}

KEY="ba40303a53c7fc9293fa7e7f8a8109cf"
CITY="graz"
UNITS="metric"
SYMBOL="°"

API="https://api.openweathermap.org/data/2.5"

if [ -n "$CITY" ]; then
    if [ "$CITY" -eq "$CITY" ] 2>/dev/null; then
        CITY_PARAM="id=$CITY"
    else
        CITY_PARAM="q=$CITY"
    fi

    weather=$(curl -sf "$API/weather?appid=$KEY&$CITY_PARAM&units=$UNITS")
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        weather=$(curl -sf "$API/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
    fi
fi

if [ -n "$weather" ]; then
    weather_temp=$(echo "$weather" | jq ".main.temp" | cut -d "." -f 1)
    weather_icon=$(echo "$weather" | jq -r ".weather[0].icon")

    # extract color codes from colors.ini
    mod_bg=$(cat $HOME/.config/polybar/colors.ini | grep mod_bg | cut -d " " -f3)
    mod_fg=$(cat $HOME/.config/polybar/colors.ini | grep mod_fg | cut -d " " -f3)

    icon_bg=$(cat $HOME/.config/polybar/colors.ini | grep mod_icon_weat_bg | cut -d " " -f3)
    icon_fg=$(cat $HOME/.config/polybar/colors.ini | grep mod_icon_weat_fg | cut -d " " -f3)
   
    # use %{B#123456} for background and %{F#123456} for foreground colors
    echo "%{B$icon_bg}%{F$icon_fg} $(get_icon "$weather_icon") %{B$mod_bg}%{F$mod_fg}" "$weather_temp$SYMBOL %{B- F-}"
fi

