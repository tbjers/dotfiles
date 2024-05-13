---@type LazySpec
return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    local palette = require("gruvbox").palette
    require("gruvbox").setup {
      transparent_mode = true,
      terminal_colors = true,
      contrast = "",
      italic = {
        strings = true,
        comments = true,
        folds = true,
        emphasis = true,
        operators = false,
      },
      bold = true,
      inverse = false,
      invert_tabline = true,
      invert_selection = false,
      strikethrough = true,
      undercurl = true,
      overrides = {
        NotifyBackground = { bg = palette.dark0 },
        CursorLine = { bg = palette.dark0 },
      },
    }
  end,
}
