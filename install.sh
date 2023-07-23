#!/bin/bash

# Install Homebrew if it's not installed
if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install Applications
echo "Installing Applications..."
brew install --cask google-chrome visual-studio-code zoom gifox microsoft-teams rectangle slack sourcetree postman google-drive alfred iterm2 docker ngrok sketch figma

echo "Applications have been installed successfully."
