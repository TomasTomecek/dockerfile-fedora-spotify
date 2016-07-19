#!/bin/bash
xhost +
docker run \
    --net host \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=/.Xauthority \
    -v ~/.Xauthority:/.Xauthority:ro \
    -v ~/:/home/spotify:rw \
    --device /dev/snd \
    --device /dev/dri \
    --name spotify \
    -ti \
    -v /dev/shm:/dev/shm \
    -v /etc/machine-id:/etc/machine-id \
    -e DBUS_SESSION_BUS_ADDRESS \
    $USER/spotify

#    -v /etc/localtime:/etc/localtime:ro \
#    -v /run:/run \
