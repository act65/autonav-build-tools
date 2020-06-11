FROM ubuntu

RUN apt-get update && apt-get install -y xauth sudo x11-apps
ENV USERNAME telfaralex

RUN useradd -ms /bin/bash $USERNAME

USER $USERNAME
WORKDIR /home/$USERNAME
