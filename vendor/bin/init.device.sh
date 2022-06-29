#! /vendor/bin/sh

# lenovo id
BOARD_ID_PATH=/sys/devices/soc0/platform_lenovo_hardware_type
BOARD_ID="$(cat $BOARD_ID_PATH 2>/dev/null)"

if [ "$BOARD_ID" = "S82939AA1" ] || [ "$BOARD_ID" = "S82939BA1" ] || [ "$BOARD_ID" = "S82939FA1" ] ; then
   setprop persist.radio.multisim.config dsds
   setprop ro.telephony.default_network 9,9
else
   setprop persist.radio.multisim.config none
   setprop ro.telephony.default_network 9
fi
