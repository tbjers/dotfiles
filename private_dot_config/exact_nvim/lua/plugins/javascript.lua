---@type LazySpec
return {
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },
  {
    "vuki656/package-info.nvim",
    config = function()
      require("package-info").setup {
        colors = {
          up_to_date = "#00aa00",
          outdated = "#aa0000",
        },
        icons = {
          enable = true,
          style = {
            up_to_date = "|  ",
            outdated = "|  ",
          },
        },
        autostart = true,
        hide_up_to_date = false,
        package_manager = "pnpm",
      }
    end,
  },
}
