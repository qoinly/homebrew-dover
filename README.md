<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/dover-mark-dark.svg">
    <img src="assets/dover-mark-light.svg" alt="Dover" width="120">
  </picture>
</p>

<h1 align="center">homebrew-dover</h1>

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

Each release ships two zipped `.app` bundles:

- `Dover-<version>-darwin-arm64.zip` — Apple Silicon
- `Dover-<version>-darwin-amd64.zip` — Intel Mac

Homebrew picks the right one based on the host architecture.

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
