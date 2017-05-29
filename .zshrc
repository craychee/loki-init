# Path to your oh-my-zsh installation.
export ZSH=/Users/michellekrejci/.oh-my-zsh

ZSH_THEME="pygmalion"

plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

source /usr/local/share/chruby/chruby.sh

alias termibox='TERMINUS_HOST=craychee-onebox.onebox.panth.io terminus'
alias kc=kubectl
alias kall='kubectl get pods --all-namespaces'
alias kt='kubectl --namespace=testing'
alias kd='kubectl --namespace=development'
alias kp='kubectl --namespace=production'

export MTURK_SETTINGS=/Users/michellekrejci/Learn/mturk-poc/settings.cfg

# Virtualenvwrapper setup
export WORKON_HOME=$HOME/.envs
source /usr/local/bin/virtualenvwrapper.sh
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
#export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Pantheon:$HOME/Sites

# Export github token for Pants
export GITHUB_TOKEN="2cbab4041cf184c16372b5c089deb4de5fbd0d7b"

#set -o vi
bindkey -v
bindkey '^R' history-incremental-search-backward

# The next line updates PATH for the Google Cloud SDK.
source '/Users/michellekrejci/google-cloud-sdk/path.zsh.inc'
export GOOGLE_APPLICATION_CREDENTIALS='/Users/michellekrejci/.config/gcloud/application_default_credentials.json'

# The next line enables shell command completion for gcloud.
source '/Users/michellekrejci/google-cloud-sdk/completion.zsh.inc'
export PATH="/usr/local/sbin:$PATH"

# Add miniconda to path.
export PATH=/Users/michellekrejci/miniconda2/bin:$PATH

export PATH=$GOPATH/bin:$PATH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export SSH_AUTH_SOCK=$(launchctl getenv SSH_AUTH_SOCK)
# We only want to run gpg-agent on our local workstation. We accomplish that by trying to
# detect if this shell was spawned from ssh or not. If the SSH_CLIENT env var is set, then
# this is probably a remote login and we don't want to run gpg-agent.

if [ ! -n "$SSH_CLIENT" ]; then
  gpgconf --launch gpg-agent
  export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"

  GPG_TTY=$(tty)
  export GPG_TTY
fi
