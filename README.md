# My Neovim Configuration

This repository contains my Neovim configuration using the Packer package manager. It includes various plugins that enhance Neovim's functionality, including themes, LSP support, and more.

## Getting Started

To use this configuration, follow these steps:

### Prerequisites

- Neovim (v0.9 or later)
- Git
- `packer.nvim` (Packer is a plugin manager for Neovim)

### Installation

1. **Clone the Repository**

   Clone this repository into your Neovim configuration directory:

   ```sh
   git clone https://github.com/VPradoB/nvim-config.git
   
### 2. Install Packer
go to the packer file in plugins/packer.lua and use the comand :so then use :PackerInstall

### 3. Install plugins
:PackerSync


## Plugins
Here's a list of plugins included in this configuration:
- packer.nvim: The plugin manager itself.
- telescope.nvim: A fuzzy finder and picker for Neovim.
- plenary.nvim: A Lua library used by many Neovim plugins.
- harpoon: A quick file navigation plugin.
- rose-pine: A beautiful colorscheme for Neovim.
- nvim-treesitter: Syntax highlighting and code manipulation.
- undotree: Visualize your undo history.
- vim-fugitive: A Git wrapper for Vim.
- LSP Configuration Plugins:
  - nvim-lspconfig: Quickstart configurations for the Neovim LSP client.
  - mason.nvim: Easy installation of LSP servers, DAP servers, linters, and formatters.
  - mason-lspconfig.nvim: Bridge between mason.nvim and nvim-lspconfig.
- Completion Plugins:
  - nvim-cmp: A completion engine for Neovim.
  - cmp-nvim-lsp: LSP source for nvim-cmp.
  - cmp-buffer: Buffer source for nvim-cmp.
  - cmp-path: Path source for nvim-cmp.
  - LuaSnip: A snippet engine for Neovim.
  - cmp_luasnip: Snippet source for nvim-cmp.
  - friendly-snippets: A collection of snippets for various languages.

## Usage
After installing the plugins, you can start using Neovim with your customized setup. Some notable keybindings or features might be:

Telescope: Use :Telescope to find files, buffers, and more.
Harpoon: Use Harpoon for quick navigation between frequently accessed files.
LSP: Autocompletion and diagnostics should work out of the box with the included LSP configurations.

