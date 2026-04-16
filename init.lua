-- Personal Neovim configuration

-- Leader and localleader
vim.g.mapleader = " "
vim.g.localleader = ","

-- Load core modules and plugins
require("core")
require("plugins")

-- Corlorscheme (natively, no plugin needed)
vim.cmd.colorscheme("rose-pine-moon")

-- Enable som LSP stuff
vim.lsp.enable({ "lua_ls", "copilot" })

-- require("vim._core.ui2").enable()
