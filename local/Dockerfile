FROM ros:kinetic-ros-base

SHELL ["/bin/bash", "-c"]
ENV ROS_WS /opt/ros_ws
WORKDIR $ROS_WS
RUN apt-get update && apt-get install --no-install-recommends -y \
    ros-kinetic-gazebo-* \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y ros-kinetic-joy ros-kinetic-teleop-twist-joy \
ros-kinetic-teleop-twist-keyboard ros-kinetic-laser-proc ros-kinetic-rgbd-launch \
ros-kinetic-depthimage-to-laserscan ros-kinetic-rosserial-arduino \
ros-kinetic-rosserial-python ros-kinetic-rosserial-server \
ros-kinetic-rosserial-client ros-kinetic-rosserial-msgs ros-kinetic-amcl \
ros-kinetic-map-server ros-kinetic-move-base ros-kinetic-urdf ros-kinetic-xacro \
ros-kinetic-compressed-image-transport ros-kinetic-rqt-image-view \
ros-kinetic-gmapping ros-kinetic-navigation ros-kinetic-interactive-markers \
ros-kinetic-ros-control ros-kinetic-ros-controllers

RUN mkdir -p $ROS_WS/src
WORKDIR $ROS_WS/src

RUN git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
RUN git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
RUN git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
RUN git clone https://github.com/ros-simulation/gazebo_ros_pkgs.git

# RUN git clone https://github.com/act65/Autonav-RL-Gym.git

WORKDIR $ROS_WS
RUN source /opt/ros/kinetic/setup.bash && catkin_make

RUN apt-get install -y gnome-terminal

### install the python dependencies
RUN apt-get install -y python-pip
RUN pip install --upgrade pip
RUN pip install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install future

WORKDIR $ROS_WS/src/Autonav-RL-Gym
