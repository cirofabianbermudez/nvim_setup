# nvim_setup

## Gettting started

This is my personal [Neovim](https://neovim.io/) configuration file, it can be used in Windows and Linux, it has the following plugins:

- Two color-schemes (catppuccin,rose-pine)
- Telescope
- Treesitter
- Oil
- Lualine

I think this are the bare minimum plugins need it to have a very nice experience using Neovim, other functionally can be accomplish setting up internal variables of Neovim or writing remaps.

## Installation

### Windows

The installation is strait forward, all the dependencies can be installed manually but it is recommended to use [Scoop](https://scoop.sh/) because it is faster and easier to manage.

Install Scoop:

```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

Install Neovim and Telescope dependencies [fd](https://github.com/sharkdp/fd) [ripgrep](https://github.com/BurntSushi/ripgrep):

```bash
scoop install neovim
scoop install fd
sccop install ripgrep
scoop bucket add nerd-fonts
scoop install nerd-fonts/Hack-NF-Mono
```

Install [packer.nvim](https://github.com/wbthomason/packer.nvim):

```bash
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

> [!NOTE]  
> packer.nvim is no longer maintained and it is recommend to use [lazy.nvim](https://github.com/folke/lazy.nvim) instead. For legacy this configuration the packer.nvim configuration is here but in the future it will be updated for lazy.nvim.


## Project status

TODO: Migrate to lazy.nvim
