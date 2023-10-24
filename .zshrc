# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/Users/drazen/.local/share/solana/install/active_release/bin:$PATH"
export PATH="/Users/drazen/flutter/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="/Users/drazen/.oh-my-zsh"
export ZSH_DISABLE_COMPFIX='true'

# history config
export HISTFILE="/Users/drazen/.zsh_history"
export HISTSIZE=500000
export SAVEHIST=100000

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.data"

setopt    sharehistory
setopt    incappendhistory

# zsh fsf history search #https://github.com/joshskidmore/zsh-fzf-history-search
export ZSH_FZF_HISTORY_SEARCH_EVENT_NUMBERS=0
export ZSH_FZF_HISTORY_SEARCH_DATES_IN_SEARCH=0
export ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES=1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	kubectl
	rsync
	zsh-fzf-history-search #https://github.com/joshskidmore/zsh-fzf-history-search
)

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U +X bashcompinit && bashcompinit

alias tarsnap="tarsnap --keyfile ${HOME}/tarsnap.key"
alias ze='vim ~/.zshrc'
alias se='vim ~/.ssh/config'
alias zr='source ~/.zshrc'
alias te='vim ~/.tmux.conf'
alias tR='tmux source ~/.tmux.conf'
alias pe='vim ~/.p10k.zsh'
alias ls=exa
alias cat=bat
alias clip=pbcopy
alias lv='source venv/bin/activate'
alias rg="rg -S"
alias docker-clean="docker system prune"
alias ls=lsd
alias sed=gsed
alias brew="arch -arm64 /opt/homebrew/bin/brew"
alias xbrew="arch -x86_64 /usr/local/bin/brew"
alias clippy="cargo clippy"
alias fmt="cargo fmt"
alias cx="cargo xtask"
alias fck=fuck

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=~/go
export KUBE_HOME=${HOME}/.kube
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PATH="/usr/local/sbin:${PATH}"
export PATH="/usr/local/opt/openjdk/bin:${PATH}"
export PATH="${GOPATH}/bin:${PATH}"
export PATH="${HOME}/.local/bin:${PATH}"
export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/usr/local/bin:${PATH}"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
	 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

export AWS_SESSION_TOKEN_TTL=12h
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
#export OPENSSL_DIR=/usr/local/Cellar/openssl@3/3.0.2

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/drazen/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/drazen/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/drazen/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/drazen/google-cloud-sdk/completion.zsh.inc'; fi

. /opt/homebrew/opt/asdf/libexec/asdf.sh

eval "$(direnv hook zsh)"
eval $(thefuck --alias)

source $ZSH/oh-my-zsh.sh
