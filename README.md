# neovim-0.12

Personal Neovim configuration built for **Neovim 0.12+**, taking advantage of the new built-in `vim.pack` package manager — no external plugin manager (lazy.nvim, packer, etc.) required.

## Structure

```
.
├── init.lua                  # Entry point: leader keys, vim.pack plugin declarations, colorscheme
├── lua/
│   ├── core/
│   │   ├── init.lua          # Loads all core modules
│   │   ├── options.lua       # Vim options
│   │   ├── keymaps.lua       # Key mappings
│   │   ├── diagnostics.lua   # Diagnostic display configuration
│   │   ├── autocmds.lua      # Autocommands
│   │   └── lsp.lua           # LSP setup (mason + nvim-lspconfig)
│   └── plugins/
│       ├── init.lua          # Loads all plugin configs
│       ├── bufferline.lua    # Buffer tab line
│       ├── lualine.lua       # Status line
│       ├── marks.lua         # Mark management
│       ├── snacks.lua        # Snacks.nvim utilities
│       └── which-key.lua     # Keymap hints popup
└── nvim-pack-lock.json       # Lock file for vim.pack (built-in package manager)
```

## Plugins

| Plugin | Purpose |
|---|---|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configurations |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/linter/formatter installer |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Bridge between mason and lspconfig |
| [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Auto-install mason tools |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and parsing |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap hints |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tab line |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [marks.nvim](https://github.com/chentoast/marks.nvim) | Visual mark management |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | Utility collection |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |
| [rose-pine](https://github.com/rose-pine/neovim) | Colorscheme |

## Requirements

- Neovim 0.12+
- Git (for `vim.pack` to fetch plugins)
- A [Nerd Font](https://www.nerdfonts.com/) for icons

## Installation

```sh
git clone https://github.com/flaggerkatt/neovim-0.12 ~/.config/nvim
nvim
```

Plugins are fetched automatically via `vim.pack` on first launch.
