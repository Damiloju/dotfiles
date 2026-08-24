#!/usr/bin/env bash

# macOS System Preferences
# Sets sensible defaults for a developer workstation.
# Run this script once on a fresh macOS install, then log out/restart.

###############################################################################
# Keyboard                                                                    #
###############################################################################

# Fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# Short delay until repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Disable press-and-hold for keys (enables key repeat everywhere)
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

###############################################################################
# Finder                                                                      #
###############################################################################

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Default to list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

###############################################################################
# Dock                                                                        #
###############################################################################

# Auto-hide the Dock
defaults write com.apple.dock autohide -bool true

# Remove auto-hide delay
defaults write com.apple.dock autohide-delay -float 0

# Set icon size to 48 pixels
defaults write com.apple.dock tilesize -int 48

# Minimize windows into their application icon
defaults write com.apple.dock minimize-to-application -bool true

###############################################################################
# Screenshots                                                                 #
###############################################################################

# Create Screenshots directory if it doesn't exist
mkdir -p "$HOME/Screenshots"

# Save screenshots to ~/Screenshots
defaults write com.apple.screencapture location -string "$HOME/Screenshots"

# Save screenshots as PNG
defaults write com.apple.screencapture type -string "png"

###############################################################################
# Misc                                                                        #
###############################################################################

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

###############################################################################
# Restart affected apps                                                       #
###############################################################################

echo "Done. Some changes require a logout/restart to take effect."
killall Finder
killall Dock
