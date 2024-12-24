return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        terminal_settings = {
          {
            event = "FileType",
            pattern = "c,asm",
            desc = "set cc=81 for C/ASM",
            callback = function() vim.opt_local.cc = "81" end,
          },
        },
      },
    },
  },
}
