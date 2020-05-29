## Install / run

To run locally

```
cd local
docker build --rm . -t autonav:local
./launch_docker.sh

(now inside the container)

./launch.sh train ppo headless 0 /tmp/test
```

Args for `./launch.sh` are "{train|test} {ppo|hrl|ddpg|ok} {headless|\*} {savedir} {loaddir}"

## Refs

- https://ecs.wgtn.ac.nz/Support/TechnicalNotes
- https://github.com/SfTI-Robotics/Autonav-RL-Gym
- http://wiki.ros.org/docker/Tutorials/Docker
- http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
- http://wiki.ros.org/docker/Tutorials/GUI
