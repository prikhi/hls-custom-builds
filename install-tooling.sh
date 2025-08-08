#!/usr/bin/env sh

FOURMOLU_VERSION='0.18.0.0'
HLINT_VERSION='3.10'
GHC_VERSION='9.10.2'

install_pkg() {
    PKG="${1}"
    cabal install "${PKG}" --installdir ~/.local/bin --overwrite-policy=always -w "ghc-${GHC_VERSION}"
}

install_pkg "fourmolu-${FOURMOLU_VERSION}"
install_pkg "hlint-${HLINT_VERSION}"
