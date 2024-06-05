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
      contrast = "hard",
      italic = {
        strings = true,
        comments = true,
        folds = true,
        emphasis = true,
        operators = false,
      },
      bold = true,
      inverse = true,
      invert_tabline = false,
      invert_selection = false,
      strikethrough = true,
      undercurl = true,
      underline = true,
      overrides = {
        NotifyBackground = { bg = palette.dark0 },
        CursorLine = { bg = palette.dark0 },
      },
    }
  end,
}
