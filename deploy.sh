#!/bin/bash

distrobox create \
    --name workstation \
    --hostname $HOSTNAME \
    --image docker.io/neelaundhia/workstation-seed:43 \
    --home $HOME/.distrobox/workstation
