#!/bin/sh

#
# a example to send message to sm by dbus-send
#
# yan(a0726h77[AT]gmail.com)
#

dbus_send_string()
{
    dbus-send --session --type=method_call --print-reply --dest=org.sm.EventService /BaseObject org.sm.SampleInterface.AddString string:"$1"
}

sleep 2

dbus_send_string '123'

sleep 2

dbus_send_string '456'

sleep 2

dbus_send_string '789'

