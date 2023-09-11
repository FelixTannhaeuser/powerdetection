#!/bin/bash

#date:21:08:23
#make thing if batttery is charing!, /sys/class/power_supply_BAT0/status=charging/discharging

#or /sys/class/power_supply/AC/online = 0/1

while true
	do
		while (( $(cat "/sys/class/power_supply/AC/online") != "1" ))
			do
			echo "out"
			sleep 1
		done
	#once
		mpv /home/$USER/Music/example.mp3  #CHANGE TO YOUR MP3 FILE HERE
		#this Code will run once as soon as power is pluged in.
echo "once"
		while (( $(cat "/sys/class/power_supply/AC/online") != "0" ))
			do
			echo "in"
			sleep 1
		done
		#once @ plugin
echo "once"
		mpv /home/$USER/Music/example2.mp3  #CHANGE TO YOUR MP3 FILE HERE
		#this code will run once as soon as the powercabel is disconnectet.
done
