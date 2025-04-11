-- init.lua
--

-- encoding

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.ffs = "unix,dos,mac"

-- backup

vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- tabs

vim.o.expandtab = false
vim.o.shiftwidth = 0
vim.o.smarttab = true
vim.o.softtabstop = -1
vim.o.tabstop = 4

-- keybindings

vim.o.backspace = "eol,start,indent"

-- ui

vim.o.clipboard = "unnamed"
vim.o.number = true
vim.o.errorbells = false
vim.o.hlsearch = true
vim.o.lazyredraw = true
vim.o.wildmenu = true
vim.g.have_nerd_font = false

-- language servers
-- git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig

--require'lspconfig'.clangd.setup({
--	on_attach = on_attach,
--	capabilities = {
--	  offsetEncoding = { "utf-8", "utf-16" },
--	  textDocument = {
--		completion = {
--		  editsNearCursor = true
--		}
--	  }
--	},
--	cmd = {"clangd"},
--	filetypes = { "c", "cpp" },
--})

require'lspconfig'.csharp_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {"csharp-ls"},
	filetypes = { "cs" },
	init_options = { AutomaticWorkspaceInit = true }
})

require'lspconfig'.gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {"gopls"},
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
})

-- additional

vim.o.compatible = false

vim.cmd([[
set notimeout
filetype indent on
filetype plugin on
colorscheme blue
]])

