<div align="center">

# 🏠 Dotfiles

**✨ One command to rule them all ✨**

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Tmux](https://img.shields.io/badge/Tmux-1BB91F?style=for-the-badge&logo=tmux&logoColor=white)
![Zsh](https://img.shields.io/badge/Zsh-F15A24?style=for-the-badge&logo=zsh&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)

Dotfiles for bootstrapping and backing up my Mac development environment.
A single `./install` script symlinks configs into place and installs all dependencies via Homebrew.

---

</div>

## 📦 What's Included

| | Module | Description |
|---|--------|-------------|
| 🐚 | **zsh** | Oh My Zsh + Powerlevel10k, autosuggestions, syntax highlighting, custom aliases |
| 📝 | **nvim** | Neovim with Lazy.nvim — LSP, Treesitter, Telescope, Neo-tree, DAP & 40+ plugins |
| 🖥️ | **tmux** | Vi-mode, mouse support, session persistence (resurrect/continuum), TPM |
| 🍺 | **homebrew** | Brewfile with CLI tools, languages, services, and fonts |
| 🦥 | **lazygit** | Tokyo Night-themed lazygit config |
| ⚡ | **scripts** | `t` — fzf-powered tmux session switcher for `~/Code` projects |
| 📗 | **nvm** | Default global npm packages (LSP servers, formatters, linters) |
| 🖼️ | **iterm** | Exported iTerm2 profile backup |
| 📐 | **editorconfig** | 2-space indent (4 for PHP/Python), LF endings, UTF-8 |
| 🤖 | **claude** | Claude Code settings → `~/.claude/settings.json` *(gitignored)* |

---

## 🚀 Installation

```sh
chmod +x install
./install
```

<details>
<summary>📋 What the install script does</summary>

| Step | Action |
|------|--------|
| 1️⃣ | Install Xcode Command Line Tools (if missing) |
| 2️⃣ | Install Oh My Zsh (if missing) |
| 3️⃣ | Install Homebrew (if missing) |
| 4️⃣ | Symlink dotfiles (`~/.zshrc`, `~/.p10k.zsh`, `~/.tmux.conf`, `~/.config/nvim`, etc.) |
| 5️⃣ | Run `brew bundle` to install everything in the Brewfile |
| 6️⃣ | Set up NVM with default packages |
| 7️⃣ | Symlink lazygit & editorconfig |
| 8️⃣ | Clone TPM (Tmux Plugin Manager) |
| 9️⃣ | Create `~/Code` workspace directory |

</details>

---

## 🗂️ Structure

```
.
├── 🍺 homebrew/Brewfile          # Homebrew dependencies
├── ⚙️  install                    # Bootstrap script
├── 🖼️  iterm/backup.itermexport   # iTerm2 profile
├── 🦥 lazygit/config.yml         # Lazygit theme
├── 📝 nvim/                      # Neovim config (Lazy.nvim)
│   ├── init.lua
│   ├── lua/user/                 # Options, keymaps, plugin specs
│   └── snippets/                 # Snippets (TS, TSX)
├── 📗 nvm/default-packages       # Global npm packages
├── ⚡ scripts/t                  # Tmux session switcher
├── 🖥️  tmux/tmux.conf            # Tmux config
├── 🐚 zsh/
│   ├── .zshrc                    # Shell config
│   ├── .p10k.zsh                # Powerlevel10k theme
│   └── custom/aliases.zsh        # Custom aliases
├── 📐 .editorconfig              # Editor formatting rules
└── 🤫 .hushlogin                 # Suppress login banner
```

---

## 🛠️ Key Tools

### 💬 Languages & Runtimes

![Node.js](https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=nodedotjs&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=flat-square&logo=lua&logoColor=white)
![Deno](https://img.shields.io/badge/Deno-000000?style=flat-square&logo=deno&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)

### 🔧 CLI Tools

`ripgrep` · `fzf` · `lazygit` · `awscli` · `kubectl` · `buf` · `wget` · `ngrok`

### 🗄️ Services

![Redis](https://img.shields.io/badge/Redis-DC382D?style=flat-square&logo=redis&logoColor=white)
![RabbitMQ](https://img.shields.io/badge/RabbitMQ-FF6600?style=flat-square&logo=rabbitmq&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL_14-4169E1?style=flat-square&logo=postgresql&logoColor=white)

### ✏️ Neovim Highlights

> 🎨 **Tokyo Night** colorscheme · 🔭 **Telescope** fuzzy finder · 🧠 **LSP** (TypeScript, Lua, Bash, Vue, PHP, JSON, CSS/HTML) · 💡 **nvim-cmp** completions · 🧹 **conform.nvim** formatting · 🔍 **nvim-lint** · 🐛 **DAP** debugging · 📊 **Gitsigns** · 📑 **Bufferline** · 🚀 **Lualine**

---

## ⌨️ Custom Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `lg` | `lazygit` | 🦥 Open lazygit |
| `wip` | `git add . && git commit -m 'chore: wip'` | 💾 Quick work-in-progress commit |
| `code` | `cd ~/Code` | 📂 Jump to projects |
| `..` / `...` / `....` | `cd` up 1/2/3 levels | 🔼 Quick navigation |
| `ll` | `ls -lAFh` | 📋 Detailed file listing |
| `mkcd <dir>` | `mkdir -p && cd` | 📁 Create & enter directory |

---

## 🙏 Credits

| | |
|---|---|
| 📝 | Neovim config heavily influenced by [**Jess Archer**](https://github.com/jessarcher) — see their course on [Laracasts](https://laracasts.com/series/neovim-as-a-php-ide) |
| ⚡ | Tmux session script (`t`) inspired by [**ThePrimeagen**](https://github.com/ThePrimeagen) |
| 💡 | More dotfile inspiration at [**dotfiles.github.io**](https://dotfiles.github.io/inspiration/) |

---

<div align="center">

**⚡ Happy hacking! ⚡**

</div>
