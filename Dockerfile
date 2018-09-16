FROM ubuntu:18.04

RUN apt-get update \
            && apt-get install -y --no-install-recommends zsh curl ca-certificates

ARG SCRIPT_URL

RUN curl -s $SCRIPT_URL | bash

ENTRYPOINT /bin/zsh


