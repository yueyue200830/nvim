local exist, lspconfig = pcall(require, "lspconfig")

if not exist then
  return
end

local servers = {
  -- lua
  lua_ls = {
    enabled = true,
    config = require("lsp.providers.lua"),
  },
  -- golang
  gopls = {
    enabled = true,
    config = {},
  },
  -- cpp
  clangd = {
    enabled = true,
    config = {},
  },
  -- json
  jsonls = {
    enabled = true,
    config = {},
  },
  -- typescript
  tsserver = {
    enabled = false,
  },
  -- css
  cssls = {
    enabled = false,
  },
}

local function init_servers(configs)
  for server, config in pairs(configs) do
    if config.enabled then
      lspconfig[server].setup(config.config)
    end
  end
end

init_servers(servers)
