# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH configuration

# Load Zinit
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# Plugins and theme using Zinit
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Key bindings for word and history navigation
bindkey '^[[1;5C' forward-word          # Ctrl + Right Arrow
bindkey '^[[1;5D' backward-word         # Ctrl + Left Arrow
bindkey '^[[1;5A' up-line-or-history    # Ctrl + Up Arrow
bindkey '^[[1;5B' down-line-or-history  # Ctrl + Down Arrow

# Update PATH to include local binaries
export PATH="$HOME/.local/bin:$PATH"

# History configuration
HISTFILE=~/.zsh_history                  # History file location
HISTSIZE=10000                           # Max commands in memory
SAVEHIST=10000                           # Max commands in the history file
setopt appendhistory                     # Append to history file, don't overwrite
setopt sharehistory                      # Share history across all sessions

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias for 'll'
alias ll='ls -alF'   # Long list format with hidden files and trailing symbols
alias vpnOn='sudo wg-quick up wg0'
alias vpnOff='sudo wg-quick down wg0'
