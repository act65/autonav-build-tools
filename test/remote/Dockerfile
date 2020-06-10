FROM ubuntu

RUN apt-get update && apt-get install -y xauth sudo x11-apps
ENV USERNAME telfaralex

RUN useradd -ms /bin/bash $USERNAME
#RUN useradd -m $USERNAME && \
#        echo "$USERNAME:$USERNAME" | chpasswd && \
#        usermod --shell /bin/bash $USERNAME && \
#        usermod -aG sudo $USERNAME && \
#        echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
#        chmod 0440 /etc/sudoers.d/$USERNAME && \
#        usermod --uid 55676 $USERNAME && \
#        groupmod --gid 23 $USERNAME


USER $USERNAME
WORKDIR /home/$USERNAME
