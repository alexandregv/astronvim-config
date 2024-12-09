-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Colorschemes --
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- Palenight colorscheme installed in ~/.config/nvim/lua/plugins/user.lua

  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
}
