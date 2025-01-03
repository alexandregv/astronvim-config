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

          ["<leader>gw"] = {
            function() require("telescope").extensions.worktrees.list_worktrees() end,
            desc = "Switch Git Worktree",
          },
        },
      },
    },
  },
}
