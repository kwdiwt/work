return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            include = { ".env", "compose.override.yml" },
            layout = {
              layout = {
                width = 0.24,
                resize = false,
              },
            },
          },
        },
      },
      terminal = {
        win = {
          position = "float",
          width = 0.6,
          keys = {
            {
              "<C-\\>",
              "hide",
              mode = { "t", "n" },
            },
            term_normal = {
              "<esc>",
              function()
                vim.cmd("stopinsert")
              end,
              mode = "t",
              desc = "esc to normal mode",
            },
          },
        },
      },
    },
  },
}
