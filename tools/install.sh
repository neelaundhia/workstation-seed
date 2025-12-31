#!/bin/bash

echo "Starting installation of UI tools..."
for script in ./ui/*/install.sh; do
    bash "$script"
done

echo "Starting installation of CLI tools..."
for script in ./cli/*/install.sh; do
    bash "$script"
done
