-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    kdl = "kdl",
    dbml = "dbml",
    hujson = "jsonc",
    tfvars = "terraform",
  },
  filename = {
    Justfile = "just",
  },
  pattern = {
    [".devcontainer/devcontainer.json"] = "jsonc",
  },
}
