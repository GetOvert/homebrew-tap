# OpenStore Homebrew tap

This is the official Homebrew tap repository for [OpenStore](https://github.com/GetOpenStore/OpenStore), a GUI client for Homebrew marketed as an “open app store”.

## Install OpenStore

1. Install [Homebrew](https://brew.sh) if you haven't yet.

2. Run the following Terminal commands:

  ```
  brew tap homebrew/cask
  brew install getopenstore/tap/openstore
  open -a OpenStore
  ```


## Update or uninstall OpenStore

You can use OpenStore to update or uninstall OpenStore ;)

If you'd prefer to use the command line, this should update it:

    brew upgrade openstore

This should uninstall it:

    brew uninstall openstore

Or, to also remove caches and user preferences:

    brew uninstall --zap openstore
