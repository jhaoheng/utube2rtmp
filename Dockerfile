FROM        ubuntu:16.04

RUN         apt-get update
RUN         apt-get install vim -y
RUN         apt-get install ffmpeg -y

WORKDIR     /HOME
COPY        ./feeder.sh         /HOME
RUN         chmod +x /HOME/feeder.sh
