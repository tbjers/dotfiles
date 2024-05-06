---@type LazySpec
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        transparent_background = true,
        integrations = {
          aerial = true,
          alpha = true,
          cmp = true,
          dap = true,
          dap_ui = true,
          gitsigns = true,
          illuminate = true,
          indent_blankline = true,
          markdown = true,
          mason = true,
          native_lsp = true,
          neotree = true,
          notify = true,
          semantic_tokens = true,
          symbols_outline = true,
          telescope = true,
          treesitter = true,
          ts_rainbow = false,
          ufo = true,
          which_key = true,
          window_picker = true,
        },
      }
    end,
  },
  {
    "vuki656/package-info.nvim",
    config = function()
      local palette = require("catppuccin.palettes").get_palette "mocha"
      require("package-info").setup {
        colors = {
          up_to_date = palette.green,
          outdated = palette.red,
        },
      }
    end,
  },
}
