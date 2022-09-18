# Time machine on docker

Zero Configuration. Time machine for MacOS



## Show me

[![Docker Pulls](https://img.shields.io/docker/pulls/drdrei/tmachine.svg)](https://hub.docker.com/r/drdrei/tmachine/)

```sh

# 

docker network create -d ipvlan homelan --subnet=192.168.2.0/24 --gateway=192.168.2.1 -o parent=eno1 -o ipvlan_mode=l2

docker run --hostname time_machine --ip 192.168.2.200 --net=homelan --expose 139 --expose 445 -v /backups/time_machine/:/share drdrei/tmachine

```


## Docker Compose

```yaml
---
version: "3.7"

services:
  time_machine:
    image: drdrei/tmachine
    container_name: time-machine
    restart: unless-stopped
    network_mode: host
    volumes:
      - ./:/share
```

