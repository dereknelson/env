
# If you come from bash you might have to change your $PATH.

#export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$PATH
export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/derek/.oh-my-zsh

# zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Upgraded from powerlevel9k to powerlevel10k for instant prompt
ZSH_THEME="powerlevel10k/powerlevel10k"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
 
source $ZSH/oh-my-zsh.sh

# Powerlevel10k is backwards compatible with powerlevel9k config
# Run 'p10k configure' to customize further
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export PATH="$HOME/chrome-devtools-mcp:$PATH"

DISABLE_AUTO_TITLE="true"

precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# Removed duplicate zgen oh-my-zsh loading - already loaded above via source $ZSH/oh-my-zsh.sh


# Add Claude Code to PATH (if not automatically added during installation)
alias claude='node $NVM_DIR/versions/node/$(nvm current)/lib/node_modules/@anthropic-ai/claude-code/cli.js'

cdx() {
  if [[ "$1" == "update" ]]; then
    npm install -g @openai/codex@latest
  else
    codex \
      --model 'gpt-5-codex' \
      --full-auto \
      --config model_reasoning_effort=high \
      --config model_reasoning_summary_format=experimental \
      --search "$@"
  fi
}

#export PATH="$HOME/.yarn/bin:$PATH"
# Cached yarn global bin path (avoid slow subshell on every startup)
export PATH="$PATH:/opt/homebrew/bin"
export PATH=$PATH:~/tools/arcanist/bin
export PATH=$PATH:./node_modules/.bin
export ANDROID_HOME=$HOME/Library/Android/sdk
#aliases

alias gmm="git merge main"
alias metoo="~/metoo/code && expo-cli start"
alias openmetoo="~/metoo/code && exp-cli ios"
alias k=kubectl
alias loclogs='docker-compose logs -f nginx | grep -e "GET /userlocation" -e "GET /geofence"'
alias e="npx expo start"
alias ytdl="cd ~/documents/dragndrop && youtube-dl --extract-audio --audio-format mp3"
alias gcm="git commit -m "
alias gcma="git add . && git commit -m"
alias gc="git checkout"
alias gp="git push"
alias rc="vim ~/.zshrc && source ~/.zshrc && echo 'sourced'"
alias cherry="git cherry-pick"
alias yss="nvm use 10.8.0 && yarn start-staging"
alias spicetify="~/spicetify/spicetify"
alias rmnm="rm -rf node_modules && yarn"
alias ei="npx expo install"
alias k="kubectl"
alias ignore="git update-index --skip-worktree"
alias unignore="git update-index --no-skip-worktree"
alias ys="yarn start"
alias applyingress="k apply -f ~/metoo-backend/kubernetes-configs/metoo/ingress.yaml"
alias restartdev="k delete deployment dev-metoo && k apply -f ~/metoo-backend/kubernetes-configs/metoo/dev/local_dev_metoo.yaml"
#endalias
#functions

function nb() {
	git checkout -b $1
	git push --set-upstream origin $1
}

#function gcmap() {
#	git add .
#	echo $1
#	git commit -m $1
#	git push
#}

#export DJANGO_SETTINGS_MODULE=metoo.settings
#export PATH="/usr/local/opt/openssl/bin:$PATH"
DEFAULT_USER='Derek'
# source "/usr/local/bin/virtualenvwrapper.sh"
export WORKON_HOME="/Users/derek/.environments"
export ANDROID_SDK="/Users/derek/Library/Android/sdk"
export PATH="/Users/derek/Library/Android/sdk/platform-tools:$PATH"
#export PATH="/usr/local/opt/openssl/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/derek/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/derek/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/derek/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/derek/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.fastlane/bin:$PATH"

#. /Users/derek/.nix-profile/etc/profile.d/nix.sh
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh
export NVM_DIR=~/.nvm

# Lazy-load NVM (saves ~300-500ms on shell startup)
lazy_load_nvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
}

nvm() {
  lazy_load_nvm
  nvm "$@"
}

node() {
  lazy_load_nvm
  node "$@"
}

npm() {
  lazy_load_nvm
  npm "$@"
}

npx() {
  lazy_load_nvm
  npx "$@"
}


export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/10/bin/psql
VIRTUALENV_PYTHON=python3

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias python=/opt/homebrew/bin/python3
#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
#export PATH="/usr/local/opt/flex/bin:$PATH"
#export PATH="/usr/local/opt/bison/bin:$PATH"
#export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/openblas/lib"
#export CPPFLAGS="-I/usr/local/opt/openblas/include"

export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
export PATH="~/.local/bin:$PATH"

# bun completions
[ -s "/Users/derek/.bun/_bun" ] && source "/Users/derek/.bun/_bun"

# bun
export BUN_INSTALL="/Users/derek/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
#export PATH=$PATH:~/.docker/bin
export PATH=$PATH:/Applications/Docker.app/Contents/Resources/bin/
# Lazy-load rbenv (saves ~100-200ms on shell startup)
lazy_load_rbenv() {
  unset -f rbenv ruby gem
  eval "$(command rbenv init - zsh)"
}

rbenv() {
  lazy_load_rbenv
  rbenv "$@"
}

ruby() {
  lazy_load_rbenv
  ruby "$@"
}

gem() {
  lazy_load_rbenv
  gem "$@"
}

# pnpm
export PNPM_HOME="/Users/derek/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/bin:$PATH"

# Load secrets from secure file (not tracked in dotfiles)
[ -f ~/.env.secrets ] && source ~/.env.secrets
