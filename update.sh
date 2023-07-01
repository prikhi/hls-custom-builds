#!/usr/bin/env bash

set -e

echo "Ensuring submodule is clean..."
git submodule update --init --checkout --force

cd haskell-language-server/ || exit 1

echo "Updating submodule..."
git pull origin master

echo "Applying patch..."
git apply ../prikhi-hls.patch

echo "Building & installing to ~/.local/bin/..."
stack install haskell-language-server && mv -f ~/.local/bin/haskell-language-server ~/.local/bin/haskell-language-server-9.4.5

echo "Saving patch..."
git diff > ../prikhi-hls.patch

echo "Success, ready to commit!"
