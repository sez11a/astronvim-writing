return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "tpope/vim-fugitive", lazy = false },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
    lazy = false,
  },
  {
    "kshenoy/vim-signature",
    lazy = false,
  },
  -- required by vim-markdown
  {
    "godlygeek/tabular",
    lazy = false,
  },
  {
    "preservim/vim-markdown",
    lazy = false,
    ft = "markdown",
  },
  {
    "preservim/vim-wordy",
    ft = "markdown",
  },
  {
    "preservim/vim-pencil",
    ft = "markdown",
  },
  {
    "preservim/vim-wordchipper",
    ft = "markdown",
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "vim-voom/VOoM",
    lazy = false,
  },
  {
    "vimoutliner/vimoutliner",
    ft = "otl",
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      --include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { "./lua/user/snippets" },
      }
    end,
  },
}
