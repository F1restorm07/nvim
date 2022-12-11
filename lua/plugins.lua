vim.cmd [[packadd packer.nvim]]

local treesitter_filetypes = {
        'markdown',
        'rust',
        'lua',
        'norg',
        'vim',
        'toml',
        'wgsl',
        'kotlin',
        'svelte',
        'sh'
}
return require('packer').startup({function(use)
-- {{{ Utilities
        -- {{{ Keybinds
                use{'numToStr/Comment.nvim',
                        keys = { 'gc', 'gb', 'g<', 'g>'},
                        module = { 'Comment', 'Comment.api' },
                        config = function() require('Comment').setup() end
                }
                use{'kylechui/nvim-surround',
                        keys = { 'ys', 'cs', 'ds' },
                        config = function() require('nvim-surround').setup() end
                }
                -- use{'cshuaimin/ssr.nvim',
                --         module = 'ssr'
                -- }
                use{'tpope/vim-unimpaired', keys = { '[', ']' }}
        -- }}}

        -- {{{ Extra Functionality
                use{'folke/noice.nvim',
                        event = { 'CmdLineEnter', 'BufEnter' },
                        config = function() require('editor.notify') end
                }
                use{'nvim-telescope/telescope.nvim',
                        cmd = 'Telescope',
                        module = 'telescope',
                        config = function() require('search.telescope') end
                }
                use{'nvim-telescope/telescope-fzf-native.nvim',
                        after = 'telescope.nvim',
                        run = 'make',
                        config = function() require'telescope'.load_extension('fzf') end
                }
                use{'nvim-telescope/telescope-frecency.nvim',
                        module = 'telescope',
                        config = function() require'telescope'.load_extension('frecency') end
                }
                use{'ggandor/leap.nvim',
                        keys = { 's', 'S' },
                        config = function()
                                require('leap').set_default_keymaps()
                        end,
                }
                use{'tpope/vim-fugitive',
                        keys = '<leader>g',
                        cmd = { 'Git', 'Gread', 'Gwrite', 'Gedit', 'Gdiffsplit', 'Ggrep', 'GMove', 'GDelete', 'GBrowse'}
                }
                use{'tamago324/lir.nvim',
                        module = 'lir',
                        event = 'VimEnter',
                        config = function() require('ui.lir') end
                }
        -- }}}

        use{'wbthomason/packer.nvim', opt = true}
        use{'nvim-lua/plenary.nvim', module = 'plenary'}
        use{'lewis6991/impatient.nvim'}
        use{'kkharji/sqlite.lua'}
        use{'MunifTanjim/nui.nvim', module = 'nui'}
        -- use{'rktjmp/lush.nvim', module = 'lush'}
        use{'windwp/nvim-autopairs',
                event = 'InsertEnter',
                config = function() require('nvim-autopairs').setup() end
        }
        use{'gnikdroy/projections.nvim',
                module = 'projections',
                after = 'telescope.nvim',
                event = { 'VimLeavePre', 'DirChangedPre' },
                cmd = { 'StoreSession', 'RestoreSession', 'AddWorkspace'},
                config = function()
                        require('projections').setup({})
                        require'telescope'.load_extension('projections')
                end
        }
-- }}}

-- {({ Language Server
        use{'neovim/nvim-lspconfig',
                module = 'lspconfig',
                event = { 'CursorHold', 'BufNewFile', 'InsertEnter'},
                config = function() require('lsp.lspconfig') end
        }

        use{'hrsh7th/nvim-cmp',
                event = {'InsertEnter', 'CmdLineEnter'},
                after = 'friendly-snippets',
                requires = {
                        {'onsails/lspkind.nvim',
                                event = { 'InsertEnter', 'CmdLineEnter'},
                                module = 'lspkind'
                        }
                },
                config = function() require('lsp.cmp') end
        }
        use{'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'}
        use{'hrsh7th/cmp-buffer', after = 'nvim-cmp'}
        use{'hrsh7th/cmp-path', after = 'nvim-cmp'}
        use{'hrsh7th/cmp-cmdline', after = 'cmp-buffer'}
        use{'saadparwaiz1/cmp_luasnip', after = 'LuaSnip'}
        use{'glepnir/lspsaga.nvim',
                branch = 'main',
                after = 'nvim-lspconfig',
                config = function() require('lsp.lspsaga') end
        }
        use{'L3MON4D3/LuaSnip',
                after = 'nvim-cmp',
                requires = 'friendly-snippets'
        }
        use{'rafamadriz/friendly-snippets',
                module = { 'cmp', 'cmp_nvim_lsp' },
                event = 'InsertEnter',
        }
-- }}}

-- {{{ Language Specific
        use{'Saecki/crates.nvim',
                event = "BufRead Cargo.toml",
                config = function() require('crates').setup() end
        }
        use{'ixru/nvim-markdown',
                ft = 'markdown',
                config = function() vim.g.vim_markdown_conceal = 2 end
        }
-- }}}

-- {{{ Aesthetics
        -- use{'Pocco81/true-zen.nvim',
        --         cmd = {
        --                 'TZAtaraxis',
        --                 'TZFocus',
        --                 'TZMinimalist',
        --                 'TZNarrow'
        --         },
        --         config = function() require('accessories.true-zen') end
        -- }
        use{'glepnir/galaxyline.nvim',
                branch = 'main',
                after = 'nord.nvim',
                config = function() require('ui.galaxyline') end
        }
        use{'nanozuki/tabby.nvim',
                after = 'nord.nvim',
                config = function() require('ui.tabby') end
        }
        use{'kyazdani42/nvim-web-devicons',
                module = 'nvim-web-devicons',
                config = function() require('devicons') end
        }
        use{'goolord/alpha-nvim',
                config = function() require('ui.alpha-nvim') end
        }
        use{'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate',
                event = 'CursorHold',
                config = function() require('editor.nvim-treesitter') end
        }
        use{'lukas-reineke/headlines.nvim',
                ft = { 'markdown', 'org', 'neorg' },
                config = function() require('accessories.headlines') end
        }
        use{'stevearc/dressing.nvim'}
        use{'lewis6991/gitsigns.nvim',
                event = 'BufEnter',
                config = function() require('gitsigns').setup() end
        }
-- }}}
-- {{{ Colorschemes
        use{'shaunsingh/nord.nvim'}
-- }}}

end,
config = {
        display = {
                open_fn = function ()
                        return require('packer.util').float({ border = 'single' })
                end
        },
        profile = {
                enable = true,
        }
}})
