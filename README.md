# Custom HLS Builds

This repo contains some helper scripts, a patch file, & the upstream
`haskell-language-server` repository as a submodule.

The patch file contains the necessary changes to the HLS code to support the
versions of `GHC`, `hlint` & `fourmolu` I use throughout my projects.

The `install.sh` script cleans & updates the submodule, applies the patch, and
then installs the server to `~/.local/bin/`.

## License

Apache v2, to match `haskell-language-server`.
