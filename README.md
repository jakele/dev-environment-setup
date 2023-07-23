# Dev Environment Setup

This repository contains my personal development environment setup. It includes a collection of configuration files (dotfiles) and scripts that automate the setup of a new machine. I use macOS, and these scripts reflect that.

## Getting Started

Here's how to get my dev environment up and running on a new machine:

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/dev-environment.git
   cd dev-environment
   ```
2. Run the `setup.sh` script:

   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

   This will install `oh-my-zsh`, `Google Cloud SDK`, `nvm`, `python`, `node`, and also copies the `settings.json` for VS Code and `.zshrc` file to their respective locations.

3. Install applications by running the `install_apps.sh` script:
   ```bash
   chmod +x install_apps.sh
   ./install_apps.sh
   ```
   This will install a list of applications I commonly use, such as `Chrome`, `VS Code`, `Zoom`, `Gifox`, `Microsoft Teams`, `Rectangle`, `Slack`, `SourceTree`, `Postman`, `Google Drive`, `Alfred 4`, `iTerm2`, `Docker`, `Ngrok`, `Sketch`, and `Figma`.

That's it! This will get your new machine set up with the same environment I use for my development work.

## Dotfiles

The included dotfiles are:

- `.zshrc` - My zsh configuration file.
- `settings.json` - My VS Code configuration file.

These are copied to their respective locations in the home directory by the `setup.sh` script.

## Feedback

If you have suggestions or improvements, feel free to open an issue or make a pull request.
