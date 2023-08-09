# 💤 LazyVim IDE config for Neovim

[![IT Man - Talk #33 NeoVim as IDE [Vietnamese]](https://i.ytimg.com/vi/dFi8CzvqkNE/hqdefault.jpg)](https://www.youtube.com/watch?v=dFi8CzvqkNE)

[![IT Man - Talk #35 #Neovim IDE for Web Developer](https://i.ytimg.com/vi/3EbgMJ-RcWY/hqdefault.jpg)](https://www.youtube.com/watch?v=3EbgMJ-RcWY)

**[Note:]** This Neovim configuration is based on the starter template at
<https://github.com/jellydn/lazy-nvim-ide> and is extensively enhanced for
use with [Lazyman](https://github.com/doctorfree/nvim-lazyman).

<a href="https://dotfyle.com/doctorfree/nvim-lazyide"><img src="https://dotfyle.com/doctorfree/nvim-lazyide/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/doctorfree/nvim-lazyide"><img src="https://dotfyle.com/doctorfree/nvim-lazyide/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/doctorfree/nvim-lazyide"><img src="https://dotfyle.com/doctorfree/nvim-lazyide/badges/plugin-manager?style=flat" /></a>

## LazyIde Neovim Configuration Installation

### Install Lazyman

[Lazyman](https://lazyman.dev) provides tools to manage multiple Neovim configurations
and a shell function to fuzzy search and select among them.

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

### Install the LazyIde Neovim configuration

```bash
lazyman -L LazyIde
```

## Configure the shell environment

```bash
export NVIM_APPNAME="nvim-LazyIde"
alias nvim="NVIM_APPNAME=nvim-LazyIde nvim"
```

Alternately, use the `nvims` Lazyman shell function and select `LazyIde`.

## Screenshots

<img width="1792" alt="image" src="https://user-images.githubusercontent.com/870029/228557089-0faaa49f-5dab-4704-a919-04decfc781ac.png">

## Plugins

### bars-and-lines

- [SmiteshP/nvim-navic](https://dotfyle.com/plugins/SmiteshP/nvim-navic)
- [luukvbaal/statuscol.nvim](https://dotfyle.com/plugins/luukvbaal/statuscol.nvim)

### color

- [folke/twilight.nvim](https://dotfyle.com/plugins/folke/twilight.nvim)

### colorscheme

- [folke/tokyonight.nvim](https://dotfyle.com/plugins/folke/tokyonight.nvim)
- [catppuccin/nvim](https://dotfyle.com/plugins/catppuccin/nvim)
- [olimorris/onedarkpro.nvim](https://dotfyle.com/plugins/olimorris/onedarkpro.nvim)
- [rebelot/kanagawa.nvim](https://dotfyle.com/plugins/rebelot/kanagawa.nvim)
- [Mofiqul/dracula.nvim](https://dotfyle.com/plugins/Mofiqul/dracula.nvim)
- [EdenEast/nightfox.nvim](https://dotfyle.com/plugins/EdenEast/nightfox.nvim)
- [neanias/everforest-nvim](https://dotfyle.com/plugins/neanias/everforest-nvim)

### completion

- [zbirenbaum/copilot.lua](https://dotfyle.com/plugins/zbirenbaum/copilot.lua)
- [simrat39/rust-tools.nvim](https://dotfyle.com/plugins/simrat39/rust-tools.nvim)
- [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)

### debugging

- [rcarriga/nvim-dap-ui](https://dotfyle.com/plugins/rcarriga/nvim-dap-ui)
- [mfussenegger/nvim-dap](https://dotfyle.com/plugins/mfussenegger/nvim-dap)

### editing-support

- [folke/zen-mode.nvim](https://dotfyle.com/plugins/folke/zen-mode.nvim)
- [windwp/nvim-ts-autotag](https://dotfyle.com/plugins/windwp/nvim-ts-autotag)
- [gbprod/yanky.nvim](https://dotfyle.com/plugins/gbprod/yanky.nvim)

### fuzzy-finder

- [jvgrootveld/telescope-zoxide](https://dotfyle.com/plugins/jvgrootveld/telescope-zoxide)
- [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)

### golang

- [ray-x/go.nvim](https://dotfyle.com/plugins/ray-x/go.nvim)

### keybinding

- [anuvyklack/keymap-amend.nvim](https://dotfyle.com/plugins/anuvyklack/keymap-amend.nvim)
- [max397574/better-escape.nvim](https://dotfyle.com/plugins/max397574/better-escape.nvim)
- [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)

### lsp

- [jose-elias-alvarez/null-ls.nvim](https://dotfyle.com/plugins/jose-elias-alvarez/null-ls.nvim)
- [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
- [weilbith/nvim-code-action-menu](https://dotfyle.com/plugins/weilbith/nvim-code-action-menu)
- [VidocqH/lsp-lens.nvim](https://dotfyle.com/plugins/VidocqH/lsp-lens.nvim)
- [stevearc/aerial.nvim](https://dotfyle.com/plugins/stevearc/aerial.nvim)
- [jose-elias-alvarez/typescript.nvim](https://dotfyle.com/plugins/jose-elias-alvarez/typescript.nvim)
- [glepnir/lspsaga.nvim](https://dotfyle.com/plugins/glepnir/lspsaga.nvim)

### lsp-installer

- [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)

### marks

- [ThePrimeagen/harpoon](https://dotfyle.com/plugins/ThePrimeagen/harpoon)

### nvim-dev

- [ray-x/guihua.lua](https://dotfyle.com/plugins/ray-x/guihua.lua)
- [folke/neodev.nvim](https://dotfyle.com/plugins/folke/neodev.nvim)
- [MunifTanjim/nui.nvim](https://dotfyle.com/plugins/MunifTanjim/nui.nvim)
- [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)

### plugin-manager

- [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)

### preconfigured

- [LazyVim/LazyVim](https://dotfyle.com/plugins/LazyVim/LazyVim)
- [doctorfree/nvim-lazyman](https://dotfyle.com/plugins/doctorfree/nvim-lazyman)

### project

- [ahmedkhalf/project.nvim](https://dotfyle.com/plugins/ahmedkhalf/project.nvim)
- [windwp/nvim-spectre](https://dotfyle.com/plugins/windwp/nvim-spectre)

### scrolling

- [karb94/neoscroll.nvim](https://dotfyle.com/plugins/karb94/neoscroll.nvim)

### search

- [ray-x/sad.nvim](https://dotfyle.com/plugins/ray-x/sad.nvim)

### session

- [olimorris/persisted.nvim](https://dotfyle.com/plugins/olimorris/persisted.nvim)

### snippet

- [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)

### startup

- [goolord/alpha-nvim](https://dotfyle.com/plugins/goolord/alpha-nvim)

### statusline

- [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)

### syntax

- [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)

### test

- [nvim-neotest/neotest](https://dotfyle.com/plugins/nvim-neotest/neotest)

### utility

- [anuvyklack/fold-preview](https://dotfyle.com/plugins/anuvyklack/fold-preview)
- [folke/noice.nvim](https://dotfyle.com/plugins/folke/noice.nvim)
- [rcarriga/nvim-notify](https://dotfyle.com/plugins/rcarriga/nvim-notify)
- [kevinhwang91/nvim-ufo](https://dotfyle.com/plugins/kevinhwang91/nvim-ufo)

### workflow

- [m4xshen/hardtime.nvim](https://dotfyle.com/plugins/m4xshen/hardtime.nvim)

## Language Servers

- `ansiblels`
- `astro`
- `awk_ls`
- `ccls`
- `clangd`
- `cmake`
- `cssls`
- `cssmodules_ls`
- `denols`
- `dockerls`
- `eslint`
- `gopls`
- `graphql`
- `html`
- `jsonls`
- `lua_ls`
- `marksman`
- `pylsp`
- `pyright`
- `ruff_lsp`
- `rust_analyzer`
- `sqlls`
- `svelte`
- `tailwindcss`
- `taplo`
- `texlab`
- `tsserver`
- `vimls`
- `yamlls`

## Tips

- Improve key repeat on Mac OSX, need to restart

```sh
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 14
```

## Authors

👤 **Ronald Joe Record**

- Website: <https://ronrecord.com/>
- Twitter: [@ronrecord](https://twitter.com/ronrecord)
- Github: [@doctorfree](https://github.com/doctorfree)

👤 **Huynh Duc Dung**

- Website: <https://productsway.com/>
- Twitter: [@jellydn](https://twitter.com/jellydn)
- Github: [@jellydn](https://github.com/jellydn)

## Show your support

Give a ⭐️ if this project helped you!

[![paypal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/ronrecord)
[![buymeacoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/doctorfree)
