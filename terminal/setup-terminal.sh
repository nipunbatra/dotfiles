#!/bin/bash
# Terminal.app Configuration Script
# Run this to set up an awesome Terminal experience

echo "🖥️  Setting up Terminal.app..."

# Set default profile to Pro (dark, clean)
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

# Enable Secure Keyboard Entry (prevents keyloggers)
defaults write com.apple.Terminal SecureKeyboardEntry -bool true

# Only show scrollbars when scrolling
defaults write com.apple.Terminal AppleShowScrollBars -string "WhenScrolling"

# Enable UTF-8 only
defaults write com.apple.Terminal StringEncodings -array 4

echo "✅ Terminal.app configured!"
echo ""
echo "For best experience, also configure in Terminal preferences:"
echo "  - Font: JetBrains Mono Nerd Font, 16pt"
echo "  - Columns: 120, Rows: 40"
echo "  - Scrollback: Unlimited"
echo ""
echo "Restart Terminal.app for changes to take effect."
