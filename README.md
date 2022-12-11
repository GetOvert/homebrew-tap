# Overt Homebrew tap

## This tap is deprecated

There are no plans to continue updating this tap with new versions of Overt. Going forward, please use the package in the official `homebrew/cask` repository:

    brew install overt

The original README is kept below for reference.

---

This is the official Homebrew tap repository for [Overt](https://github.com/GetOvert/Overt), a GUI client for Homebrew marketed as an “open app store”.

## Install Overt

1. Install [Homebrew](https://brew.sh) if you haven't yet.

2. Run the following Terminal commands:

  ```
  brew tap homebrew/cask
  brew install getovert/tap/overt
  open -a Overt
  ```


## Update or uninstall Overt

You can use Overt to update or uninstall Overt ;)

If you'd prefer to use the command line, this should update it:

    brew upgrade overt

This should uninstall it:

    brew uninstall overt

Or, to also remove caches and user preferences:

    brew uninstall --zap overt
