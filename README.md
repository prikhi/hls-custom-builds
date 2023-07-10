# Custom HLS Builds

This repo contains some helper scripts, a patch file, & the upstream
`haskell-language-server` repository as a submodule.

The patch file contains the necessary changes to the HLS code to support the
versions of `GHC`, `hlint` & `fourmolu` I use throughout my projects.

The `install.sh` script cleans & updates the submodule, applies the patch, and
then installs the server to `~/.local/bin/`.

The `install-tooling.sh` script installs the specified versions of HLint &
Fourmolu to `~/.local/bin`, compiling with the same GHC used by the Stackage
LTS we compile HLS for.

The `update.sh` script is used to bump the HLS submodule to it's latest master
commit, so long as our custom patch still applies cleanly.

## License

Apache v2, to match `haskell-language-server`.
