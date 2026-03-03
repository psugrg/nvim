# Neovim Configuration

This neovim is configured in `lua`.

> Type `:h rtp` for detaile about the `neovim` startup configuration procedure

## Dependencies

### Install Deno (needed by neo-vim markdown-preview plugin)

sudo curl -fsSL https://deno.land/install.sh | sh

### Install lazy-git

LAZYGIT*VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]_')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}\_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

## Structure

- init.lua - root file where `neovim` starts looking for configuration (_lua
  modue style_)
- lua - Everything inside of the `lua` directory will automatically _sourced_
  by _neovim_
  - psu - user defined configuration (_psu_ in this case). It's a _lua_ module
    for convinience
    - [init.lua](./lua/psu/init.lua) - module initialization file[^1]
    - [set.lua](./lua/psu/set.lua) - _neovim_ basic configuration (e.g. line
      numbers, tabs-to-space, tab width etc.)
    - [remap.lua](./lua/psu/remap.lua) - custom key mapping
    - [lazy.lua](./lua/psu/lazy.lua) - **plugin manager configuration**
    - plugins - plugins (and colorschemes) configuration
      - ... - plugin configurations (one per file)

## Plugins & Color Schemes

It's inspired by
[youtube video](https://youtu.be/6mxWayq-s9I?si=wi8LI_XdteKljoIE) from Josean Martinez.

> This configuration uses the
> [_lazy.nvim_](https://github.com/folke/lazy.nvim) as a package manager
>
> Use `:Lazy` to spawn _lazy.nvim_ plugin manager UI
>
> Color schemes are managed also by the package manager
>
> Use `:checkhealth <name_of_plugin>` to inspect the plugin

### Adding New Plugin

1. Find your new plugin on github
   (e.g.: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)).
1. Create a configuration file in the `./lua/psu/plugin` directory using a following
   scheme:

```lua
return {
    "plugin-name/neovim",
    config = function()
        require('plugin-name').setup({
            -- Add setup code here (if needed)
        })

    -- Add extra configuration here (like key-mapping etc.)

    end
}
```

> Using `config` is optional and required only of a plugin has a `setup`
> function that is required to be called

### LSP plugin

> [Nice video explaining how it works](https://youtu.be/yI9R13h9IEE?si=tnIv6KCxMPc0w1hL)
> [More sophisticated (but a little bit more bloated)](https://youtu.be/oBiBEx7L000?si=Blz0mCnIZ-cplDVs)

LSP is part of neovim, there is a plugin for getting configuration - check the `lsp.lua` file

Use comamnd `checkhealth vim.lsp` to check the configuration.

#### LSP language servers configuration

The LSP language servers are automatically configured by the [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) plugin.

It is possible to add additional configuration to the language server by adding it to the `/lsp` folder.

> See `./after/lsp/lua_ls.lua` as an example
> Note that the `/after` directory means that the configuration in that folder will be run after the original configuration (From github)

[^1]: In _lua_ folder can also be a module if it contains the `init.lua` file
