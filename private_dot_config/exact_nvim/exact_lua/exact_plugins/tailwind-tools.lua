---@type LazySpec
return {
  "luckasRanarison/tailwind-tools.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ---@type TailwindTools.Option
  opts = {
    document_color = {
      kind = "background",
    },
  },
}
