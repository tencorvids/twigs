eval "$(starship init zsh)"

typeset -U path cdpath fpath manpath

for profile in ${(z)NIX_PROFILES}; do
  fpath+=($profile/share/zsh/site-functions $profile/share/zsh/$ZSH_VERSION/functions $profile/share/zsh/vendor-completions)
done

HELPDIR="/nix/store/ygxds1yhw56046whxq36fkkx96fjy42s-zsh-5.9/share/zsh/$ZSH_VERSION/help"

HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
unsetopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY

alias cat="bat"
alias ls="eza --icons -a --group-directories-first -1"
alias ll="eza --icons -a --group-directories-first -1 --no-user --long"
alias tree="eza --icons --tree --group-directories-first"
alias vim="nvim"

alias nix-shell="nix-shell --run $SHELL"
nix() {
    command nix "$@"
}
