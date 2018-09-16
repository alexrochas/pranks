FROM ubuntu:18.04

RUN apt-get update \
            && apt-get install -y --no-install-recommends zsh

WORKDIR sandbox

ARG SCRIPT

COPY $SCRIPT ./script.sh

RUN chmod +x ./script.sh

RUN ./script.sh

ENTRYPOINT /bin/zsh


