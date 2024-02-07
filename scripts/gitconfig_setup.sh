#!/bin/bash

# Set up gitconfig
if [ -L ~/.gitconfig ]; then
    rm ~/.gitconfig
fi
ln -s "$(readlink -f .gitconfig)" ~/.gitconfig
