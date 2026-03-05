# My Neovim Config

## Plugins

| Plugin | What it does |
|---|---|
| **tokyonight** | Colorscheme |
| **lazy.nvim** | Plugin manager |
| **nvim-lspconfig** | LSP client (lua_ls, pyright, gopls) |
| **roslyn.nvim** | C# LSP (same engine as Visual Studio) |
| **blink.cmp** | Completion engine + snippets |
| **copilot.lua** | GitHub Copilot completions |
| **telescope** | Fuzzy finder (files, grep, symbols) |
| **treesitter** | Syntax highlighting (lua, c_sharp, python, etc.) |
| **oil.nvim** | File explorer |
| **gitsigns.nvim** | Git gutter indicators, blame, hunks |
| **lualine.nvim** | Status bar (file, branch, diagnostics) |
| **which-key.nvim** | Keybinding popup (press Space and wait) |
| **trouble.nvim** | Diagnostics, references, quickfix panel |
| **mini.nvim** | Utilities |

## Keybindings

**Leader key is Space.**

### LSP (works in any file with an LSP attached)

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find all references |
| `gi` | Go to implementation |
| `gt` | Go to type definition |
| `K` | Hover docs (info about symbol) |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action (quick fixes) |
| `<leader>sh` | Signature help |
| `<leader>f` | Format buffer |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>e` | Show diagnostic detail |

### Telescope (fuzzy finding)

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search text in files) |
| `<leader>fb` | Open buffers |
| `<leader>fh` | Help tags |
| `<leader>fd` | Diagnostics list |
| `<leader>fr` | Resume last search |
| `<leader>fs` | Symbols in current file |
| `<leader>fw` | Symbols across workspace |
| `<leader>fn` | Browse nvim config files |
| `<leader>fp` | Browse installed plugins |

### Git (gitsigns)

| Key | Action |
|---|---|
| `]h` / `[h` | Next / previous changed hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hb` | Git blame current line |
| `<leader>hd` | Diff this file |

### Copilot Chat

| Key | Mode | Action |
|---|---|---|
| `<leader>cc` | Normal | Toggle Copilot Chat panel |
| `<leader>ce` | Visual | Explain selected code |
| `<leader>cr` | Visual | Review selected code |
| `<leader>cf` | Visual | Fix selected code |
| `<leader>co` | Visual | Optimize selected code |
| `<leader>ct` | Visual | Generate tests for selection |

### Trouble (diagnostics panel)

| Key | Action |
|---|---|
| `<leader>dd` | Toggle all diagnostics |
| `<leader>dD` | Toggle buffer diagnostics |
| `<leader>ds` | Toggle symbols |
| `<leader>dl` | Toggle LSP definitions/references |
| `<leader>dL` | Toggle location list |
| `<leader>dQ` | Toggle quickfix list |

### General

| Key | Action |
|---|---|
| `<space><space>x` | Source current file |
| `<space>x` | Execute current line as Lua |
| `-` | Open Oil file explorer |
| `<leader>tt` | Toggle floating terminal |
| `Ctrl+/` | Toggle comment |
| `Alt+j` / `Alt+k` | Next / prev quickfix |
| `Esc Esc` | Exit terminal mode |

### Roslyn (C# specific)

| Command | Action |
|---|---|
| `:Roslyn restart` | Restart C# language server |
| `:Roslyn target` | Switch between solutions |
| `:wa` | Save all (clears stale diagnostics after rename) |

## Useful Vim Commands

| Command | Action |
|---|---|
| `:e $MYVIMRC` | Open init.lua |
| `:LspInfo` | Check attached LSP servers |
| `:Mason` | Manage LSP/tool installations |
| `:Lazy` | Manage plugins |

## PowerShell Alias

| Command | Action |
|---|---|
| `apihub` | Opens nvim in ApiHub/src |

## Notes

- Caps Lock is remapped to Ctrl via PowerToys
- Font: JetBrainsMono NF (set in Windows Terminal)
- Press `<leader>` (Space) and wait for which-key popup to see all keybindings
