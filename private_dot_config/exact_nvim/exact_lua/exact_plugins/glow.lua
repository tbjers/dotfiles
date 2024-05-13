---@type LazySpec
return {
  "ellisonleao/glow.nvim",
  cmd = "Glow",
  config = function()
    require("glow").setup {
      border = "rounded",
      width = 120,
    }
  end,
}
