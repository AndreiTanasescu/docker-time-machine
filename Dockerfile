FROM ubuntu:latest



## S6 Overlay
RUN mkdir /_install

ENTRYPOINT ["/init"]


## Dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
    gettext-base samba avahi-daemon


## Scripts
COPY root /
ENV PGID=0 \
    PUID=0 \
    SMB_NAME='Andrei Time Machine' \
    SMB_USER=dog \
    SMB_PASSWORD=dog
VOLUME ["/share"]


## Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -r /_install
