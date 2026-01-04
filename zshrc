# ============================================================
# Optimized Zsh Configuration
# Last updated: 2026-01-03
# ============================================================

# --- Oh My Zsh ---
export ZSH="$HOME/.oh-my-zsh"

# Disable theme since we're using Starship
ZSH_THEME=""

# Speed up large git repos
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins (keep minimal for speed)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# --- Starship Prompt ---
eval "$(starship init zsh)"

# --- PATH Configuration (consolidated) ---
typeset -U PATH  # Remove duplicates

# Core tools
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/uv/python/shims:$PATH"

# Language-specific
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# LaTeX
export PATH="$HOME/Library/TinyTeX/bin/universal-darwin:$PATH"

# Additional tools
export PATH="$HOME/.lmstudio/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

# --- Tool Integrations ---

# fzf - fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

# zoxide - smart cd
eval "$(zoxide init zsh)"

# --- Aliases ---

# Modern replacements
alias ls='eza --icons'
alias ll='eza -la --icons --git'
alias la='eza -a --icons'
alias lt='eza --tree --level=2 --icons'
alias cat='bat --paging=never'

# Git shortcuts
alias gs='git status'
alias gd='git diff'
alias gl='git log --oneline -20'

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Quick edits
alias zshrc='${EDITOR:-vim} ~/.zshrc'
alias reload='source ~/.zshrc'

# Custom tools
alias termpdf='python3 ~/git/termpdf.py/termpdf.py'
alias tp='termpdf'

# --- uv Environment ---
# Auto-activate uv base environment
[ -f ~/.uv/base/bin/activate ] && source ~/.uv/base/bin/activate

# --- Local Environment ---
[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"

# --- Secrets (API keys, tokens) ---
[ -f ~/.zsh_secrets ] && source ~/.zsh_secrets
