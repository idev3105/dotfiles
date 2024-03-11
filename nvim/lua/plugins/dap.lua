return {
  {
    "mfussenegger/nvim-dap",
    opts = function(_, _)
      -- Load debug config from .vscode/launch.json
      require("dap.ext.vscode").load_launchjs(nil, {
        node = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
        ["pwa-node"] = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
      })
    end,
  },
}
