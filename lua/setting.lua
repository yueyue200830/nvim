local options = {
    -- clipboard = 'unnamedplus', --同步系统剪贴板
    cmdheight = 1,
    showmode = true, --右下角显示模式
    showcmd = true, --右下角显示命令
    conceallevel = 0,
    mouse = 'a', --允许鼠标
    fileencoding = 'utf-8', --utf8编码
    number = true, --行号
    relativenumber = true, --相对行号
	-- search
    ignorecase = true, --查找时忽略大小写
    smartcase = true, --智能大小写
    incsearch = true, -- 边输入边搜索
    hlsearch = false,
	-- indent
    smartindent = true, --智能缩进
    cindent = true,
    autoindent = true, --自动缩进
    tabstop = 4, --Tab宽度
    shiftwidth = 4, --每次Shift调整的缩进
    softtabstop = 2,
    showtabline = 2,
    expandtab = true,

    scrolloff = 5,
    sidescrolloff = 5,
    wrap = false, --不自动换行
    termguicolors = false, --如果安装第三方主题，必须设置为true
    cursorline = false, --不高亮当前行
    cursorcolumn = false, --不高亮当前列
}

--应用上面配置
vim.opt.shortmess:append 'c'
for k, v in pairs(options) do
    vim.opt[k] = v
end


--WSL与Windows同步剪贴板
-- vim.cmd([[
-- let g:clipboard = {
	-- \   'name': 'win32yank-wsl',
	-- \   'copy': {
	-- \      '+': 'win32yank.exe -i --crlf',
	-- \      '*': 'win32yank.exe -i --crlf',
	-- \    },
	-- \   'paste': {
	-- \      '+': 'win32yank.exe -o --lf',
	-- \      '*': 'win32yank.exe -o --lf',
	-- \   },
	-- \   'cache_enabled': 0,
	-- \ }
-- ]])
