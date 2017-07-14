#!/bin/bash -xve
#written by tide

exc 2> /tmp/setup.log

cd /home/ubunu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*   #すぐにはデバイスファイルができないので待つ

echo 0 > /dev/rtmoteren0 #安全のためモータの電源を切っておく

