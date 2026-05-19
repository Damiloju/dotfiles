# Dotfiles

Dotfiles for bootstrapping and backing up my Mac development environment. A single `./install` script symlinks configs into place and installs all dependencies via Homebrew.

## What's Included

| Module | Description |
|--------|-------------|
| **zsh** | Oh My Zsh with Powerlevel10k theme, zsh-autosuggestions, zsh-syntax-highlighting, and custom aliases |
| **nvim** | Neovim config managed with Lazy.nvim — LSP, Treesitter, Telescope, Neo-tree, DAP, and 40+ plugins |
| **tmux** | Vi-mode, mouse support, session persistence via tmux-resurrect/continuum, TPM |
| **homebrew** | Brewfile with CLI tools, languages, services, and fonts |
| **lazygit** | Tokyo Night-themed lazygit config |
| **scripts** | `t` — fzf-powered tmux session switcher for projects in `~/Code` |
| **nvm** | Default global npm packages (LSP servers, formatters, linters) |
| **iterm** | Exported iTerm2 profile backup |
| **editorconfig** | 2-space indent (4 for PHP/Python), LF line endings, UTF-8 |
| **claude** | Claude Code settings (symlinked to `~/.claude/settings.json`) — gitignored |

## Installation

```sh
chmod +x install
./install
```

The install script will:

1. Install Xcode Command Line Tools (if missing)
2. Install Oh My Zsh (if missing)
3. Install Homebrew (if missing)
4. Symlink dotfiles (`~/.zshrc`, `~/.p10k.zsh`, `~/.tmux.conf`, `~/.config/nvim`, etc.)
5. Run `brew bundle` to install everything in the Brewfile
6. Set up NVM with default packages
7. Symlink lazygit and editorconfig
8. Clone TPM (Tmux Plugin Manager)
9. Create `~/Code` workspace directory

## Structure

```
.
├── homebrew/Brewfile          # Homebrew dependencies
├── install                    # Bootstrap script
├── iterm/backup.itermexport   # iTerm2 profile
├── lazygit/config.yml         # Lazygit theme
├── nvim/                      # Neovim config (Lazy.nvim)
│   ├── init.lua
│   ├── lua/user/              # Options, keymaps, plugin specs
│   └── snippets/              # UltiSnips (TS, TSX)
├── nvm/default-packages       # Global npm packages
├── scripts/t                  # Tmux session switcher
├── tmux/tmux.conf             # Tmux config
├── zsh/
│   ├── .zshrc                 # Shell config
│   ├── .p10k.zsh             # Powerlevel10k theme
│   └── custom/aliases.zsh     # Custom aliases
├── .editorconfig              # Editor formatting rules
└── .hushlogin                 # Suppress login banner
```

## Key Tools

**Languages & Runtimes:** Node (via NVM), Python (via pyenv), Go, Lua, Deno

**CLI Tools:** ripgrep, fzf, lazygit, awscli, kubectl, buf, wget, ngrok

**Services:** Redis, RabbitMQ, PostgreSQL 14

**Neovim Highlights:** Tokyo Night colorscheme, Telescope fuzzy finder, LSP (TypeScript, Lua, Bash, Vue, PHP, JSON, CSS/HTML), nvim-cmp completions, conform.nvim formatting, nvim-lint, DAP debugging, Gitsigns, Bufferline, Lualine

## Custom Aliases

| Alias | Command |
|-------|---------|
| `lg` | `lazygit` |
| `wip` | Stage all + commit "chore: wip" |
| `code` | `cd ~/Code` |
| `..` / `...` / `....` | Navigate up 1/2/3 directories |
| `ll` | `ls -lAFh` |
| `mkcd <dir>` | Create directory and cd into it |

## Credits

- Neovim config heavily influenced by [Jess Archer](https://github.com/jessarcher) — see their course on [Laracasts](https://laracasts.com/series/neovim-as-a-php-ide)
- Tmux session script (`t`) inspired by [ThePrimeagen](https://github.com/ThePrimeagen)
- More dotfile inspiration at [dotfiles.github.io](https://dotfiles.github.io/inspiration/)
