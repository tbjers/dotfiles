return {
  -- Add plugins, the lazy syntax
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
  },
  {
    "buildpeak/vim-dbml",
    event = "BufRead",
  },
  {
    "FabijanZulj/blame.nvim",
    event = "User AstroGitFile",
    opts = {
      virtual_style = "right_align",
      merge_consecutive = true,
    },
  },
  {
    "imsnif/kdl.vim",
    event = "BufRead",
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {},
    keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "js-everts/cmp-tailwind-colors", opts = {} },
    },
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        if item.kind == "Color" then
          item = require("cmp-tailwind-colors").format(entry, item)
          if item.kind == "Color" then return format_kinds(entry, item) end
          return item
        end
        return format_kinds(entry, item)
      end
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
    ft = "python", -- NOTE: ft: lazy-load on filetype
    config = function(_, opts)
      local path = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/bin/python"
      require("dap-python").setup(path, opts)
    end,
  },
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        names = true,
        tailwind = true,
      },
    },
  },
  {
    "pearofducks/ansible-vim",
    init = function()
      local function yaml_ft(path, bufnr)
        -- get content of buffer as string
        local content = vim.filetype.getlines(bufnr)
        if type(content) == "table" then content = table.concat(content, "\n") end

        -- check if file is in roles, tasks, or handlers folder
        local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
        if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
        -- check for known ansible playbook text and if found, return yaml.ansible
        local regex = vim.regex "hosts:\\|tasks:"
        if regex and regex:match_str(content) then return "yaml.ansible" end
        -- return yaml if nothing else
        return "yaml"
      end

      vim.filetype.add {
        extension = {
          yml = yaml_ft,
          yaml = yaml_ft,
        },
      }
    end,
    ft = "yaml.ansible",
  },
  { "PProvost/vim-ps1", ft = "ps1" },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup {
        bind = true,
        fix_pos = true,
        handler_opts = {
          border = "rounded",
        },
        transparency = 50,
      }
    end,
  },
}
