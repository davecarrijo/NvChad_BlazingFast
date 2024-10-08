return {
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason", "oil", "harpoon", "spectre" },
    },
  },
  {
    "folke/neodev.nvim",
    opts = {},
    config = function()
      require("neodev").setup {
        library = { plugins = { "nvim-dap-ui" }, types = true },
      }
    end,
  },
  { 'echasnovski/mini.move', version = '*', },
  { 'echasnovski/mini.surround', version = '*', },
  {
    "kevinhwang91/nvim-ufo",
    event = "BufEnter",
    dependencies = {
      "kevinhwang91/promise-async",
      {
        "luukvbaal/statuscol.nvim",
        config = function()
          local builtin = require "statuscol.builtin"
          require("statuscol").setup {
            relculright = true,
            segments = {
              { text = { "%s" }, click = "v:lua.ScSa" },
              { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
            },
          }
        end,
      },
    },
    opts = {},
    config = function()
      require("ufo").setup {
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
        close_fold_kinds_for_ft = {
          default = { "imports", "comment" },
        },
      }

      vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
      vim.o.foldcolumn = "1" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,
  },
  {
    "ThePrimeagen/vim-apm",
    opts = {},
    config = function()
      local apm = require "vim-apm"

      apm:setup {}
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "lewis6991/spaceless.nvim",
    opts = {},
  },
  -- ---- INFRASTRUCTURE ----
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    }
  },
   -- Indentline
   {
    "lukas-reineke/indent-blankline.nvim",
    event = { VeryLazy },
  },
  -- Git
  {
    "airblade/vim-gitgutter",
    event = { VeryLazy },
    -- init = lua_init("airblade/vim-gitgutter"),
  },
  -- Symbol navigation
  {
    "DNLHC/glance.nvim",
    cmd = { "Glance" },
  },
  -- ---- SPECIFIC LANGUAGE SUPPORT ----

  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    cmd = {
      "MarkdownPreviewToggle",
      "MarkdownPreview",
      "MarkdownPreviewStop",
    },
    ft = { "markdown" },
  },
  -- ---- GIT INTEGRATION ----
  --Blame
  {
    "f-person/git-blame.nvim",
    cmd = {
      "GitBlameToggle",
      "GitBlameEnable",
      "GitBlameDisable",
    },
  },
  -- Permlink
  {
    "linrongbin16/gitlinker.nvim",
    cmd = { "GitLink" },
  },

  -- ---- ENHANCEMENT ----

  -- Auto pair/close
  {
    "windwp/nvim-autopairs",
    event = { VeryLazy, InsertEnter },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
