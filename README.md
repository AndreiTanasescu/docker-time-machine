# [Docker Tim🍎 Machine](https://ms-jpq.github.io/docker-time-machine)

Zero Configuration. Time machine for MacOS

Thank you Tim🍏, very cool.

## Show me

[![Docker Pulls](https://img.shields.io/docker/pulls/drdrei/tmachine.svg)](https://hub.docker.com/r/drdrei/tmachine/)

```sh

# 
docker run --hostname time_machine --ip 192.168.2.200 --net=homelan --expose 139 --expose 445 -v /backups/time_machine/:/share drdrei/tmachine

```

- User: `dog`
- Password : `dog`

Why? Because I like dogs.

## Fancy

| Environmental Variables   | Description          |
| ------------------------- | -------------------- |
| `SMB_NAME='Time Machine'` | what you see from 💻 |
| `SMB_USER=dog`            | your login           |
| `SMB_PASSWORD=dog`        | your password        |
| `PGID=0`                  | user gid (advanced)  |
| `PUID=0`                  | user uid (advanced)  |

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

## Very important

Say hi to my dog!

![my dog](https://raw.githubusercontent.com/ms-jpq/docker-time-machine/tim-apple/preview/dog.JPG)
