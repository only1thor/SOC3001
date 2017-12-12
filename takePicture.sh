#!/bin/bash
#rm capture.jpg;
sudo echo 1 > /sys/class/gpio/gpio17/value
fswebcam -r 640x480 --jpeg 95 /NodeRed/capture$1.jpg;
sudo echo 0 > /sys/class/gpio/gpio17/value
echo "capture"$1".jpg";