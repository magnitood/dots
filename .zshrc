# Enable colors and change 
autoload -U colors && colors
PROMPT="%F{red}[%f%F{cyan}%~%f%F{red}]%f %F{blue}$%f "

path+=("$HOME/.emacs.d/bin")
path+=("$HOME/.local/bin")
path+=("$HOME/.local/scripts")
export PATH

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C
# fpath=(/home/mag/Workstation/Crap/gitwork/zsh-completions/src $fpath)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Pywal colors
(/bin/cat $HOME/.cache/wal/sequences &)


# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^H" backward-delete-word

source ~/.shell_commands
source ~/.alias
