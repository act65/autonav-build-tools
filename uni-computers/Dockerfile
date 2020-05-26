FROM autonav:headless

RUN apt-get install -y x11-apps xauth

#Add new sudo user
ENV USERNAME act65
RUN useradd -m $USERNAME && \
        echo "$USERNAME:$USERNAME" | chpasswd && \
        usermod --shell /bin/bash $USERNAME && \
        usermod -aG sudo $USERNAME && \
        echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
        chmod 0440 /etc/sudoers.d/$USERNAME && \
        usermod --uid 1000 $USERNAME && \
        groupmod --gid 1000 $USERNAME


# usermod --uid 55676 $USERNAME && \
# groupmod --gid 23 $USERNAME
