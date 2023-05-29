# Default Apps
export EDITOR='nvim'
export SUDO_EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export TERM="xterm-256color"

# ZSH
export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"

# Clearing $HOME
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export PERL_CPANM_HOME="$XDG_CACHE_HOME"/cpanmnom

# Path
export PATH=~/.local/bin:$PATH
export PATH=~/Applications:$PATH
export PATH=~/.cargo/bin:$PATH

# Node Version Manger
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# UTF-8 support
export LC_ALL=en_US.UTF-8
