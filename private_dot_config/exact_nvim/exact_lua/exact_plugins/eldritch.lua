---@type LazySpec
return {
  "eldritch-theme/eldritch.nvim",
  opts = {
    transparent = true,
    terminal_colors = true,
    sidebars = { "qf", "help" },
    dim_inactive = false,
    lualine_bold = true,
    on_highlights = function(highlights, colors) highlights.NotifyBackground = { bg = colors.bg } end,
  },
}
