local heirline_conditions = require "heirline.conditions"

---@type LazySpec
return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.winbar = {
        -- Only show the winbar when a filename is present
        { condition = function() return vim.fn.expand "%:t" ~= "" end },

        -- Set to "> file.ext [filetype]" (bold) if active
        {
          condition = function() return heirline_conditions.is_active() end,
          provider = function() return vim.fn.expand "> %t %y" end,
          hl = { bold = true },
        },

        -- Set to "file.ext [filetype]" (regular) if not active
        {
          condition = function() return heirline_conditions.is_not_active() end,
          provider = function() return vim.fn.expand "%t %y" end,
          hl = { bold = false },
        },
      }
    end,
  },

  {
    "echasnovski/mini.nvim",
    version = "*",
    lazy = false,
    config = function()
      -- Skip setup on Alpha dashboard (filetype=alpha)
      if vim.bo.filetype ~= "alpha" then return end

      require("mini.map").setup()
      require("mini.map").open()

      require("mini.trailspace").setup()
      require("mini.trailspace").trim()

      require("mini.move").setup()

      require("mini.jump2d").setup()

      require("mini.diff").setup()
    end,
  },

  {
    "andweeb/presence.nvim",
    lazy = false,
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "Diogo-ss/42-header.nvim",
    lazy = true,
    ft = { "c", "cpp", "asm" },
    cmd = "Stdheader",
    opts = {
      default_map = false, -- Renove default <F1> keymap
      auto_update = true,
      git = {
        enabled = true,
        user_global = false,
        email_global = false,
      },
    },
  },

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

  {
    "HiPhish/rainbow-delimiters.nvim",
  },
}
