# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$PATH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Path to your oh-my-zsh installation.
export ZSH=/Users/derek/.oh-my-zsh

# zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
 
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
 
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
 
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
 
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
 
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
 
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
 
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
 
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
 
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
 
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
 
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git,zsh-autosuggestions)
 
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)

# User configuration
 
# export MANPATH="/usr/local/man:$MANPATH"
 
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
 
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
 
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"

export PATH="$HOME/.yarn/bin:$PATH"
#export WORKON_HOME=~/.environments
#export VIRTUALENVWRAPPER_LOG_DIR="$WORKON_HOME"
#export VIRTUALENVWRAPPER_HOOK_DIR="$WORKON_HOME"
#source /usr/local/bin/virtualenvwrapper.sh
#alias makemigrations="~/.environments/metoo/bin/python ~/projects/django/metoo/manage.py #makemigrations"
#alias migrate="~/.environments/metoo/bin/python ~/projects/django/metoo/manage.py #migrate"
#alias runserver="~/.environments/metoo/bin/python ~/projects/django/metoo/manage.py #runserver"
alias metoo="~/metoo/code && expo-cli start"
alias openmetoo="~/metoo/code && exp-cli ios"
#export DJANGO_SETTINGS_MODULE=metoo.settings
export PATH="/usr/local/opt/openssl/bin:$PATH"
DEFAULT_USER='Derek'
source "/usr/local/bin/virtualenvwrapper.sh"
export WORKON_HOME="/Users/derek/.environments"
export ANDROID_SDK="/Users/derek/Library/Android/sdk"
export PATH="/Users/derek/Library/Android/sdk/platform-tools:$PATH"alias k=kubectl
alias k=kubectl
alias loclogs='docker-compose logs -f nginx | grep -e "GET /userlocation" -e "GET /geofence"'
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/derek/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/derek/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/derek/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/derek/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.fastlane/bin:$PATH"

. /Users/derek/.nix-profile/etc/profile.d/nix.sh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
