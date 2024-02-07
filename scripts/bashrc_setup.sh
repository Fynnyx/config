#!/bin/bash

# Path to the custom bashrc file
custom_bashrc="../.bashrc"

# Check if the custom bashrc file exists
if [ -f "$custom_bashrc" ]; then
    # Add sourcing of custom bashrc to the main bashrc
    echo "source $custom_bashrc" >> ~/.bashrc
    echo >> ~/.bashrc
    echo "Custom bashrc sourced in ~/.bashrc"
else
    echo "Custom bashrc file not found at $custom_bashrc"
fi