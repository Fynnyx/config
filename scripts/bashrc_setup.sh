#!/bin/bash

# Path to the custom bashrc file
custom_bashrc=".bashrc"

# Check if the custom bashrc file exists
if [ -f "$custom_bashrc" ]; then
    # Create a symlink to the custom bashrc file
    echo "$(realpath $custom_bashrc)"
    ln -sf "$(realpath $custom_bashrc)" ~/.custom_bashrc

    # Add sourcing of custom bashrc symlink to the main bashrc
    echo "source ~/.custom_bashrc" >> ~/.bashrc
    echo >> ~/.bashrc
    echo "Custom bashrc symlink sourced in ~/.bashrc"
else
    echo "Custom bashrc file not found"
fi