<p align="center">
  <img src="assets/tap-hero.svg" alt="oh-my-mirrorz Homebrew Tap" width="100%">
</p>

<h1 align="center">Homebrew Tap for oh-my-mirrorz</h1>

<p align="center">
  <strong>Install with one command. Let Homebrew handle future upgrades.</strong><br>
  The official Tap for <a href="https://github.com/chaogao512/oh-my-mirrorz">oh-my-mirrorz</a> on macOS and Linux.
</p>

<p align="center">
  <a href="https://github.com/chaogao512/homebrew-tap/actions/workflows/tests.yml"><img alt="Formula Tests" src="https://github.com/chaogao512/homebrew-tap/actions/workflows/tests.yml/badge.svg"></a>
  <a href="https://github.com/chaogao512/oh-my-mirrorz/releases/latest"><img alt="Latest Release" src="https://img.shields.io/github/v/release/chaogao512/oh-my-mirrorz?label=oh-my-mirrorz&color=6f5bd3"></a>
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-23b5d3"></a>
</p>

<p align="center">
  <a href="README.md">简体中文</a> · English
</p>

## Install

```bash
brew install chaogao512/tap/oh-my-mirrorz
```

The command is immediately available after installation—no `.zshrc` changes and no manual binary moves:

```bash
omm version
omm scan
omm switch --dry-run
```

Homebrew automatically adds `chaogao512/tap` and links `omm` into its managed executable path. This is Homebrew's recommended direct-install flow for third-party taps.

## Everyday commands

| Goal | Command |
| --- | --- |
| Install | `brew install chaogao512/tap/oh-my-mirrorz` |
| Refresh Homebrew metadata | `brew update` |
| Upgrade oh-my-mirrorz | `brew upgrade oh-my-mirrorz` |
| Show version | `omm version` |
| Uninstall | `brew uninstall oh-my-mirrorz` |
| Remove the tap (optional) | `brew untap chaogao512/tap` |

## What this Tap does

- Downloads an immutable tagged `oh-my-mirrorz` source archive and verifies its SHA-256.
- Builds `omm` locally with the Go build dependency managed by Homebrew.
- Runs Formula tests against version output and the built-in mirror catalog.
- Uses GitHub Actions to check style, audit results, source builds, installation, and smoke tests.

Current Formula:

| Software | Formula | Version | Upstream |
| --- | --- | --- | --- |
| oh-my-mirrorz | [`Formula/oh-my-mirrorz.rb`](Formula/oh-my-mirrorz.rb) | `v0.2.0` | [Project repository](https://github.com/chaogao512/oh-my-mirrorz) |

## Verify the installation

```bash
brew info chaogao512/tap/oh-my-mirrorz
brew test chaogao512/tap/oh-my-mirrorz
omm doctor
```

`omm doctor` inspects local configuration state. Installing through Homebrew does not automatically change any mirror settings.

## Support

| Issue | Where to report it |
| --- | --- |
| Formula download, build, or installation | [This repository](https://github.com/chaogao512/homebrew-tap/issues) |
| Mirror switching, adapters, restore, or security | [oh-my-mirrorz](https://github.com/chaogao512/oh-my-mirrorz/issues) |

## License

This Tap is available under the [MIT License](LICENSE). See the [upstream repository](https://github.com/chaogao512/oh-my-mirrorz) for the `oh-my-mirrorz` source and license.
