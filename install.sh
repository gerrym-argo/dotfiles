#!/bin/bash

# Copy or symlink .bash_aliases to the home directory
ln -sf "$(pwd)/.bash_aliases" "$HOME/.bash_aliases"

# Ensure .bashrc sources .bash_aliases if it isn't already configured to do so
if ! grep -q ".bash_aliases" "$HOME/.bashrc"; then
  echo 'if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi' >> "$HOME/.bashrc"
fi

