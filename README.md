# Dotfiles
My dotfiles

## List of dotfiles
If prepended with '-' it is missing but requested
* tmux
* vim
* powerline
* input
* zsh
* gnome-terminal solarized
* git
* dircolors

## Install

WARNING: The installation does not take current dotfiles into
consideration. Make a backup if you ever wish to see your current
configuration again.

Variables used to modify the installation:
usage: `make install HOME=<YOUR_INSTALL_PATH> GNOME_TERMINAL_PROFILE=<YOUR_PROFILE_NAME>`
* HOME: The directory to install into, default: `~/`.
* GNOME_TERMINAL_PROFILE: the gnome terminal profile to set colors in, default: 'Default'.

## Dependencies

common: readlink, git
gnome-terminal-solarized: dconf (dconf-cli)

