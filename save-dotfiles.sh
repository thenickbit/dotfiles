#!/bin/bash

# Check if the script is run from the dotfiles directory
if [ ! -d .git ]; then
  echo "Error: This script must be run from the root of the dotfiles repository."
  exit 1
fi

# Stage all changes
git add -A

# Check if there are any changes to commit
if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

commit_message="Update dotfiles: $(date '+%d/%m, %H:%M:%S, %Z')"

# Commit changes
git commit -m "$commit_message"

# Push changes to the remote repository
git push

echo "All changes committed and pushed successfully!"
