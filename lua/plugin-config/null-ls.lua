local ok, null_ls = pcall(require, "null-ls")
if not ok then
  vim.notify("init null-ls error")
  return
end

local code_actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  sources = {
    code_actions.gitsigns,
    formatting.prettier.with({ extra_args = {} }),
    formatting.stylua,
    formatting.gofmt,
    formatting.codespell,
    diagnostics.pylint,
    -- null_ls.builtins.diagnostics.golangci_lint,
  },
})
