local plugins = {
  {
    "smoka7/multicursors.nvim",
    event = "BufEnter",
    dependencies = {
      "smoka7/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
  { 'echasnovski/mini.move', version = '*',
-- Options which control moving behavior
options = {
  -- Automatically reindent selection during linewise vertical move
  reindent_linewise = true,
}, },
  { 'echasnovski/mini.surround', version = '*', },
  {
    "folke/flash.nvim",
    event = "BufEnter",
    ---@type Flash.Config
    opts = {
      modes = {
        search = {
          enabled = true,
        },
        char = {
          jump_labels = true,
        },
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    event = "BufReadPre",
    config = function()
      require("neoscroll").setup {
        easing_function = "sine",
      }
    end,
  },
}

return plugins
