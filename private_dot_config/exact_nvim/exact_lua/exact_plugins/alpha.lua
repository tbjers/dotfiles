---@type LazySpec
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
             __                          __
.---.-.-----|  |_.----.-----.-----.--.--|__.--------.
|  _  |__ --|   _|   _|  _  |     |  |  |  |        |
|___._|_____|____|__| |_____|__|__|\___/|__|__|__|__|
    ]]
    logo = string.rep("\n", 2) .. logo
    opts.section.header.val = vim.split(logo, "\n")
    return opts
  end,
}
