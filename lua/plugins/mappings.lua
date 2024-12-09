---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<leader>j"] = {
            function() require("mini.jump2d").start() end,
            desc = "Jump to spot",
          },
        },
      },
    },
  },
}
