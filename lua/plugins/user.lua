---@type LazySpec
return {

  { "wilmanbarrios/palenight.nvim", lazy = true },

  { "andweeb/presence.nvim", lazy = false },

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
}
