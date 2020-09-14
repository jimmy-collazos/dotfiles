#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Chrome" "google-chrome" "homebrew/cask" "cask"
brew_install "Chrome Canary" "google-chrome-canary" "homebrew/cask-versions" "cask"
brew_install "Chromium" "chromium" "homebrew/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Firefox" "firefox" "homebrew/cask" "cask"
brew_install "Firefox Developer" "firefoxdeveloperedition" "homebrew/cask-versions" "cask"
brew_install "Firefox Nightly" "firefoxnightly" "homebrew/cask-versions" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Flash" "flash-npapi" "homebrew/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Opera" "opera" "caskroom/cask" "cask"
brew_install "Opera Beta" "opera-beta" "caskroom/versions" "cask"
brew_install "Opera Developer" "opera-developer" "caskroom/versions" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# `Safari Technology Preview` requires macOS 10.11.4 or la
# https://github.com/jimmy-collazos/dotfiles/issues

if is_supported_version "$(get_os_version)" "10.11.4"; then
    printf "\n"
    brew_install "Safari Technology Preview" "safari-technology-preview" "caskroom/versions" "cask"
fi

brew_install "WebKit" "webkit-nightly" "caskroom/versions" "cask"
