# nvim

## Description

All my NeoVim based settings are collected inside this repository.
It may seem like a **BLOATED** structure, but I can promise, that it became way
easier to manage plugins, settings and others with that kind of
approach.

## Theme

I am using a self created theme, which is more of a work in progress part.

![theme preview](https://i.ibb.co/JBn8Bmq/Screenshot-2020-08-23-at-20-25-58.png)

## Setup

1. Clone the repository and place it inside your `~/.config` directory.
2. Install below listed dependencies with your package manager.
3. Run `:PlugInstall` to install Vim plugins.
4. Run `:CocInstall <extensions>` to install Coc related extensions.

## Dependencies

Following packages are required for [Plug](https://github.com/junegunn/vim-plug)
extensions included inside this config.

- MacOS

    ```bash
        brew install node
        brew install neovim
        brew install fzf
        $(brew --prefix)/opt/fzf/install
        brew install ripgrep
        brew install --HEAD universal-ctags/universal-ctags/universal-ctags
        brew install the_silver_searcher
        brew install fd
    ```

- Arch

    ```bash
        sudo pacman -S nodejs npm
        sudo pacman -S neovim
        sudo pacman -S fzf
        sudo pacman -S ripgrep
        yay -S universal-ctags-git
        sudo pacman -S the_silver_searcher
        pacman -S fd
    ```

## Coc-Extensions

```json
{
  "dependencies": {
    "coc-angular": ">=0.901.11",
    "coc-bibtex": ">=1.2.7",
    "coc-css": ">=1.2.3",
    "coc-docker": ">=0.3.0",
    "coc-emmet": ">=1.1.4",
    "coc-eslint": ">=1.2.7",
    "coc-explorer": ">=0.7.11",
    "coc-html": ">=1.2.4",
    "coc-json": ">=1.2.6",
    "coc-markdownlint": ">=1.5.0",
    "coc-marketplace": ">=1.7.0",
    "coc-pairs": ">=1.2.21",
    "coc-prettier": ">=1.1.14",
    "coc-sh": ">=0.5.1",
    "coc-snippets": ">=2.1.28",
    "coc-texlab": ">=2.1.0",
    "coc-tsserver": ">=1.5.1",
    "coc-vimlsp": ">=0.8.0",
    "coc-vimtex": ">=1.0.4",
    "coc-yaml": ">=1.0.4",
    "coc-yank": ">=1.1.4"
  }
}
```
