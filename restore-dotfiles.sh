#!/bin/bash

# Script to stow all subdirectories in the dotfiles repository

# Check if the script is run from the dotfiles directory
if [ ! -d .git ]; then
  echo "Error: This script must be run from the root of the dotfiles repository."
  exit 1
fi

# Loop through all subdirectories
for dir in */; do
  if [ -d "$dir" ]; then
    echo "Stowing $dir..."
    stow -v "$dir"
  fi
done

echo "All configurations stowed successfully!"
