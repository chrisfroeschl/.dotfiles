# dotfiles

## Description

A collection of several dotfiles for daily used CLIs.
Includes settings for:

| Name     |        Location        |          Description |
| :------- | :--------------------: | -------------------: |
| Bash     |       `~/.bash*`       |                Shell |
| Git      |       `~/.git*`        |   Version management |
| MongoDB  |    `~/.mongorc.js`     |             Database |
| rtorrent |    `~/.rtorrent.rc`    |              Torrent |
| groff    |  `~/.config/groff/*`   |             Markdown |
| irssi    |      `~/.irssi/*`      |           IRC client |
| newsboat | `~/.config/newsboat/*` |           RSS client |
| tmux     |     `~/.tmux.conf`     | Terminal multiplexer |
| Zathura  | `~/.config/zathura/*`  |           PDF reader |
| MPV      |   `~/.config/mpv/*`    |         Media player |
| MPI      |   `~/.config/mpi/*`    |         Image viewer |
| Ranger   |  `~/.config/ranger/*`  |          Filemanager |
| Neovim   |   `~/.config/nvim/*`   |          Text editor |

## Setup

1. Clone this repository into your users home directory.
2. Install [Stow](https://www.gnu.org/software/stow/) with your preferred package
   manager.
3. Run the `stow.sh` script to place all symlinks.
