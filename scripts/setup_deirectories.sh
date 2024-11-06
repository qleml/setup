#!/bin/bash

dirs=(
  "$HOME/bin"
  "$HOME/dev"
  "$HOME/dotfiles"
  "$HOME/envs"
  "$HOME/tools"
)

for dir in "${dirs[@]}"; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "Created: $dir"
  else
    echo "Already exists: $dir"
  fi
done