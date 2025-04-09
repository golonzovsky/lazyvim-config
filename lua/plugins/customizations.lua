return {
  -- change trouble config
  {
    "sphamba/smear-cursor.nvim",
    --faster
    opts = { -- Default  Range
      stiffness = 0.8, -- 0.6      [0, 1]
      trailing_stiffness = 0.5, -- 0.3      [0, 1]
      distance_stop_animating = 0.5, -- 0.1      > 0
    },
  },

  -- {
  --   "saghen/blink.cmp",
  --   opts = {
  --     keymap = {
  --       preset = "enter",
  --       ["<C-y>"] = { "select_and_accept" },
  --       ["<C-x"] = { "show", "show_documentation", "hide_documentation" },
  --     },
  --   },
  -- },nvim-lspconfig

  -- {
  --   "nvim-lspconfig",
  --
  --   opts = {
  --     servers = {
  --       tailwindcss = {
  --         filetypes_include = {
  --           "svelte",
  --         },
  --       },
  --     },
  --   },
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Ensure the options exist
      opts.highlight = opts.highlight or {}

      -- Set injection priority higher (default is 100)
      opts.highlight.additional_vim_regex_highlighting = false
      opts.highlight.priority = 200

      -- If you need to be even more specific about injection priorities
      opts.injection = {
        enable = true,
        priority = 300, -- Very high priority for injections
      }

      return opts
    end,
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      --style = "night",
      on_highlights = function(hl, c)
        hl.Visual = {
          --bg = "#ff0000",
          bg = c.magenta2, -- #ff007c
          fg = c.black,
        }
      end,
    },
  },
}
