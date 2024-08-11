# macOS Development Environment Setup

This repository provides a script to automate the setup of a macOS development environment using [Homebrew](https://brew.sh/), [Chezmoi](https://www.chezmoi.io/), and other essential tools based on my personal preferences. The script initializes dotfiles, installs required packages, and configures the system to meet specific development needs.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Packages Included](#packages-included)
  - [Command-line Tools (Brews)](#command-line-tools-brews)
  - [GUI Applications (Casks)](#gui-applications-casks)
- [Setup](#setup)
  - [1. Check if Homebrew is Installed](#1-check-if-homebrew-is-installed)
  - [2. Check if Chezmoi is Installed](#2-check-if-chezmoi-is-installed)
  - [3. Initialize Chezmoi](#3-initialize-chezmoi)

## Prerequisites

Ensure you have the following tools installed:

- **Homebrew**: A package manager for macOS.
- **Chezmoi**: A tool for managing dotfiles.

## Packages Included

### Command-line Tools (Brews)

The script installs the following command-line tools:

- **tldr**: Simplified and community-driven man pages.
- **neovim**: A modernized version of the Vim text editor.
- **starship**: A cross-shell prompt that displays contextual information.
- **zsh-syntax-highlighting**: Syntax highlighting for the Zsh shell.
- **zsh-completions**: Additional completion definitions for Zsh.
- **zsh-autosuggestions**: Fish-like autosuggestions for Zsh.
- **zoxide**: A smarter `cd` command.
- **thefuck**: Corrects errors in previous shell commands.
- **eza**: A modern replacement for `ls`.
- **bat**: A `cat` clone with syntax highlighting and Git integration.
- **fd**: A simple, fast, and user-friendly alternative to `find`.
- **fzf**: A general-purpose command-line fuzzy finder.
- **zellij**: A terminal multiplexer with many built-in features.
- **wget**: A network downloader that supports HTTP, HTTPS, and FTP.
- **go**: The Go programming language.
- **luarocks**: A package manager for the Lua programming language.
- **ripgrep**: A line-oriented search tool.
- **taplo**: A TOML linter and formatter.
- **node**: JavaScript runtime built on Chrome's V8 engine.
- **java**: The Java programming language.
- **maven**: A build automation tool for Java projects.

### GUI Applications (Casks)

The script installs the following GUI applications:

- **raycast**: A collection of powerful productivity tools within an extendable launcher.
- **font-jetbrains-mono-nerd-font**: A developer-friendly font.
- **alacritty**: A GPU-accelerated terminal emulator.
- **adguard**: An ad blocker for privacy protection.
- **nordvpn**: A VPN service.
- **google-chrome**: A web browser.
- **firefox@developer-edition**: A developer-focused version of the Firefox web browser.
- **brave-browser**: A privacy-focused web browser.
- **visual-studio-code**: A lightweight code editor.
- **intellij-idea**: An integrated development environment (IDE) for Java and other languages.
- **discord**: Voice and text chat.
- **figma**: Interface design tool.
- **chatgpt**: ChatGPT desktop application.
- **keka**: A file archiver.
- **alt-tab**: A Windows-like Alt-Tab app switcher.
- **devtoys**: A collection of tools for developers.
- **hiddenbar**: A macOS menu bar item hider.
- **warp**: A modern, Rust-based terminal with AI built in.

## Setup

Follow these steps to set up your development environment:

### 1. Check if Homebrew is Installed

To check if Homebrew is already installed, run:

```bash
brew --version
```

If Homebrew is installed, you will see its version number. If not, you’ll receive a command not found error.

**Install Homebrew (if not installed):**

You can install Homebrew using the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Check if Chezmoi is Installed

To check if Chezmoi is already installed, run:

```bash
chezmoi --version
```

If Chezmoi is installed, you will see its version number. If not, you’ll receive a command not found error.

**Install Chezmoi (if not installed):**

Once Homebrew is installed, use it to install Chezmoi:

```bash
brew install chezmoi
```

### 3. Initialize Chezmoi

After installing Chezmoi, use the following command to initialize Chezmoi and apply the configuration from this repository:

```bash
chezmoi init --apply msibai
```
