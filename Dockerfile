FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends stress-ng \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["stress-ng"]