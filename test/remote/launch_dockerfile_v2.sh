# Prepare target env
CONTAINER_DISPLAY="0"
CONTAINER_HOSTNAME="test"

# Create a directory for the socket
mkdir -p /tmp/display/socket
touch /tmp/display/Xauthority
chmod -R 777 /tmp/display/

# Get the DISPLAY slot
DISPLAY_NUMBER=$(echo $DISPLAY | cut -d. -f1 | cut -d: -f2)

# Extract current authentication cookie
AUTH_COOKIE=$(xauth list | grep "^$(hostname)/unix:${DISPLAY_NUMBER} " | awk '{print $3}')

# Create the new X Authority file
xauth -f /tmp/display/Xauthority add ${CONTAINER_HOSTNAME}/unix:${CONTAINER_DISPLAY} MIT-MAGIC-COOKIE-1 ${AUTH_COOKIE}

# Proxy with the :0 DISPLAY
# socat UNIX-LISTEN:/tmp/display/socket/X${CONTAINER_NUMBER} TCP4:localhost:60${DISPLAY_NUMBER} &
socat TCP4:localhost:60${DISPLAY_NUMBER} UNIX-LISTEN:/tmp/display/socket/X${CONTAINER_DISPLAY} &
# socat TCP-LISTEN:60${DISPLAY_NUMBER},reuseaddr,fork UNIX-CLIENT:/tmp/display/socket/X${CONTAINER_NUMBER}


# Launch the container
docker run -it --rm \
  -e DISPLAY=:${CONTAINER_DISPLAY} \
  -v /tmp/display/socket:/tmp/.X11-unix \
  -v /tmp/display/Xauthority:/home/telfaralex/.Xauthority \
  --hostname ${CONTAINER_HOSTNAME} \
  test:remote \
  xclock
