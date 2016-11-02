#!/bin/bash

APPS="zsh vim git tmux"

for app in $APPS
do
  echo "symlinking configuration for: $app"
  stow -t ~/ $app
done
