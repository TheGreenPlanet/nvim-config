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
    lazy = true,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      { "<leader>a",
      function ()
        require("harpoon"):list():append()
      end,
      desc = "Harpoon Add",
      },
      { "<leader>m",
        function ()
          require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        desc = "Harpoon Menu",
      },
      { "äj",
        function ()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon Select 1"
      },
        { "äk",
        function ()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon Select 2"
      },
      {"äl",
        function ()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon Select 3"
      },
        { "äö",
        function ()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon Select 4"
      },
    },
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
