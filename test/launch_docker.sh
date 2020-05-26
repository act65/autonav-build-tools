#!/bin/bash
xhost +local:docker

docker run -it \
	--net host \
  --env="DISPLAY"  \
  --env="QT_X11_NO_MITSHM=1"  \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
  browsers:firefox \
  firefox
