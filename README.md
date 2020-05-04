## Install / run

Run locally

```
cd local
docker build --rm . -t autonav:v1
./launch_docker.sh

cd src/Autonav-RL-Gym
./launch.sh train ppo
```

## Refs

- https://ecs.wgtn.ac.nz/Support/TechnicalNotes
- https://github.com/SfTI-Robotics/Autonav-RL-Gym
- http://wiki.ros.org/docker/Tutorials/Docker
- http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
- http://wiki.ros.org/docker/Tutorials/GUI
