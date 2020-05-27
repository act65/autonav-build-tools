#!/bin/bash
xhost +local:docker

# docker run -it \
#--env="DISPLAY=unix$DISPLAY" \
#--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#autonav:local

docker run -it \
--env="DISPLAY=$DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
autonav:local
