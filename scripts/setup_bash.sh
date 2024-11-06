#!/bin/bash

if ! command -v bash &>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install bash
  echo "Bash has been installed."
else
  brew upgrade bash
  echo "Bash has been updated."
fi

if ! grep -q "/usr/local/bin/bash" /etc/shells; then
  echo "/usr/local/bin/bash" | sudo tee -a /etc/shells > /dev/null
  echo "/usr/local/bin/bash has been added to /etc/shells."
else
  echo "/usr/local/bin/bash is already in /etc/shells."
fi

chsh -s /usr/local/bin/bash
echo "Shell changed to /usr/local/bin/bash."

echo "Setting up bash files..."
if [ -f "$HOME/.bashrc" ]; then
  echo "Backing up existing .bashrc to .bashrc.bak"
  mv "$HOME/.bashrc" "$HOME/.bashrc.bak"
fi
cp .bashrc "$HOME/.bashrc"
echo "Copied .bashrc to $HOME/.bashrc"

if [ -f "$HOME/.bash_profile" ]; then
  echo "Backing up existing .bash_profile to .bash_profile.bak"
  mv "$HOME/.bash_profile" "$HOME/.bash_profile.bak"
fi
cp .bash_profile "$HOME/.bash_profile"
echo "Copied .bash_profile to $HOME/.bash_profile"



