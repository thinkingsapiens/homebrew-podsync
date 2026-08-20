# homebrew-podsync

Homebrew tap for [PodSync](https://thinkingsapiens.github.io/podsync/), a
lean, native-feeling macOS podcast client for Apple Silicon.

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
