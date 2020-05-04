#!/bin/bash
xhost +local:docker

docker run -it \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
autonav:v4 \
# ./src/Autonav-RL-Gym/launch.sh train ppo



# docker run -it \
# --user=telfaralex \
# --env="DISPLAY"  \
# --volume="/etc/group:/etc/group:ro" \
# --volume="/etc/password:/etc/password:ro" \
# --volume="/etc/shadow:/etc/shadow:ro" \
# --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
# --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
# autonav:nvidia-v2 \
