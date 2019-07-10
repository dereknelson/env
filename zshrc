# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$PATH

source ~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/derek/.oh-my-zsh

# zplug "zsh-users/zsh-syntax-highlighting", defer:2

ZSH_THEME="powerlevel9k/powerlevel9k"
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git,zsh-autosuggestions)
 
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs) 

export PATH="$HOME/.yarn/bin:$PATH"

#aliases

alias metoo="~/metoo/code && expo-cli start"
alias openmetoo="~/metoo/code && exp-cli ios"
alias k=kubectl
alias loclogs='docker-compose logs -f nginx | grep -e "GET /userlocation" -e "GET /geofence"'
alias e="expo start"
alias ytdl="cd ~/documents/dragndrop && youtube-dl --extract-audio --audio-format mp3"
alias gcm="git commit -m "
alias gcma="git add . && git commit -m"
alias rc="vim ~/.zshrc && source ~/.zshrc && echo 'sourced'"
alias src="source ~/.zshrc"
alias gc="git checkout"

#functions
function nb() {
	git checkout -b $1
	git push --set-upstream origin $1
}

#export DJANGO_SETTINGS_MODULE=metoo.settings
export PATH="/usr/local/opt/openssl/bin:$PATH"
DEFAULT_USER='Derek'
source "/usr/local/bin/virtualenvwrapper.sh"
export WORKON_HOME="/Users/derek/.environments"
export ANDROID_SDK="/Users/derek/Library/Android/sdk"
export PATH="/Users/derek/Library/Android/sdk/platform-tools:$PATH"alias k=kubectl
export PATH="/usr/local/opt/openssl/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/derek/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/derek/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/derek/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/derek/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.fastlane/bin:$PATH"

#. /Users/derek/.nix-profile/etc/profile.d/nix.sh
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
