local plugins = {
  {
    "jdhao/better-escape.vim",
    lazy = false
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "lervag/vimtex",
    lazy = false,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = function ()
      return require "custom.configs.tokyonight"
    end,
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function ()
      return require "custom.configs.harpoon"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
     require "plugins.configs.lspconfig"
     require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
     vim.g.rustfmt_autosave = 1
    end,
  }
}

return plugins
