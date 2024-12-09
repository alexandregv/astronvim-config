---@type LazySpec
return {

  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          clipboard = "unnamed", -- Do not copy what gets deleted. Use `"+y` to copy to system clipboard
        },
      },
    },
  },

  { "wilmanbarrios/palenight.nvim", lazy = true },

  { "andweeb/presence.nvim", lazy = false },

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  { "Diogo-ss/42-header.nvim", cmd = "Stdheader", keys = "<F1>", opts = {} },

  { "hashivim/vim-terraform", ft = "terraform" },

  { "pearofducks/ansible-vim", ft = { "yaml", "jinja2" } },

  {
    "unisonweb/unison",
    branch = "trunk",
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/editor-support/vim")
      require("lazy.core.loader").packadd(plugin.dir .. "/editor-support/vim")
    end,
    init = function(plugin) require("lazy.core.loader").ftdetect(plugin.dir .. "/editor-support/vim") end,
  },

  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
