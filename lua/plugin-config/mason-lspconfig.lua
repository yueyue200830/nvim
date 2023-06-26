local ok, lspconfig = pcall(require, "mason-lspconfig")
if not ok then
  vim.notify("init mason-lspconfig error")
  return
end

lspconfig.setup({
  ensure_installed = {
    "gopls",
    "lua_ls",
    "clangd",
    "pyright",
    "tsserver",
  },
})
