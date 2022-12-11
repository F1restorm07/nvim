# Neovim Configuration
---
**my personal, and highly opinionated neovim configuration**

startuptime: ~41-~64ms

## Plugins

### Utilities

***Keybinds***

 - *numToStr/Comment.nvim* / comment stuff out
 - *kylechui/nvim-surround* / surround blocks of text with parentheses, quotes, braces, etc.
 - *cshuaimin/ssr.nvim* / treesitter-based structured search and replace
 - *tpope/vim-unimpaired* / handy pairings of keybindings

***Extra Functionality***

 - *folke/noice.nvim* / overhaul of the notify, cmdline, and popup interfaces
 - *nvim-telescope/telescope.nvim* / fuzzy finder
         - *nvim-telescope/telescope-fzf-native.nvim* / allows fzf syntax when fuzzy finding
         - *nvim-telescope/telescope-freceny.nvim* / intelligent file prioritization
- *ggandor/leap.nvim* / blazingly fast on-screen navigation
- *tpope/vim-fugitive* / git wrapper
- *tamago324/lir.nvim* / file explorer

***Base Libraries and Utilities***

- *wbthomson/packer.nvim* / package manager
- *nvim-lua/plenary.nvim* / useful lua utilities for libraries and plugins
- *lewis6991/impatient.nvim* / caching of startup lua modules
- *kkharji/sqlite.lua* / sqlite bindings for libraries
- *MunifTanjim/nui.nvim* / library for popupmenu interfaces
- *rktjmp/lush.nvim* / library for colorscheme generation
- *windwp/nvim-autopairs* / automatically pair parentheses, quotes, braces, etc.
- *gnikdroy/projections.nvim* / project and workspace management

### Language Server

- *neovim/nvim-lspconfig* / configurations for language servers in neovim's builtin lsp
- *hrsh7th/nvim-cmp* / lsp completion
- *glepnir/lspsaga.nvim* / lsp plugin with many features
- *L3MON4D3/LusSnip* / snippet engine
- *rafamadriz/friendly-snippets* / preconfigured snippet collection

### Language Specific

- *Saecki/crates.nvim* / manage crates.io dependencies
- *ixru/nvim-markdown* / fork of vim-markdown with extra functionality

### Aesthetics

- *glepnir/galaxyline.nvim* / lightweight, highly configurable statusline
- *nanozuki/tabby.nvim* / highly configurable tabline
- *kyazdani42/nvim-web-devicons* / extra icons
- *goolord/alpha.nvim* / startup buffer
- *nvim-treesitter/nvim-treesitter* / file parser for colorschemes and other uses
- *lukas-reineke/headlines.nvim* / make markup headers fancy
- *stevearc/dressing.nvim* / overhaul of vim.ui interfaces
- *lewis6991/gitsigns.nvim* / display git file changes in gutter

### Colorscheme

- *shaunsingh/nord.nvim*
