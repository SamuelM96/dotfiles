
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Use hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# Automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Plugins
plugins=(
        git
        tmux
        z
        colorize
        colored-man-pages
        zsh-syntax-highlighting
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Extra bin
export PATH=$PATH:/home/$USER/.local/bin/:/usr/sbin/:/usr/bin/

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion"  ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Timezone
export TZ=Europe/London

# Rust
source $HOME/.cargo/env

# Neovim
alias vim='nvim'
alias vimdiff='nvim -d'
export EDITOR=nvim

# Navi
eval "$(navi widget zsh)"

# Ripgrep-all + fzf
rga-fzf() {
        RG_PREFIX="rga --files-with-matches"
        local file
        file="$(
                FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
                        fzf --sort --preview="[[ ! -z {}  ]] && rga --pretty --context 5 {q} {}" \
                                --phony -q "$1" \
                                --bind "change:reload:$RG_PREFIX {q}" \
                                --preview-window="70%:wrap"
        )" &&
        echo "opening $file" &&
        xdg-open "$file"
}

# Pipx
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tmuxinator
alias tmx=tmuxinator

# Git pulls every git repo in the current and sub directories
alias gitpullall='find . -name ".git" -type d | sed "s/\/.git//" |  xargs -P10 -I{} git -C {} pull'

# Create .zshrc.local if it doesn't exist
if [ ! -f ~/.zshrc.local ]; then
	touch ~/.zshrc.local
fi
source /home/samm/.zshrc.local

# Handle SSH keys during first login
SSH_ENV=$HOME/.ssh/environment
function start_agent {
	echo "Initializing new SSH agent..."
	# spawn ssh-agent
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
	echo Succeeded
	chmod 600 ${SSH_ENV}
	. ${SSH_ENV} > /dev/null
	/usr/bin/ssh-add
}
if [ -f "${SSH_ENV}"  ]; then
	. ${SSH_ENV} > /dev/null
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
	start_agent;
fi

# Ruby Version Manager
export PATH=/usr/local/rvm/bin/:$PATH

# Terminal emacs
export ALTERNATE_EDITOR=""
alias em="emacsclient -nw"
alias emacs="emacsclient -c"

# "What alias" to search aliases
alias wa="alias | grep -i "

# Get rid of annoying beep is less
export LESS="$LESS -R -Q"

# Replace ls with exa
if command -v exa >/dev/null; then
	alias ls="exa"
	alias l='exa -lah'
	alias ll='exa -lh'
	alias la="exa -lah"
	alias lsa="exa -laah"
	alias lsd="exa -lah --sort=mod"
fi

# Replace cat with bat
if command -v bat >/dev/null; then
	alias cat="bat"
	export BAT_PAGER="less --RAW-CONTROL-CHARS --quit-if-one-screen --mouse"
fi
