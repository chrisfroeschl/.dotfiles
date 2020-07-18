# nvim

A collection of my neovim configuration files.

## Dependencies

Following packages are required for [Plug](https://github.com/junegunn/vim-plug)
extensions included inside this config.

- Mac

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
    "coc-tsserver": ">=1.5.1",
    "coc-vimlsp": ">=0.8.0",
    "coc-yaml": ">=1.0.4",
    "coc-yank": ">=1.1.4"
  }
```
