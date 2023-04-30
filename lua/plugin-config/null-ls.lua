local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.codespell,
    null_ls.builtins.diagnostics.pylint,
    -- null_ls.builtins.diagnostics.golangci_lint,
  }
})
