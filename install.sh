#!/bin/bash
# Dotfiles Installation Script
# Run: ./install.sh

set -e

DOTFILES_DIR="$HOME/git/dotfiles"

echo "Installing dotfiles from $DOTFILES_DIR..."

# Create backup directory
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Function to backup and symlink
link_file() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "  Backing up $dest"
        mv "$dest" "$BACKUP_DIR/"
    fi

    if [ -L "$dest" ]; then
        rm "$dest"
    fi

    ln -s "$src" "$dest"
    echo "  Linked $dest -> $src"
}

# Zsh
link_file "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

# Git
link_file "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

# Vim
link_file "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"

# Starship
mkdir -p "$HOME/.config"
link_file "$DOTFILES_DIR/config/starship/starship.toml" "$HOME/.config/starship.toml"

# Claude profiles
mkdir -p "$HOME/.claude/profiles"
link_file "$DOTFILES_DIR/claude/profiles/anthropic.json" "$HOME/.claude/profiles/anthropic.json"

# GLM profile (copy template if no existing profile)
if [ ! -f "$HOME/.claude/profiles/glm.json" ]; then
    echo "  Creating glm.json from template (update with your token!)"
    cp "$DOTFILES_DIR/claude/profiles/glm.json.template" "$HOME/.claude/profiles/glm.json"
fi

# Secrets template
if [ ! -f "$HOME/.zsh_secrets" ]; then
    echo "  Creating .zsh_secrets from template (update with your tokens!)"
    cp "$DOTFILES_DIR/zsh_secrets.template" "$HOME/.zsh_secrets"
    chmod 600 "$HOME/.zsh_secrets"
fi

# Terminal setup
chmod +x "$DOTFILES_DIR/terminal/setup-terminal.sh"
"$DOTFILES_DIR/terminal/setup-terminal.sh"

echo ""
echo "Done! Backups saved to: $BACKUP_DIR"
echo ""
echo "Remember to:"
echo "  1. Update ~/.zsh_secrets with your API keys"
echo "  2. Update ~/.claude/profiles/glm.json with your GLM token"
echo "  3. Run 'source ~/.zshrc' or restart your terminal"
