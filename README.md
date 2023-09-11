# Ac Power Detection Audio
Play an Audio File every time the power cable of your Laptop is connected and disconnected.

## Installation

1. Make sure to have the mpv Player installed.
https://mpv.io/

2. add "@reboot sleep 60 && /home/$USER/pow_audio.sh"
60-Second delay to not interfere with the startup.

3. Download and put the pow_audio.sh in your home directory

4. change the File-content to point at your desired Audio files:
change the lines from "mpv /home/$USER/Music/example.mp3"

5. change File Permissions to -rwxr-xr-x with the command 
"chmod 755 pow_audio.sh"

## Usage
the Script will start after every boot.

## todo
- Right now if you start the Laptop already plugged in, it immediately plays the first audio @ startup.

## notes
this was only tested on 2 Laptops, your /sys/power_supply/* may be different.
## License
- GPL-3





