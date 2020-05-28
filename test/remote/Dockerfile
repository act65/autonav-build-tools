FROM test:local

RUN apt-get install -y xauth sudo

#Add new sudo user
ENV USERNAME telfaralex
RUN useradd -m $USERNAME && \
        echo "$USERNAME:$USERNAME" | chpasswd && \
        usermod --shell /bin/bash $USERNAME && \
        usermod -aG sudo $USERNAME && \
        echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
        chmod 0440 /etc/sudoers.d/$USERNAME && \
        usermod --uid 55676 $USERNAME && \
        groupmod --gid 23 $USERNAME

USER telfaralex

# usermod --uid 55676 $USERNAME && \
# groupmod --gid 23 $USERNAME
