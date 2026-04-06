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
│   ├── plugins/
│   │   ├── init.lua          # Loads all plugin configs
│   │   ├── blink.lua         # Autocompletion (lazy-loaded on InsertEnter)
│   │   ├── bufferline.lua    # Buffer tab line
│   │   ├── conform.lua       # Formatting with format-on-save
│   │   ├── git.lua           # Git signs and diff viewer
│   │   ├── lualine.lua       # Status line
│   │   ├── marks.lua         # Mark management
│   │   ├── snacks.lua        # Snacks.nvim: picker, explorer, terminal, and more
│   │   ├── treesitter.lua    # Syntax highlighting, text objects, and folding
│   │   └── which-key.lua     # Keymap hints popup
│   └── snippets/             # Custom snippets
└── nvim-pack-lock.json       # Lock file for vim.pack (built-in package manager)
```

## Plugins

| Plugin | Purpose |
|---|---|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configurations |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/linter/formatter installer |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Bridge between mason and lspconfig |
| [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Auto-install mason tools |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion with LSP, snippets, path, and buffer sources |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting, folding, and indentation |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Treesitter-based text objects and motions |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting with format-on-save |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git hunk signs, inline blame, and hunk navigation |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Git diff viewer and merge conflict resolution |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Picker, file explorer, terminal, notifications, zen mode, and more |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap hints |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tab line |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [marks.nvim](https://github.com/chentoast/marks.nvim) | Visual mark management |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | Utility collection |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |
| [rose-pine](https://github.com/rose-pine/neovim) | Colorscheme |

## Features

- **Formatting** — format-on-save via conform.nvim; supports Lua, Go, Python, JS/TS, JSON, CSS, HTML, TOML, Markdown. Toggle with `<leader>uf` or format manually with `<leader>cf`.
- **Git** — inline blame and hunk navigation via gitsigns; full diff viewer and merge conflict resolution via diffview. Key bindings under `<leader>g`.
- **Picker** — fuzzy finder for files, grep, buffers, LSP symbols, git branches/log/status, diagnostics, and more via snacks.nvim picker. `<leader><space>` for smart file search, `<leader>/` for grep.
- **LSP** — language servers managed by mason, configured with nvim-lspconfig. LSP navigation (`gd`, `gr`, `gI`, etc.) powered by snacks.nvim picker.
- **Treesitter text objects** — select/navigate functions, classes, parameters, loops with `af`/`if`, `ac`/`ic`, `aa`/`ia`, `]m`/`[m`, etc.
- **Terminal** — floating terminal via snacks.nvim (`<C-/>`).
- **Zen mode** — distraction-free writing with `<leader>z`.

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
