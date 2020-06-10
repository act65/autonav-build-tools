FROM ubuntu

<<<<<<< HEAD
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
=======
RUN apt-get update && apt-get install -y x11-apps
RUN useradd -ms /bin/bash xclocktest
USER xclocktest
WORKDIR /home/xclocktest
>>>>>>> be746b873847b381e65f23a82abc41aec1588552
