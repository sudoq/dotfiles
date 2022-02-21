# Path to your oh-my-zsh installation.
export ZSH=/Users/simonlindroos/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="daveverwer"
# ZSH_THEME="miloshadzic"
#

# Auto complete
zstyle ':completion:*' menu select

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
plugins=(git shrink-path kubetail)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

source ~/.bash_profile
source ~/.bash_aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export GOPATH=$HOME/Projects/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/Projects/go/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin/kafka/bin
export EDITOR="vim"
export ANSIBLE_NOCOWS=1
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
export PATH="/usr/local/opt/freetds@0.91/bin:$PATH"


export PATH=$PATH:/usr/local/Cellar/gettext/0.19.8.1/bin

function color {
    case $1 in
    green)
    echo -e "\033]6;1;bg;red;brightness;5\a"
    echo -e "\033]6;1;bg;green;brightness;196\a"
    echo -e "\033]6;1;bg;blue;brightness;107\a"
    ;;
    red)
    echo -e "\033]6;1;bg;red;brightness;255\a"
    echo -e "\033]6;1;bg;green;brightness;63\a"
    echo -e "\033]6;1;bg;blue;brightness;52\a"
    ;;
    orange)
    echo -e "\033]6;1;bg;red;brightness;255\a"
    echo -e "\033]6;1;bg;green;brightness;168\a"
    echo -e "\033]6;1;bg;blue;brightness;1\a"
    ;;
    blue)
    echo -e "\033]6;1;bg;red;brightness;60\a"
    echo -e "\033]6;1;bg;green;brightness;64\a"
    echo -e "\033]6;1;bg;blue;brightness;198\a"
    ;;
    yellow)
    echo -e "\033]6;1;bg;red;brightness;255\a"
    echo -e "\033]6;1;bg;green;brightness;211\a"
    echo -e "\033]6;1;bg;blue;brightness;42\a"
    ;;
    esac
 }

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export PATH="/usr/local/opt/ruby/bin:$PATH"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

function fixdns {
	sudo dscacheutil -flushcache
	sudo killall -HUP mDNSResponder
}

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PATH="/Users/simonlindroos/Library/Python/2.7/bin:$PATH"
export PATH="/Users/simonlindroos/Library/Python/3.8/bin:$PATH"

source <(kubectl completion zsh)
source <(skaffold completion zsh)
source <(minikube completion zsh)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CLICOLOR=1
export TERM=xterm-256color

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

function k8s_pod_resources() {
  namespace="${1:-default}"
  columns="\
    NAME:.metadata.name,\
    CPU(Req):.spec.containers[*].resources.requests.cpu,\
    MEM(Req):.spec.containers[*].resources.requests.memory,\
    CPU(Lim):.spec.containers[*].resources.limits.cpu,\
    MEM(Lim):.spec.containers[*].resources.limits.memory"
  resources=$(kubectl -n $namespace get pod -o custom-columns=$(echo $columns | tr -d ' '))
  usage=$(kubectl -n $namespace top pods)
  join --nocheck-order <(echo "$resources") <(echo "$usage") | column -t
}
function k8s_node_resources() {
  columns="\
    NAME:.metadata.name,\
    CPU(Cap):.status.capacity.cpu,\
    MEM(Cap):.status.capacity.memory,\
    CPU(Alloc):.status.allocatable.cpu,\
    MEM(Alloc):.status.allocatable.memory"
  resources=$(kubectl get node -o custom-columns=$(echo $columns | tr -d ' '))
  usage=$(kubectl top node)
  join --nocheck-order <(echo "$resources") <(echo "$usage") | column -t
}

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/simonlindroos/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/simonlindroos/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/simonlindroos/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/simonlindroos/google-cloud-sdk/completion.zsh.inc'; fi
