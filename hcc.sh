#!/bin/zsh
auth="abcdEFGHijklMNOPqrst12"
url="homecontrol://x-callback-url/run-action?"
action=$1
id=$(echo "$2" | sed -E 's/ /%20/g')
value=$3
if [ $action = "scene" ]; then
  url="${url}action-type=trigger-scene&item-name=${id}"
elif [ $action = "power" ]; then
  url="${url}action-type=switch-device-status&item-type=device&item-name=${id}&activation-mode="
  if [ $value = "off" ]; then
    url="${url}deactivate"
  else;
    url="${url}activate"
  fi
elif [ $action = "bright" -o $action = "hue" -o $action = "sat" -o $action = "temp" ]; then
  url="${url}action-type=change-device-property&item-type=device&item-name=${id}&property-type="
  if [ $action = "bright" ]; then
    url="${url}light-brightness"
  elif [ $action = "hue" ]; then
    url="${url}light-hue"
  elif [ $action = "sat" ]; then
    url="${url}light-saturation"
  elif [ $action = "temp" ]; then
    url="${url}light-color-temperature"
  fi
  url="${url}&property-value=${value}"
fi

url="${url}&authentication-token=${auth}"
open -g $url