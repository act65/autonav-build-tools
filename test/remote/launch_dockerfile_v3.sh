#!/bin/bash

# Set up xauth
XAUTH=/tmp/.docker.xauth
touch $XAUTH
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# Prepare target env
CONTAINER_DISPLAY="0"
CONTAINER_HOSTNAME="test"

# Create a directory for the socket
mkdir -p /tmp/display/socket
chmod -R 777 /tmp/display/

# Get the DISPLAY slot
DISPLAY_NUMBER=$(echo $DISPLAY | cut -d. -f1 | cut -d: -f2)

# Proxy with the :0 DISPLAY
# socat UNIX-LISTEN:/tmp/display/socket/X${CONTAINER_DISPLAY} TCP4:localhost:60${DISPLAY_NUMBER} &
socat TCP4:localhost:60${DISPLAY_NUMBER} UNIX-LISTEN:/tmp/display/socket/X${DISPLAY_NUMBER} &
# socat TCP4-LISTEN:60${DISPLAY_NUMBER},reuseaddr,fork UNIX-CLIENT:/tmp/display/socket/X${CONTAINER_NUMBER}

# Launch the container
docker run -it --rm \
  -e DISPLAY=:${CONTAINER_DISPLAY} \
  -v /tmp/display/socket:/tmp/.X11-unix \
  --volume=$XAUTH:$XAUTH:rw \
  --hostname ${CONTAINER_HOSTNAME} \
  test:remote \
  xclock

