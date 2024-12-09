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

}
