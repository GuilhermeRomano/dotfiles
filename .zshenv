# This files sets enviroment variables
# ZSH enviroment variables
export ZDOTDIR=$HOME/.config/zsh

# XDG Base Directory 
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# CUDA
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

# GTK 2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
