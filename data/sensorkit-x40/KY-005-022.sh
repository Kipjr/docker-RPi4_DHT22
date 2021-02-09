#!/bin/sh
sudo apt-get install lirc -y
#boot/config.txt dtoverlay=lirc-rpi,gpio_in_pin=18,gpio_out_pin=17,gpio_in_pull=up
#sudo nano /etc/lirc/hardware.conf

# /etc/lirc/hardware.conf
#
# Arguments which will be used when launching lircd
#LIRCD_ARGS=""

#Don't start lircmd even if there seems to be a good config file
#START_LIRCMD=false

#Don't start irexec, even if a good config file seems to exist.
#START_IREXEC=false

#Try to load appropriate kernel modules
#LOAD_MODULES=true

# Run "lircd --driver=help" for a list of supported drivers.
#DRIVER="default"
# usually /dev/lirc0 is the correct setting for systems using udev
#DEVICE="/dev/lirc0"
#MODULES="lirc_rpi"

# Default configuration files for your hardware if any
#LIRCD_CONF=""
#LIRCMD_CONF=""

#test

# sudo /etc/init.d/lirc stop
# mode2 -d /dev/lirc0


# remote teach
#sudo /etc/init.d/lirc stop

#irrecord -d /dev/lirc0 ~/MeineFernbedienung.conf



#remote send
#irsend LIST MeineFernbedienung ""

#irsend SEND_ONCE MeineFernbedienung KEY_0
#irsend SEND_START MeineFernbedienung KEY_0
#irsend SEND_STOP MeineFernbedienung KEY_0
