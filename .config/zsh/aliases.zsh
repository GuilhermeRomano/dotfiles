# alias for oh-my-zsh

# Disable alias made by oh-my-zsh
unalias lsa
unalias l
unalias la

# ls alias
alias ls='eza --group-directories-first --no-quotes --icons --all --across'
alias ll='eza --group-directories-first --no-quotes --icons --all --long --header'
alias tree='eza --group-directories-first --no-quotes --icons --all --tree --level=2'

# other utilities alias
alias vim='nvim'
alias trash='gio trash'
alias bat='batcat'

# zsh alias 
alias zshconfig="nvim ~/.config/zsh/.zshrc"

# cd alias
alias dotfiles="cd ~/dotfiles"

# fzf alias
alias fman="compgen -c | fzf | xargs man"

# protontricks alias
alias protontricks='flatpak run com.github.Matoking.protontricks'
alias protontricks-launch='flatpak run --command=protontricks-launch com.github.Matoking.protontricks'

# w3m
alias w3m='w3m -config ~/.config/w3m/config'

# set apt to call nala instead
apt() { 
  command nala "$@"
}
sudo() {
  if [ "$1" = "apt" ]; then
    shift
    command sudo nala "$@"
  else
    command sudo "$@"
  fi
}

