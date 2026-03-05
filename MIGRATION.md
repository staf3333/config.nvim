# Neovim Migration Plan: VS Code + Visual Studio → Neovim

Goal: Do everything in Neovim — editing, navigating, building, debugging C#/.NET — paired with GitHub Copilot CLI on a second screen.

## Current State
- [x] Basic nvim config (tokyonight, telescope, treesitter, oil, copilot, blink.cmp)
- [x] LSP: lua_ls, csharp_ls, pyright
- [x] Telescope with ripgrep backend
- [x] Floating terminal

## Phase 1: Replace VS Code (Editing & Navigation)
- [ ] **Code navigation** — go-to-definition, find references, peek definition (LSP keybindings)
- [ ] **Symbol search** — find classes/methods across the solution (`<leader>fs` for lsp_document_symbols, workspace_symbols)
- [ ] **Better status line** — show current file, git branch, LSP diagnostics (lualine.nvim)
- [ ] **Git integration** — inline blame, diff view, stage hunks (gitsigns.nvim + diffview.nvim)
- [ ] **Which-key** — popup showing available keybindings so you don't forget shortcuts (which-key.nvim)
- [ ] **File tree sidebar** — alternative to Oil for project overview (neo-tree.nvim, optional)

## Phase 2: Replace Visual Studio (Building & Testing)
- [ ] **Build from nvim** — `:!dotnet build` or mapped to a keybinding
- [ ] **Test runner** — run/debug individual tests (neotest + neotest-dotnet)
- [ ] **Diagnostics workflow** — jump between errors with `<leader>fd`, quickfix list navigation
- [ ] **Solution-aware LSP** — evaluate omnisharp vs csharp_ls for large .sln support (50+ projects)
- [ ] **Format on save** — csharpier or dotnet-format integration

## Phase 3: Debugging (Deferred)
> Keeping Visual Studio as fallback for complex debug sessions for now.
> Revisit nvim-dap + netcoredbg later if needed.

## Phase 4: Quality of Life
- [ ] **Session management** — auto-save/restore sessions per project
- [ ] **Snippets** — C# common patterns (class, interface, async method, etc.)
- [ ] **Todo comments** — highlight TODO/FIXME/HACK in code (todo-comments.nvim)
- [ ] **Zen mode** — distraction-free coding (zen-mode.nvim, optional)
- [ ] **Copilot Chat** — in-editor AI chat (CopilotChat.nvim)

## Notes
- Main project: C:\OneBranch\AAPT\Antares\ApiHub (ApiHub.sln, 50+ .csproj files)
- csharp_ls is lightweight but may struggle with large solutions — may need omnisharp
- Debugging C# in nvim is possible via nvim-dap + netcoredbg but won't be as polished as Visual Studio
- The realistic endgame: nvim for 90% of work, Visual Studio as fallback for complex debug sessions
