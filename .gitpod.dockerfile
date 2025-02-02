FROM gitpod/workspace-full

USER root

RUN sudo apt-get update \
    && sudo apt-get install -yq \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    ninja-build \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*
RUN sudo pip3 install meson