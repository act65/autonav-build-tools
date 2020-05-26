FROM ros:kinetic-ros-base

COPY ./keyboard /etc/default/keyboard

RUN sudo apt-get update
RUN sudo apt-get install -y firefox xorg openbox

RUN groupadd -r firefoxtest && useradd -r -g firefoxtest -G audio,video firefoxtest

USER firefoxtest
