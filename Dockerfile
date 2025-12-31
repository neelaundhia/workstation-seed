FROM quay.io/fedora/fedora-toolbox:43

WORKDIR /tmp
COPY tools .

RUN ./install.sh
