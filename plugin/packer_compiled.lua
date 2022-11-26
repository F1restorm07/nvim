-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = true
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lukegardner/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lukegardner/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lukegardner/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lukegardner/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lukegardner/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    keys = { { "", "gc" }, { "", "gb" }, { "", "g<" }, { "", "g>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ui.alpha-nvim\frequire\0" },
    loaded = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-cmdline" },
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-nvim-lsp" },
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["crates.nvim"] = {
    after_files = { "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vcrates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/Saecki/crates.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  embark = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/embark",
    url = "https://github.com/embark-theme/vim"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ui.galaxyline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26accessories.headlines\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24set_default_keymaps\tleap\frequire\0" },
    keys = { { "", "s" }, { "", "S" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lir.nvim"] = {
    config = { "\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vui.lir\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/lir.nvim",
    url = "https://github.com/tamago324/lir.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16lsp.lspsaga\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  neogen = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/neogen",
    url = "https://github.com/danymat/neogen"
  },
  neotest = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["nightfox.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18editor.notify\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nui.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "LuaSnip", "cmp-path", "cmp-nvim-lua" },
    config = { "\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\flsp.cmp\frequire\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    after = { "lspsaga.nvim" },
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18lsp.lspconfig\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-markdown"] = {
    config = { "\27LJ\2\n6\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\2\0=\1\2\0K\0\1\0\25vim_markdown_conceal\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-markdown",
    url = "https://github.com/ixru/nvim-markdown"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    keys = { { "", "ys" }, { "", "cs" }, { "", "ds" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treeclimber"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21nvim-treeclimber\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-treeclimber",
    url = "https://github.com/Dkendal/nvim-treeclimber"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27editor.nvim-treesitter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oxocarbon.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/oxocarbon.nvim",
    url = "https://github.com/shaunsingh/oxocarbon.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["projections.nvim"] = {
    config = { "\27LJ\2\nn\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\1K\0\1\0\19load_extension\14telescope\nsetup\16projections\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/projections.nvim",
    url = "https://github.com/gnikdroy/projections.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["ssr.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/ssr.nvim",
    url = "https://github.com/cshuaimin/ssr.nvim"
  },
  ["tabby.nvim"] = {
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rui.tabby\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/tabby.nvim",
    url = "https://github.com/nanozuki/tabby.nvim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim", "projections.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21search.telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-unimpaired"] = {
    keys = { { "", "[" }, { "", "]" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21editor.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/lukegardner/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim",
  ["^Comment%.api"] = "Comment.nvim",
  ["^cmp"] = "friendly-snippets",
  ["^cmp_nvim_lsp"] = "friendly-snippets",
  ["^lir"] = "lir.nvim",
  ["^lspconfig"] = "nvim-lspconfig",
  ["^lspkind"] = "lspkind.nvim",
  ["^lush"] = "lush.nvim",
  ["^nui"] = "nui.nvim",
  ["^nvim%-treesitter"] = "nvim-treeclimber",
  ["^plenary"] = "plenary.nvim",
  ["^projections"] = "projections.nvim",
  ["^ssr"] = "ssr.nvim",
  ["^telescope"] = "telescope.nvim",
  ["^which%-key"] = "which-key.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ui.alpha-nvim\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nord.nvim ]]
vim.cmd [[ packadd galaxyline.nvim ]]

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ui.galaxyline\frequire\0", "config", "galaxyline.nvim")

vim.cmd [[ packadd tabby.nvim ]]

-- Config for: tabby.nvim
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rui.tabby\frequire\0", "config", "tabby.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> s <cmd>lua require("packer.load")({'leap.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ds <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "ds", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ] <cmd>lua require("packer.load")({'vim-unimpaired'}, { keys = "]", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> g> <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "g>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> S <cmd>lua require("packer.load")({'leap.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> g< <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "g<lt>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> [ <cmd>lua require("packer.load")({'vim-unimpaired'}, { keys = "[", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> cs <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "cs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ys <cmd>lua require("packer.load")({'nvim-surround'}, { keys = "ys", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType norg ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "norg" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType wgsl ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "wgsl" }, _G.packer_plugins)]]
vim.cmd [[au FileType kotlin ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "kotlin" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType org ++once lua require("packer.load")({'headlines.nvim'}, { ft = "org" }, _G.packer_plugins)]]
vim.cmd [[au FileType neorg ++once lua require("packer.load")({'headlines.nvim'}, { ft = "neorg" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'neotest', 'neogen'}, { ft = "svelte" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'neotest', 'neogen', 'headlines.nvim', 'nvim-markdown'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs', 'friendly-snippets', 'nvim-cmp', 'nvim-lspconfig', 'lspkind.nvim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { event = "CursorHold *" }, _G.packer_plugins)]]
vim.cmd [[au VimLeavePre * ++once lua require("packer.load")({'projections.nvim'}, { event = "VimLeavePre *" }, _G.packer_plugins)]]
vim.cmd [[au DirChangedPre * ++once lua require("packer.load")({'projections.nvim'}, { event = "DirChangedPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'noice.nvim', 'gitsigns.nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
vim.cmd [[au CmdLineEnter * ++once lua require("packer.load")({'noice.nvim', 'nvim-cmp', 'lspkind.nvim'}, { event = "CmdLineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lir.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-lspconfig'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /Users/lukegardner/.local/share/nvim/site/pack/packer/opt/nvim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
