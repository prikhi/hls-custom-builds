#!/usr/bin/env bash

set -e

GHC_VERSION='9.6.6'

echo "Ensuring we are on clean proper commit..."
git submodule update --init --checkout --force

cd haskell-language-server/ || exit 1

echo "Applying custom patch..."
git apply ../prikhi-hls.patch

echo "Building & installing to ~/.local/bin..."
stack install haskell-language-server && mv -f ~/.local/bin/haskell-language-server "${HOME}/.local/bin/haskell-language-server-${GHC_VERSION}"
