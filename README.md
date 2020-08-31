# nvim

## Description

All my NeoVim based settings are collected inside this repository.

## Theme

![theme preview](https://i.imgur.com/D9nsARX.png)

## Setup

1. Clone the repository and place it inside your `~/.config` directory.
2. Install below listed dependencies with your preferred package manager.
3. Run `:PlugInstall` to install Vim plugins.
4. Run `:CocInstall <extension>` to install Coc related extensions.

## Dependencies

Following packages are required for [Plug](https://github.com/junegunn/vim-plug)
extensions included inside this config.

- MacOS

    ```bash
        # Recommended: You can use fnm or nvim as an alternative.
        brew install node
        brew install neovim
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

## Coc-Extensions

The versions of below extensions don't really matter, since I just listed them here
to keep track of the names of my Coc-extensions.

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
