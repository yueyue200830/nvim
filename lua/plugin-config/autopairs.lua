local ok, autopairs = pcall(require, "nvim-autopairs")
if not ok then
  vim.notify("init autopairs error")
  return
end

autopairs.setup({
  check_ts = true,
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
  },
  disable_filetype = { "TelescopePrompt", "vim" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = [=[[%'%"%>%]%)%}%,]]=],
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    manual_position = true,
    highlight = "Search",
    highlight_grey = "Comment",
  },
})

-- Insert `(` after select function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp_ok, cmp = pcall(require, "cmp")
if not cmp_ok then
  vim.notify("cannot find cmp when init autopairs")
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
