-- Personal Neovim configuration

-- Leader and localleader
vim.g.mapleader = " "
vim.g.localleader = ","


-- Basic packages
vim.pack.add({
	-- nvim-lspconfig
	{ src = 'https://github.com/neovim/nvim-lspconfig' },

	-- mason
	{ src = 'https://github.com/mason-org/mason.nvim' },
	{ src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
	{ src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },

	-- devicons
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' },

	-- Which-key / keymap information
	{ src = "https://github.com/folke/which-key.nvim" },

	-- Mini / statusline
	{ src = "https://github.com/echasnovski/mini.nvim" },

	-- Treesitter / fileparsers
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },

	-- Marks
	{ src = "https://github.com/chentoast/marks.nvim" },

	-- Blink Autocomplete
	{ src = "https://github.com/saghen/blink.cmp" },

	-- Lualine
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },

	-- Bufferline
	{ src = "https://github.com/akinsho/bufferline.nvim" },

	-- rose-pine colorscheme
	{ src = 'https://github.com/rose-pine/neovim', name = "rose-pine" },
})

-- Init rose-pine color scheme
vim.cmd.colorscheme("rose-pine")

-- Load core modules and plugins
require "core"
require "plugins"

