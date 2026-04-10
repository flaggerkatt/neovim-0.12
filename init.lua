-- Personal Neovim configuration

-- Leader and localleader
vim.g.mapleader = " "
vim.g.localleader = ","

-- Load core modules and plugins
require("core")
require("plugins")

-- Enable som LSP stuff
vim.lsp.enable({ "lua_ls" })
