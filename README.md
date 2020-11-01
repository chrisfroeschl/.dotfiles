# .dotfiles

Includes settings for:

| Name     |        Location        |          Description |
| :------- | :--------------------: | -------------------: |
| bash     |       `~/.bash*`       |                Shell |
| git      |       `~/.git*`        |      Content tracker |
| groff    |  `~/.config/groff/*`   |   Typesetting system |
| irssi    |      `~/.irssi/*`      |           IRC client |
| mongodb  |    `~/.mongorc.js`     |       NoSQL Database |
| mpv      |   `~/.config/mpv/*`    |         Media player |
| mpi      |   `~/.config/mpi/*`    |         Image viewer |
| newsboat | `~/.config/newsboat/*` |           RSS client |
| nvim     |   `~/.config/nvim/*`   |          Text editor |
| ranger   |  `~/.config/ranger/*`  |          Filemanager |
| rtorrent |    `~/.rtorrent.rc`    |              Torrent |
| tmux     |     `~/.tmux.conf`     | Terminal multiplexer |
| zathura  | `~/.config/zathura/*`  |           PDF reader |

## Setup

1. Clone this repository into your users home directory.
2. Install [GNU Stow](https://www.gnu.org/software/stow/) with your preferred package
   manager.
3. Run the `stow.sh` script to place all symlinks.
