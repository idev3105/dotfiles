return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofumpt", "goimports-reviser", "golines", "gomodifytags", "gci" },
      },
    },
  },
}
