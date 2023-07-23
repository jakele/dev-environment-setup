#!/bin/bash

# Install Oh My Zsh
if [ ! -d "~/.oh-my-zsh" ] ; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh is already installed."
fi

# Install Google Cloud SDK
if [ ! -d "~/google-cloud-sdk" ] ; then
    echo "Installing Google Cloud SDK..."
    curl https://sdk.cloud.google.com | bash
    exec -l $SHELL
    gcloud init
else
    echo "Google Cloud SDK is already installed."
fi

# Install NVM, Node
if [ ! -d "~/.nvm" ] ; then
    echo "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    source ~/.nvm/nvm.sh
    echo "Installing Node.js..."
    nvm install node
    nvm use node
else
    echo "NVM is already installed."
fi

# Install Python
echo "Installing Python..."
brew install python

echo "Installation complete."

# Copy settings.json to VS Code settings directory
cp settings.json ~/Library/Application\ Support/Code/User/settings.json

# Copy .zshrc to home directory
cp .zshrc ~/

echo "Configuration files have been copied successfully."
