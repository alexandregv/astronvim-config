-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        clipboard = "unnamed", -- Do not copy what gets deleted. Use `"+y` to copy to system clipboard
        showtabline = 0,
      },
    },
  },
}
