FROM ubuntu:18.04

RUN apt-get update \
            && apt-get install -y --no-install-recommends zsh curl ca-certificates

WORKDIR sandbox

ARG SCRIPT_URL

# COPY $SCRIPT ./script.sh
RUN curl -L $SCRIPT_URL >> ./script.sh

RUN chmod +x ./script.sh

RUN ./script.sh

ENTRYPOINT /bin/zsh


