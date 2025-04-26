return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            include = { ".env" },
            layout = {
              layout = {
                width = 0.24,
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
