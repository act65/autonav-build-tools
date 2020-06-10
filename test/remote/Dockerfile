FROM ubuntu

RUN apt-get update && apt-get install -y x11-apps
RUN useradd -ms /bin/bash xclocktest
USER xclocktest
WORKDIR /home/xclocktest
