---@type LazySpec
return {
  "Mofiqul/dracula.nvim",
  config = function()
    local colors = require("dracula").colors()
    require("dracula").setup {
      italic_comment = true,
      transparent_bg = true,
      overrides = {},
      show_end_of_buffer = true,
      colors = colors,
    }
  end,
}
