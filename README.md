# dotfiles

## Description

A collection of several dotfiles for daily used CLIs.

Includes settings for:

- [Bash](https://www.gnu.org/software/bash/) (shell)
- [MongoDB](https://www.mongodb.com/) (database)
- [rtorrent](https://github.com/rakshasa/rtorrent) (torrent)
- [groff](https://www.gnu.org/software/groff/) (markdown)
- [irssi](https://github.com/irssi/irssi) (IRC client)
- [newsboat](https://github.com/newsboat/newsboat) (RSS client)
- [tmux](https://github.com/tmux/tmux) (terminal multiplexer)
- [Zathura](https://wiki.archlinux.org/index.php/Zathura) (PDF reader)
- [NeoVim](https://neovim.io/) (text editor)

## Issues

MacOS mostly ships very aged Free Software. That's why you should make sure, that
especially Bash and groff are up to date.

## NeoVim

I decided to document some steps of the initial setup for the NeoVim part, since
it requires some dependencies and could be cumbersome otherwise.

Make sure to use the master build from [NeoVim](https://github.com/neovim/neovim/releases),
since some of my plugins won't work otherwise.

### Theme

![theme preview](https://i.imgur.com/D9nsARX.png)

### Setup

1. Install below listed dependencies with your preferred package manager.
2. Run `:PlugInstall` to install Vim plugins.
3. Run `:CocInstall <extension>` to install Coc related extensions.

### Dependencies

Following packages are required for [Plug](https://github.com/junegunn/vim-plug)
extensions included inside this config.

- MacOS

    ```bash
        # Recommended: You can use fnm or nvim as an alternative.
        brew install node
        brew install --HEAD neovim
        brew install fzf
        $(brew --prefix)/opt/fzf/install
        brew install ripgrep
        brew install --HEAD universal-ctags/universal-ctags/universal-ctags
        brew install the_silver_searcher
        brew install fd
        pip install neovim
        sudo npm install -g neovim
    ```

- Arch

    ```bash
        # Recommended: You can use fnm or nvim as an alternative.
        sudo pacman -S nodejs npm
        sudo pacman -S neovim
        sudo pacman -S fzf
        sudo pacman -S ripgrep
        yay -S universal-ctags-git
        sudo pacman -S the_silver_searcher
        pacman -S fd
        pip install neovim
        sudo npm install -g neovim
    ```

### Coc-Extensions

```json
{
  "dependencies": {
    "coc-angular": ">=0.901.11",
    "coc-css": ">=1.2.3",
    "coc-docker": ">=0.3.0",
    "coc-emmet": ">=1.1.4",
    "coc-eslint": ">=1.2.7",
    "coc-explorer": ">=0.7.11",
    "coc-html": ">=1.2.4",
    "coc-json": ">=1.2.6",
    "coc-markdownlint": ">=1.5.0",
    "coc-pairs": ">=1.2.21",
    "coc-prettier": ">=1.1.14",
    "coc-sh": ">=0.5.1",
    "coc-snippets": ">=2.1.28",
    "coc-tsserver": ">=1.5.1",
    "coc-vimlsp": ">=0.8.0",
    "coc-yaml": ">=1.0.4",
    "coc-yank": ">=1.1.4"
  }
}
```
