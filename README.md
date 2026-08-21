# homebrew-podsync

[![macOS](https://img.shields.io/badge/macOS-Apple%20Silicon%20%C2%B7%20Intel-lightgrey.svg)](https://github.com/thinkingsapiens/podsync/releases/latest)
[![Linux](https://img.shields.io/badge/Linux-x86__64-FCC624.svg)](https://github.com/thinkingsapiens/podsync/releases/latest)

Homebrew tap for [PodSync](https://thinkingsapiens.github.io/podsync/), a
lean, native-feeling podcast client for macOS (Apple Silicon or Intel) and
Linux (x86_64).

## Install

```sh
brew install thinkingsapiens/podsync/podsync-app
```

The cask is named `podsync-app` rather than `podsync` because `podsync` is
already taken in Homebrew's own `homebrew-core` by an unrelated tool
([mxpv/podsync](https://github.com/mxpv/podsync), a YouTube/Vimeo-to-RSS
converter). This one is unrelated to that one.

## Update

The Cask here bumps itself automatically whenever a new PodSync version
publishes on [thinkingsapiens/podsync](https://github.com/thinkingsapiens/podsync)
(see that repo's `.github/workflows/update-homebrew-cask.yml`). Nothing in
this repo needs manual editing.
