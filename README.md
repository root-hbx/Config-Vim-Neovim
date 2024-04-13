# Configuration of Vim / Neovim
> This is a detailed tutorial concerning the configuration of Vim

## Part 1. Primary Configuration - Vim

### 1.1 Introduction

- **Vim配置指南** is a tutorial and you can start from [here](https://github.com/root-hbx/The_Configuration_of_Vim/blob/master/Vim%E9%85%8D%E7%BD%AE%E6%8C%87%E5%8D%97.md)
- **vimrc** is my configuration text of vim
- **plugged** contains all the plugins in *vimrc*

### 1.2 Credit
You can learn more details at [我借鉴的配置范本](https://github.com/theniceboy/vimrc-example)


## Part 2. Advanced Configuration - Neovim
- I strongly recommend [Neovim](https://neovim.io/) for you
- You can go to [lazyVim](https://www.lazyvim.org/) to get a simple start tutorial

### 2.1 Brief Introduction
LazyVim is a Neovim setup powered by 💤 lazy.nvim to make it easy to customize and extend your config.

### 2.2 Requirements
- Neovim >= 0.9.0 (needs to be built with LuaJIT)
- Git >= 2.19.0 (for partial clones support)
- a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
- lazygit (optional)
- a C compiler for nvim-treesitter. See here
- for telescope.nvim (optional)
- live grep: ripgrep
- find files: fd
- a terminal that support true color and undercurl:
    - kitty (Linux & Macos)
    - wezterm (Linux, Macos & Windows)
    - alacritty (Linux, Macos & Windows)
    - iterm2 (Macos)

### 2.3 Installation
- Install the LazyVim Starter
- The steps below are suitable for Linux and MacOS

#### required
```bash
mv ~/.config/nvim{,.bak}
```

#### optional but recommended
```bash
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

#### Clone the starter
```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

#### Remove the .git folder, so you can add it to your own repo later
```bash
rm -rf ~/.config/nvim/.git
```

Start Neovim!
```bash
nvim
```

Refer to the comments in the files on how to customize LazyVim.