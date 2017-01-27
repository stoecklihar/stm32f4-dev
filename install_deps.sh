#!/bin/bash

set -e
set -u

cd $(dirname $0)

apt-get update

apt-get install -y \
    build-essential \
    git-core \
    libzmq-dev \
    python-dev \
    python-pip

pip install \
    apache-libcloud==1.5.0 \
    futures==3.0.5 \
    Jinja2==2.7.2 \
    MarkupSafe==0.18 \
    msgpack-python==0.3.0 \
    pycrypto==2.6.1 \
    PyYAML==3.10 \
    pyzmq==14.0.1 \
    requests==2.2.1 \
    tornado==4.4.2
