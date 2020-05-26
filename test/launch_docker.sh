#!/bin/bash
docker run -it \
--net=host \
-u telfaralex \
--name test1 \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
test:firefox
