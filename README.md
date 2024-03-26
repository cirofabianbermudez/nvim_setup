# nvim_setup

## Gettting started

This is my personal [Neovim](https://neovim.io/) configuration file, it can be used in Windows and Linux, it uses the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager and it uses the following plugins:

- Two color-schemes ([Catppuccin](https://github.com/catppuccin/nvim), [Rose Pine](https://github.com/rose-pine/neovim))
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Oil](https://github.com/stevearc/oil.nvim) 
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)

I think these are the bare minimum plugins need it to have a very nice experience using Neovim, other functionally can be accomplish setting up internal variables or writing remaps.

## Installation

### Windows

The installation is strait forward, all the dependencies can be installed manually but it is recommended to use [Scoop](https://scoop.sh/) because it is faster and easier to manage.

Install Scoop:

```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

Install Neovim:

```bash
scoop install neovim
```

Install [Telescope](https://github.com/nvim-telescope/telescope.nvim) dependencies [fd](https://github.com/sharkdp/fd) and [ripgrep](https://github.com/BurntSushi/ripgrep):

```bash
scoop install fd
sccop install ripgrep
```

Install [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) dependencies, a C compiler is required:

```bash
scoop install mingw-winlibs-llvm-ucrt
```

or

```bash
sccop install gcc
```

Install fonts:

```bash
scoop bucket add nerd-fonts
scoop install nerd-fonts/Hack-NF-Mono
```

> [!NOTE]  
> If you want to install the fonts manually there is a `fonts` directory containing a `Hack.zip` file. You have to select the font Hack Nerd Font Mono in the Terminal settings. For Linux you can create a .fonts in the /home/username/ and put the fonts there, then select the font in the terminal settings.

Clone the repository in `C:\Users\username\AppData\Local\nvim` for Windows or in `/home/bermudez/.config/nvim` for Linux:

```bash
git clone https://github.com/cirofabianbermudez/nvim_setup.git
```

Change the name of the directory to `nvim`:

```bash
mv nvim_setup nvim
```

Open neovim and let lazy.nvim install all the plugins:

```bash
nvim
```

## Spell check

Inside this repository there is a `spell` directory that contains the `*.spl` and `.sug` for English and Spanish in case you experience some problems while running the `setlocal spell spelllang=es` vim command.

## Other GUI

A `ginit.vim` file is provided in case you want to use the default nvim-qt.exe GUI. Also a `neovide.lua` file is provided in case you are [Neovide](https://neovide.dev/) user. In both cases the font configuration and zoom capabilities are enable.

## Project status

This configuration file was tested on a Windows machine using [Powershell](https://github.com/PowerShell/PowerShell) and [Terminal](https://github.com/microsoft/terminal).

TODO: Complete documentation for Linux
TODO: Test on Linux

