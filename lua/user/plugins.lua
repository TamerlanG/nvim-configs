-- Automaticalyl install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "nvim-lua/plenary.nvim",                       commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" },
  { "windwp/nvim-autopairs",                       commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" },
  { "numToStr/Comment.nvim",                       commit = "2c26a00f32b190390b664e56e32fd5347613b9e2" },
  { "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" },
  { "kyazdani42/nvim-web-devicons",                commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" },
  { "kyazdani42/nvim-tree.lua",                    commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243" },
  { "akinsho/bufferline.nvim",                     commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" },
  { "moll/vim-bbye",                               commit = "25ef93ac5a87526111f43e5110675032dbcacf56" },
  { "nvim-lualine/lualine.nvim",                   commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" },
  { "akinsho/toggleterm.nvim",                     commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" },
  { "ahmedkhalf/project.nvim",                     commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" },
  { "lewis6991/impatient.nvim",                    commit = "969f2c5c90457612c09cf2a13fee1adaa986d350" },
  { "lukas-reineke/indent-blankline.nvim",         commit = "6177a59552e35dfb69e1493fd68194e673dc3ee2" },
  { "goolord/alpha-nvim",                          commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" },
  "folke/which-key.nvim",
  "christoomey/vim-tmux-navigator",

  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  -- Colorschemes
  { "folke/tokyonight.nvim",        commit = "8223c970677e4d88c9b6b6d81bda23daf11062bb" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "lunarvim/darkplus.nvim",
  "lunarvim/horizon.nvim",

  -- cmp plugins
  { "hrsh7th/nvim-cmp",             commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" },
  { "hrsh7th/cmp-buffer",           commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" },
  { "hrsh7th/cmp-path",             commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" }, -- path completions
  { "saadparwaiz1/cmp_luasnip",     commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }, -- snippet completions
  { "hrsh7th/cmp-nvim-lsp",         commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" },
  { "hrsh7th/cmp-nvim-lua",         commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" },

  -- snippets
  { "L3MON4D3/LuaSnip",             commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" }, --snippet engine
  { "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" }, -- a bunch of snippets to use

  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",

  "zbirenbaum/copilot.lua",

  -- Telescope
  "nvim-telescope/telescope.nvim",

  -- Treesitter	
  "nvim-treesitter/nvim-treesitter",
  "xiyaowong/nvim-transparent",
  -- Git
  { "lewis6991/gitsigns.nvim",       commit = "fef5d90953f0a730483b44745fae5938ba8227f8" },
}

require("lazy").setup(plugins, {})
