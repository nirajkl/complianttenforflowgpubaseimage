FROM gcr.io/deeplearning-platform-release/tf2-gpu.2-8:m99
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

RUN apt-get update \
    && apt-get --yes --no-install-recommends install \
        python3.8 python3-dev \
        python3-pip python3-venv python3-wheel python3-setuptools \
        build-essential cmake \
        graphviz git openssh-client  \
        libssl-dev libffi-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirement.txt /requirement.txt
RUN pip3 install -r requirement.txt
