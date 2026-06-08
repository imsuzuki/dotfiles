# AGENTS.md

This file gives coding agents durable guidance for understanding and changing this macOS setup. Use this chezmoi source directory as the reference when working on environment setup, dotfiles, and application configuration.

## Purpose

- This repository manages macOS dotfiles and application preferences with chezmoi.
- Before changing setup, configuration, or troubleshooting behavior, inspect the managed files in this directory.
- When changing configuration, update the chezmoi source files, not only the files in the home directory.

## How To Inspect The Setup

1. Read `README.md` for the repository overview and basic commands.
2. Read `Brewfile` to understand Homebrew formulae, casks, Mac App Store apps, and VS Code extensions.
3. Inspect `dot_*`, `empty_*`, and similar chezmoi source names for files that map to the home directory.
4. Inspect `dot_config/` for files that map to XDG config paths.
5. Inspect `private_*` paths for private files and application-specific configuration.

## Chezmoi Conventions

- Treat the repository contents as the source of truth. Do not duplicate a full managed-file inventory here.
- Use chezmoi naming conventions to infer destination paths.
- `dot_` maps to files or directories whose real names start with `.`.
- `private_` marks private files or directories.
- `empty_` marks empty files.
- Use `rg --files` to list the current managed files.

## Change Rules

- Check `git status --short` before making changes.
- Check `chezmoi diff` before applying changes to the real environment.
- Update `README.md` or this file when a durable workflow rule changes.
- When updating `Brewfile`, verify that unintended apps or extensions were not added.
- Do not commit secrets, access tokens, local credentials, or machine-specific generated state.
- Be careful with `private_` paths because they map to private files in the target environment.

## Verification

```sh
git status --short
chezmoi diff
chezmoi apply
brew bundle check --file ~/.local/share/chezmoi/Brewfile
```

Done means the intended source files are updated, the diff has been reviewed, and the working tree contains only expected changes.

## Common Commands

```sh
chezmoi add ~/.zshrc
chezmoi cd
brew bundle --file ~/.local/share/chezmoi/Brewfile
brew bundle dump --force --file ~/.local/share/chezmoi/Brewfile
```
