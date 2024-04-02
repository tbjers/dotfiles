---@type LazySpec
return {
  "ellisonleao/gruvbox.nvim",
  opts = function(_, opts)
    local palette = require("gruvbox").palette
    opts.transparent_mode = true
    opts.terminal_colors = true
    opts.dim_inactive = false
    opts.contrast = ""
    opts.overrides = {
      NotifyBackground = { bg = palette.dark0 },
      CursorLine = { bg = palette.dark0 },
    }
  end,
}
