#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Image Tools\n\n"

brew_install "ImageAlpha" "imagealpha" "homebrew/cask" "cask"
brew_install "ImageMagick" "imagemagick --with-webp"
brew_install "LICEcap" "licecap" "homebrew/cask" "cask"
