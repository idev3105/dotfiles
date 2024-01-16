-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"

vim.opt.relativenumber = false

vim.fn.sign_define("DapBreakpoint", { text = "🔴" })
vim.fn.sign_define("DapStopped", { text = "⚡" })
