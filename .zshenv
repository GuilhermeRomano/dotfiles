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

# Cargo
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export PATH=$PATH:$CARGO_HOME/bin

# dotnet
export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet

# GO
export GOPATH="$XDG_DATA_HOME"/go

# Icons
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons

# QT5
export QT_QPA_PLATFORMTHEME="qt5ct"
