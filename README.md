# Configurational files (dotfiles)

This directory contails the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

1. [Git](https://git-scm.com/downloads)
2. [Stow](https://www.gnu.org/software/stow/)
3. [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
4. [Kitty](https://sw.kovidgoyal.net/kitty/)
5. [Catppuccin colors for Vim](https://github.com/catppuccin/vim)

## Installation

1. Check out check dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/Jorgenssen/dotfiles.git
```

2. Use GNU Stow to create symlinks

```
$ cd dotfiles
$ stow .
```

