# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Overview

This repository contains macOS development environment settings and application preferences.

Main targets:

- Shell: Zsh, Zim, Powerlevel10k
- Terminal: tmux, Alacritty
- Editor: LunarVim, VS Code, Cursor
- Runtime manager: mise
- Keyboard and launcher settings: Karabiner-Elements, Alfred
- Package list: Homebrew, casks, Mac App Store apps, VS Code extensions

## Setup

Install Homebrew and chezmoi first, then initialize and apply this repository.

```sh
brew install chezmoi
chezmoi init <repository-url>
chezmoi apply
```

Install packages from the Brewfile:

```sh
brew bundle --file ~/.local/share/chezmoi/Brewfile
```

## Daily Use

Check pending changes:

```sh
chezmoi diff
```

Apply changes:

```sh
chezmoi apply
```

Add or update a managed file:

```sh
chezmoi add ~/.zshrc
chezmoi cd
git diff
```

Refresh the Brewfile after changing installed apps or extensions:

```sh
brew bundle dump --force --file ~/.local/share/chezmoi/Brewfile
```

## Notes

- Private files are represented with chezmoi naming conventions such as `private_`.
- Review diffs before applying changes on a new machine.
- Do not commit secrets, tokens, local credentials, or machine-specific generated state.
