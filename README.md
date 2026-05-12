<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/dover-mark-dark.svg">
    <img src="assets/dover-mark-light.svg" alt="Dover" width="120">
  </picture>
</p>

<h1 align="center">homebrew-dover</h1>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-arm64-000?style=flat&logo=apple&logoColor=white" alt="macOS arm64">
  <img src="https://img.shields.io/badge/macOS-amd64-000?style=flat&logo=apple&logoColor=white" alt="macOS amd64">
</p>

<p align="center">
  Homebrew tap for <a href="https://www.usedover.app">Dover</a> — a
  local-first API client. Postman alternative that runs on your
  machine.
</p>

## Install

```sh
brew tap qoinly/dover
brew install --cask dover
```

## Update

```sh
brew upgrade dover
```

## Uninstall

```sh
brew uninstall --cask dover

# Also wipe user data (workspace, encrypted DB, caches)
brew uninstall --cask --zap dover
```

## What's in this tap

Just the cask file (`Casks/dover.rb`) that points Homebrew at the
release artifacts published as GitHub Releases on this repo. Source
for the Dover app itself lives in a private repo; binaries are free
to use.

## Builds

Each release ships four macOS artifacts on the GitHub Release:

- `Dover-<version>-darwin-arm64.zip` — Apple Silicon, brew cask
- `Dover-<version>-darwin-amd64.zip` — Intel Mac, brew cask
- `Dover-<version>-darwin-arm64.dmg` — Apple Silicon, manual install
- `Dover-<version>-darwin-amd64.dmg` — Intel Mac, manual install

Homebrew picks the right zip based on the host architecture. The
DMGs are for users who'd rather double-click an installer than touch
the terminal.

Windows lives in a separate repo:
[`qoinly/scoop-dover`](https://github.com/qoinly/scoop-dover) — Scoop
bucket + NSIS installer on the same release tag.

## Code signing

Builds are currently ad-hoc signed (no Apple Developer ID).
Gatekeeper would normally block a first launch; the cask's
`postflight` strips the quarantine attribute so the app runs
without the right-click → Open dance. This is a known temporary
workaround. Once the Developer ID signing pipeline ships, the
`postflight` hook goes away and Gatekeeper trusts the signature
directly.

## Release notes

Each release's notes are attached to its GitHub Release page:
<https://github.com/qoinly/homebrew-dover/releases>

For the full version history, see the upstream `CHANGELOG.md` in
the Dover project.

## Issues

Bug reports + feature requests for Dover itself go to the upstream
project's issue tracker (currently private). For tap-specific
issues (cask file bugs, install failures), open an issue on this
repo.
