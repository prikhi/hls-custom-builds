#!/usr/bin/env sh

FOURMOLU_VERSION='0.14.1.0'
HLINT_VERSION='3.8'
GHC_VERSION='9.6.4'

install_pkg() {
    PKG="${1}"
    cabal install "${PKG}" --installdir ~/.local/bin --overwrite-policy=always -w "ghc-${GHC_VERSION}"
}

install_pkg "fourmolu-${FOURMOLU_VERSION}"
install_pkg "hlint-${HLINT_VERSION}"
