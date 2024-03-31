# nvim_setup

## Gettting started

This is my personal [Neovim](https://neovim.io/) configuration, it can be used in Windows and Linux, it uses the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager with following plugins:

- Two color-schemes ([Catppuccin](https://github.com/catppuccin/nvim), [Rose Pine](https://github.com/rose-pine/neovim))
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Oil](https://github.com/stevearc/oil.nvim) 
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)

I think these are the bare minimum plugins need it to have a very nice experience using Neovim, other functionally can be accomplish setting up internal variables or writing remaps.

After installation, inside Neovim run this command to see the custom remaps:

```bash
:help customide.cheat
```

of see it [here](doc/customide.txt).

## Installation

### Windows

The installation is strait forward, all the dependencies can be installed manually but it is recommended to use [Scoop](https://scoop.sh/) because it is easier to manage.

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
scoop install gcc
```

### Linux

Install Neovim using the instructions from the official Neovim [installation](https://github.com/neovim/neovim/blob/master/INSTALL.md):

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```
we are using the unstable release because the stable version has not been updated since 2022, today is 20/03/2024.

Install [Telescope](https://github.com/nvim-telescope/telescope.nvim) dependencies [fd](https://github.com/sharkdp/fd) and [ripgrep](https://github.com/BurntSushi/ripgrep):

```bash
sudo apt-get install ripgrep
sudo apt-get install fd-find
```

in `~/.bashrc` paste the following line to avoid problems in case you have other program using the `fd` alias:

```bash
alias fd='fdfind'
```

Install [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) dependencies, a C compiler is required:

```bash
sudo apt-get install gcc
```

Usually this step is optional because most Linux distributions already comes with a C compiler.

## Fonts

For Windows you can install the font with the following command:

```bash
scoop bucket add nerd-fonts
scoop install nerd-fonts/Hack-NF-Mono
```

For Linux you can do the following:

```bash
cd ~
mkdir .fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip -O ~/.fonts
unzip ~/.fonts/Hack.zip -d ~/.fonts
rm ~/.fonts/Hack.zip
```

In both cases you have to to select the font Hack Nerd Font Mono in the Terminal settings.


> [!NOTE]  
> If you want to install the fonts manually there is a `fonts` directory in this repository containing a `Hack.zip` file. For Windows you can decompress and install the font as any other. For Linux you have to create a `~/.fonts` directory and put the fonts there and restart the terminal. 


Finally clone the repository in `C:\Users\username\AppData\Local\nvim` for Windows or in `/home/bermudez/.config/nvim` for Linux:

```bash
git clone https://github.com/cirofabianbermudez/nvim_setup.git
```

Change the name of the directory to `nvim`:

```bash
mv nvim_setup nvim
```

Open Neovim and let lazy.nvim install all the plugins:

```bash
nvim
```

## File tree

This is the current file tree of the project:

```bash
├── README.md
├── after
│   └── plugin
│       ├── barbar.lua
│       ├── colorscheme.lua
│       ├── lualine.lua
│       ├── neoviode.lua
│       ├── oil.lua
│       ├── telescope.lua
│       └── treesitter.lua
├── doc
│   ├── customide.txt
│   ├── git_cheatsheet.txt
│   └── tags
├── fonts
│   └── Hack.zip
├── ginit.vim
├── init.lua
├── lazy-lock.json
├── lua
│   └── core
│       ├── init.lua
│       ├── lazy.lua
│       ├── markdown.lua
│       ├── remap.lua
│       └── set.lua
└── spell
    ├── en.utf-8.spl
    ├── en.utf-8.sug
    ├── es.utf-8.spl
    └── es.utf-8.sug
```

## Spell check

Inside this repository there is a `spell` directory that contains the `*.spl` and `.sug` files for English and Spanish in case you experience some problems while running the `setlocal spell spelllang=es` vim command.

## Other GUI

A `ginit.vim` file is provided in case you want to use the default nvim-qt.exe GUI. Also a `neovide.lua` file is provided in case you are [Neovide](https://neovide.dev/) user. In both cases the font configuration and zoom capabilities are enable. You can delete them if you like.

## Project status

- [x] This configuration was tested on a Windows 10/11 machine using [Powershell](https://github.com/PowerShell/PowerShell) and [Terminal](https://github.com/microsoft/terminal).

- [x] This configuration was tested on a WSL Ubuntu 22.04.4 LTS using [Terminal](https://github.com/microsoft/terminal).


