local plugins = {
  {
    "jdhao/better-escape.vim",
    lazy = false,
    init = function ()
      vim.g.better_escape_interval = 200
    end
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
  },
  {
    'saecki/crates.nvim',
    ft = { "rust", "toml"},
    tag = 'stable',
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
    keys = {
      { "<leader>cu",
        function ()
          require("crates").update_all_crates()
        end,
        desc = "Cargo: Update all crates",
      },
      { "<leader>cU",
        function ()
          require("crates").update_all_crates()
        end,
        desc = "Cargo: Upgrade all crates",
      },
      { "<leader>cv",
        function ()
          require("crates").show_versions_popup()
        end,
        desc = "Cargo: Show versions popup",
      },
      { "<leader>cf",
        function ()
          require("crates").show_features_popup()
        end,
        desc = "Cargo: Show features popup",
      },
      { "<leader>cH",
        function ()
          require("crates").open_homepage()
        end,
        desc = "Cargo: Open homepage",
      },
      { "<leader>cR",
        function ()
          require("crates").open_repository()
        end,
        desc = "Cargo: Open repository",
      },
      { "<leader>cD",
        function ()
          require("crates").open_documentation()
        end,
        desc = "Cargo: Open documentation",
      },
      { "<leader>cC",
        function ()
          require("crates").open_crates_io()
        end,
        desc = "Cargo: Open crates io",
      },
    }
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require("plugins.configs.cmp")
      table.insert(M.sources, {name = "crates"})
      return M
    end
  }
}

return plugins
