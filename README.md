# OpenStore Homebrew tap

This is the official Homebrew tap repository for [OpenStore](https://github.com/GetOpenStore/OpenStore), a GUI client for Homebrew marketed as an “open app store”.

## Install OpenStore

### Prerequisites

Install [Homebrew](https://brew.sh).

### Option 1

Run the following Terminal command:

    brew install --no-quarantine getopenstore/tap/openstore

### Option 2

Add this repository to your local tap list:

    brew tap getopenstore/tap

Then run:

    brew install --no-quarantine openstore

## Update or uninstall OpenStore

You can use OpenStore to update or uninstall OpenStore ;)

If you'd prefer to use the command line, this should update it:

    brew upgrade --no-quarantine openstore

This should uninstall it:

    brew uninstall openstore

Or, to also remove caches and user preferences:

    brew uninstall --zap openstore
