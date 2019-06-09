#!/bin/bash

# Installs Homebrew, Git, git-extras, git-friendly, hub, Node.js, etc.

# Ask for the administrator password upfront
sudo -v

# Install Homebrew
#command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# GNU core utilities (those that come with macOS are outdated)
brew install coreutils

# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
brew install tree

# More recent versions of some macOS tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Git
brew install git
brew install git-extras
# git-friendly
curl -sS https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh | bash

# Extend global $PATH
echo -e "setenv PATH $HOME/dotfiles/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin" | sudo tee /etc/launchd.conf

# Everything else
brew install ripgrep
brew install gist
brew install exiftool
brew install zsh-syntax-highlighting
brew install fd
brew install fzf && $(brew --prefix)/opt/fzf/install
brew install bat
brew install proselint
brew install yarn

# Node
# n, Node version manager
curl -L http://git.io/n-install | bash
npm config set loglevel warn

# Remove outdated versions from the cellar
brew cleanup


mkdir tools
cd tools

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
echo "source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/tools/zsh-autosuggestions
echo "source~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

brew tap sambadevi/powerlevel9k
brew install powerlevel9k
